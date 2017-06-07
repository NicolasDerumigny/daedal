// Abort handlers

#include <assert.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include "../xaction/xaction_insts_x86.h"

#include "abort_handlers.h"
#include "mt19937ar_1.h"
#include "spinlock.h"

int num_cpus;
int num_threads;
#define MAX_BACKOFF 8
#define MAX_RTM_RETRIES 8
#define TX_RETRY_AFTER_PAGEFAULT 1
unsigned long mt[624];
unsigned long mti;

#define _XBEGIN_STARTED		(~0u)
// Abort codes
#define _XABORT_EXPLICIT	(1 << 0)
#define _XABORT_RETRY		(1 << 1)
#define _XABORT_CONFLICT	(1 << 2)
#define _XABORT_CAPACITY	(1 << 3)
#define _XABORT_DEBUG		(1 << 4)
#define _XABORT_NESTED		(1 << 5)
#define _XABORT_PAGEFAULT       (1 << 6) // RT: Non-RTM compliant
#define _XABORT_CODE(x)         (((x) >> 24) & 0xFF) // XABORT argument (only valid if bit 0 set)
// Masks to extrac abort code and conflicting address from ret
#define _ABORT_MASK   0x000000000000003F
#define _ABORT_ADDRESS(x) (((x) >> 8) & 0x00FFFFFFFFFFFF)

/* Abort return code
 *******************************************
 *  killerID | abort addr   | abort code   |
 *******************************************
 *    8b           48b             8b
 */

//Initialization. Called from STAMP to initialize common variables
void initGlobals(int num_virt_cpus, int num_real_cpus)
{
    num_threads = num_virt_cpus;
    num_cpus = num_real_cpus;
    unsigned long seed = 1;
    init_genrand_1(mt, &mti, seed);
}

// Call at the end of the workload, outside parallel section
void deleteGlobals () {
}

/*__thread void (*callback)(void);*/


// Interface to STAMP benchmarks (see lib/tm.h)
void beginTransaction(int tag, int prio, int in_fast_forward) {
  if (in_fast_forward) {
    fallback_lock();
    return;
  }
  beginTransaction_simpleBackoff(tag, prio);
  //beginTransaction_fallbackLock(tag, prio);
}

void commitTransaction(int tag, int in_fast_forward) {
  if (in_fast_forward) {
    fallback_unlock();
    return;
  }
  // We were a regular tranasction, commit.
  commitTransaction_simple(tag);
  //commitTransaction_fallbackLock(tag);
}


#define TOUCH(addr) ({							\
      u_int64_t val;							\
      asm volatile ("mov %1, %%rax\n\t"					\
                    "mov (%%rax),%%rbx \n\t"				\
                    "mov %%rbx, %0\n\t"					\
                    "mov %%rbx, (%%rax) \n\t"				\
                    : "=r"(val)						\
                    : "r"(addr)						\
                    : "%rax","%rbx", "memory");				\
    })

// Simple management. Still causes livelock in some scenarios.
void beginTransaction_simpleBackoff(int tag, int prio) {
    u_int64_t backoff, nbackoff;
    volatile unsigned int i;
    u_int64_t ret;
    nbackoff = 1;
    while (1){
        /* Start transaction and check the return code, a transaction
         * always starts successfully. On abort the instruction
         * inmediatelly after the XACTION_BEGIN primitive is executed
         * (offset set to 0). The abort instruction/event will restore
         * pre-transactional state and change the 'ret' value, so the
         * 'if' will fail and the fallback path will be
         * executed. After the fallback path is executed the
         * transaction is restarted due to the while loop */
        ret = XBEGIN((u_int64_t)tag, (u_int64_t)0, (u_int64_t)prio);
        if (ret == _XBEGIN_STARTED) {
            return; //execute transaction
        }
#ifdef TX_RETRY_AFTER_PAGEFAULT
        if (ret & _XABORT_PAGEFAULT) {
          annotateRegion(REG_ABORT_HANDLER_FAULTTOUCHMEM, REGION_ENTRY);
          unsigned long address = _ABORT_ADDRESS(ret);
          // Touch page (read, then write)
          TOUCH(address);
          annotateRegion(REG_ABORT_HANDLER_FAULTTOUCHMEM, REGION_EXIT);
          continue;
        }
#endif
        //Backoff
        annotateRegion(REG_ABORT_HANDLER_BACKOFF, REGION_ENTRY);
        unsigned long rand = genrand_int32_1(mt, &(mti));
        u_int64_t exp = 1 << nbackoff;
        backoff = (rand % exp) * 117;
        for (i = 0; i < backoff; i++);
        if (nbackoff < MAX_BACKOFF){
            nbackoff++;
        }
        annotateRegion(REG_ABORT_HANDLER_BACKOFF, REGION_EXIT);
    }
}

void commitTransaction_simple(int tag) {
  // We were a regular tranasction, commit.
  XEND((u_int64_t)tag);
}

void abortTransaction() {
  u_int64_t reason = 0; // TODO
  // Abort this transaction
  XABORT(reason);
}

// Simple management. Still causes livelock in some scenarios.
void releaseReadSet(u_int64_t addr) {
  XRELEASE(addr);
}

void annotateRegion(u_int64_t region, u_int64_t value) {
  ANNOTATE_REGION(region, value);
}

void beginTransaction_fallbackLock(int tag, int prio)
{
  u_int64_t ret;
  int nretries = 0;
  while (1) {
    ++nretries;
    ret = XBEGIN((u_int64_t)tag, (u_int64_t)0, (u_int64_t)prio);

    if (ret == _XBEGIN_STARTED) {
      if (!fallback_isLocked()) return; /* Start transaction */
      else { /* started transaction but someone has grabbed lock */
        XABORT(ABORT_CODE_FALLBACK_LOCKED);
        assert(0); // Execution never reaches this point
      }
    }
    /* Fallback path starts here*/
#ifdef TX_RETRY_AFTER_PAGEFAULT
        if (ret & _XABORT_PAGEFAULT) {
          annotateRegion(REG_ABORT_HANDLER_FAULTTOUCHMEM, REGION_ENTRY);
          unsigned long address = _ABORT_ADDRESS(ret);
          // Touch page (read, then write)
          TOUCH(address);
          annotateRegion(REG_ABORT_HANDLER_FAULTTOUCHMEM, REGION_EXIT);
          continue;
        }
#endif

    /* Grab lock on one these conditions:
     * a) Too many retries
     * b) Explicit abort code used to directly retry with lock
     * c) Transaction cannot succeed on retry
     */
    if (nretries >= MAX_RTM_RETRIES || // a)
        ((ret & _XABORT_EXPLICIT) &&
         _XABORT_CODE(ret) == ABORT_CODE_FALLBACK_EXPLICIT) || // b)
        !(ret & _XABORT_RETRY))  // c)
      {
        break; // Execute non-speculatively
      }

    /* Will retry tx, but must wait until lock is free */
    if ((ret & _XABORT_EXPLICIT) &&
       _XABORT_CODE(ret) == ABORT_CODE_FALLBACK_LOCKED &&
       !(ret & _XABORT_NESTED)) {
      annotateRegion(REG_ABORT_HANDLER_ACQLOCK, REGION_ENTRY);
      fallback_whileIsLocked();
      annotateRegion(REG_ABORT_HANDLER_ACQLOCK, REGION_EXIT);
    }
  }
  annotateRegion(REG_ABORT_HANDLER_ACQLOCK, REGION_ENTRY);
  fallback_lock();
  annotateRegion(REG_ABORT_HANDLER_ACQLOCK, REGION_EXIT);
  annotateRegion(REG_ABORT_HANDLER_HASLOCK, REGION_ENTRY);
}

void commitTransaction_fallbackLock(int tag)
{
  if (fallback_isLocked()){
    /* unlock */
    annotateRegion(REG_ABORT_HANDLER_HASLOCK, REGION_EXIT);
    fallback_unlock();
  }
  else {
    XEND((u_int64_t)tag);
  }
}

void DAE_beginAccessPhase(void)
{
  DAE_ACCESS();
}
