/* =============================================================================
 *
 * thread.c
 *
 * =============================================================================
 *
 * Copyright (C) Stanford University, 2006.  All Rights Reserved.
 * Author: Chi Cao Minh
 *
 * =============================================================================
 *
 * For the license of bayes/sort.h and bayes/sort.c, please see the header
 * of the files.
 * 
 * ------------------------------------------------------------------------
 * 
 * For the license of kmeans, please see kmeans/LICENSE.kmeans
 * 
 * ------------------------------------------------------------------------
 * 
 * For the license of ssca2, please see ssca2/COPYRIGHT
 * 
 * ------------------------------------------------------------------------
 * 
 * For the license of lib/mt19937ar.c and lib/mt19937ar.h, please see the
 * header of the files.
 * 
 * ------------------------------------------------------------------------
 * 
 * For the license of lib/rbtree.h and lib/rbtree.c, please see
 * lib/LEGALNOTICE.rbtree and lib/LICENSE.rbtree
 * 
 * ------------------------------------------------------------------------
 * 
 * Unless otherwise noted, the following license applies to STAMP files:
 * 
 * Copyright (c) 2007, Stanford University
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 * 
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in
 *       the documentation and/or other materials provided with the
 *       distribution.
 * 
 *     * Neither the name of Stanford University nor the names of its
 *       contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY STANFORD UNIVERSITY ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL STANFORD UNIVERSITY BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 * THE POSSIBILITY OF SUCH DAMAGE.
 *
 * =============================================================================
 */
#define _GNU_SOURCE
#include <sched.h>
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <sys/sysinfo.h>
#include "thread.h"
#include "types.h"
#include "rtm.h"
#include "../gem5/m5ops_wrapper.h"
#include "../perf/perf_counters.h"

#define MSR_MAX 8

static THREAD_LOCAL_T    global_threadId;
static long              global_numThread       = 1;
static THREAD_BARRIER_T* global_barrierPtr      = NULL;
static long*             global_threadIds       = NULL;
static THREAD_ATTR_T     global_threadAttr;
static THREAD_T*         global_threads         = NULL;
static void            (*global_funcPtr)(void*) = NULL;
static void*             global_argPtr          = NULL;
static volatile bool_t   global_doShutdown      = FALSE;


volatile char RTM_lock_array[PADDED_ARRAY_SIZE_BYTES] __attribute__ ((aligned (CACHE_LINE_SIZE_BYTES))) ;
volatile long * RTM_fallBackLock;
_Thread_local int FD;



volatile unsigned g_locks[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
volatile unsigned g_aborts[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
volatile unsigned g_accesses[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
volatile unsigned g_succeed[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
volatile unsigned g_misses[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
volatile unsigned abort_reasons[15][6] = {{0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}, {0,0,0,0,0,0}};

_tm_thread_context_t *thread_contexts = NULL;




/* =============================================================================
 * RTM_output_stats
 * -- Print the collected stats on performance counters and xbgin return code
 * =============================================================================
 */
void
RTM_output_stats() {
	return;
    for (int i=0;i<15;++i) {
      printf("Locks: %u\n", g_locks[i]);
      printf("Commits: %u\n", g_succeed[i]);
      printf("Aborts: %u\n", g_aborts[i]);
      printf("Misses: %u\n", g_misses[i]);
      printf("Accesses: %u\n", g_accesses[i]);
      for (int j=0;j<6;++j)printf("Reason: %u\n", abort_reasons[i][j]);
    }
}


/* =============================================================================
 * init_one_perfcounter
 * -- Init the performance counter corresponding to numer with value 0
 *    measuring the infomation coded by whatToMeasure using 
 *    /dev/cpu/X/msr interface
 * For more information about selected MSR, read Intel® 64 and IA-32
 * Architectures Software Developer’s Manual Volume 3
 * =============================================================================
 */
inline void
init_one_perfcounter(int number, unsigned long whatToMeasure) {
    int ret;
    off_t offset;
    void * zeros;
    zeros = malloc(8);
    memset(zeros, 0, 8);

    if (number >= MSR_MAX || number < 0)
        return;

    // Select MSR IA32_PERFEVTSEL(number)
    offset = lseek(FD, 0x186 + number, SEEK_SET);
    assert(offset > 0);
    ret = write(FD, (void *) &whatToMeasure, 8);
    assert(ret > 0);
    // Select MSR IA32_PMC NUM
    offset = lseek(FD, 0xc1 + number, SEEK_SET);
    // Reset the counter
    ret = write(FD, zeros, 8);
    assert(ret > 0);
    free(zeros);
}


/* =============================================================================
 * read_one_perfcounter
 * -- Read the value in the MSR indicated by number using 
 *    /dev/cpu/X/msr interface, and put it into whereToPut
 * For more information about selected MSR, read Intel® 64 and IA-32
 * Architectures Software Developer’s Manual Volume 3
 * =============================================================================
 */
inline void
read_one_perfcounter(int number, unsigned * whereToPut) {
    int ret;
    off_t offset;
    unsigned long stats;

    if (number >= MSR_MAX || number < 0)
        return;

    // Select MSR IA32_PMC(number)
    offset = lseek(FD, 0xc1 + number, SEEK_SET);
    assert(offset>0);
    // Read the counter
    ret = read(FD,(void *) &stats, 8);
    
    assert(ret > 0);

    __sync_fetch_and_add(whereToPut, stats);
}

/* =============================================================================
 * RTM_init_perfcounters
 * -- Set to zero the MSR registers used to stat the TM section
 * For more information about selected MSR, read Intel® 64 and IA-32
 * Architectures Software Developer’s Manual Volume 3
 * =============================================================================
 */
void
RTM_init_perfcounters() {
    if (M5_inSimulator)
        return

    // Select MSR IA32_PERFEVTSEL2
    // Put RTM_RETIRED.ABORTED_MEM
    init_one_perfcounter(2, 0x4108C9);

    // Select MSR IA32_PERFEVTSEL3
    // Put RTM_RETIRED.ABORTED_TIMER
    init_one_perfcounter(3, 0x4110C9);

    // Select MSR IA32_PERFEVTSEL4
    // Put RTM_RETIRED.ABORTED_UNFRIENDLY
    init_one_perfcounter(4, 0x4120C9);

    // Select MSR IA32_PERFEVTSEL5
    // Put RTM_RETIRED.ABORTED_MEMTYPE
    init_one_perfcounter(5, 0x4140C9);

    // Select MSR IA32_PERFEVTSEL7
    // Put RTM_RETIRED.ABORTED_EVENTS
    init_one_perfcounter(6, 0x4180C9);

    // ----- HASSWELL PERF COUNTERS -----
    // Select MSR IA32_PERFEVTSEL0
    // Put L2_RQSTS.REFERENCES
    init_one_perfcounter(0, 0x41FF24);

    // ----- SKYLAKE PERF COUNTERS -----
    // Select MSR IA32_PERFEVTSEL0
    // Put L2_RQSTS.REFERENCES
    //init_one_perfcounter(0, 0x41EF24);

    // Select MSR IA32_PERFEVTSEL1
    // Put L2_RQSTS.MISS
    init_one_perfcounter(1, 0x413F24);
}


/* =============================================================================
 * RTM_update_perfcounters
 * -- Update the stats using the value in MSR registers
 * For more information about selected MSR, read Intel® 64 and IA-32
 * Architectures Software Developer’s Manual Volume 3
 * =============================================================================
 */
void
RTM_update_perfcounters(int i) {
    if (M5_inSimulator)
        return;

    // Read L2_RQSTS.MISS
    read_one_perfcounter(1, (unsigned *) &g_misses[i]);

    // Read L2_RQSTS.REFERENCES
    read_one_perfcounter(0, (unsigned *) &g_accesses[i]);

    // Read RTM_RETIRED.ABORTED_MEM
    read_one_perfcounter(2, (unsigned *) &abort_reasons[i][1]);

    // Read RTM_RETIRED.ABORTED_TIMER
    read_one_perfcounter(3, (unsigned *) &abort_reasons[i][2]);

    // Read RTM_RETIRED.ABORTED_UNFRIENDLY
    read_one_perfcounter(4, (unsigned *) &abort_reasons[i][3]);

    // Read RTM_RETIRED.ABORTED_MEMTYPE
    read_one_perfcounter(5, (unsigned *) &abort_reasons[i][4]);

    // Read RTM_RETIRED.ABORTED_EVENTS
    read_one_perfcounter(6, (unsigned *) &abort_reasons[i][5]);
}



/* =============================================================================
 * RTM_spinlock_init
 * -- Initialize the global spinlock used in case of too many TM aborts
 * =============================================================================
 */
inline void
RTM_spinlock_init() {
  /* Make sure each synchronized variable maps to a different cache line */
  RTM_fallBackLock = (long *)&RTM_lock_array[CACHE_LINE_SIZE_BYTES];
  *RTM_fallBackLock = 0;
}


/* =============================================================================
 * RTM_fallback_isLocked
 * -- Check whether the spinlock is currently in use or not
 * =============================================================================
 */
inline long
RTM_fallback_isLocked() {
  return *RTM_fallBackLock != 0;
}


/* =============================================================================
 * RTM_fallback_whileIsLocked
 * -- Wait until the fallback spinlock is not in use anymore
 * =============================================================================
 */
inline void
RTM_fallback_whileIsLocked() {
  while (RTM_fallback_isLocked()) {
    _mm_pause();
  }
}


/* =============================================================================
 * RTM_fallback_lock
 * -- Blocking lock of the fallback spinlock
 * =============================================================================
 */
inline void
RTM_fallback_lock() {
    while (!__sync_bool_compare_and_swap(RTM_fallBackLock, 0, 1)) {
      RTM_fallback_whileIsLocked();
    }
}


/* =============================================================================
 * RTM_fallback_unlock
 * -- Unlock the global fallback spinlock. WARNING: it does NOT check the owner !
 * =============================================================================
 */
inline void
RTM_fallback_unlock() {
    asm volatile (""); // acts as a memory barrier.
    *RTM_fallBackLock = 0;
}


/* =============================================================================
 * update_reasons
 * -- Update the global counters of failed sections based on RTM documentation
 * =============================================================================
 */
int 
update_reasons(unsigned status, int i) {
  if (status == XBEGIN_STARTED)
    return 0;
  __sync_fetch_and_add(&g_aborts[i], 1);
  //XAbort()
  __sync_fetch_and_add(&abort_reasons[i][0], status & 1);
  return 1;
}


/* =============================================================================
 * threadWait
 * -- Synchronizes all threads to start/stop parallel section
 * =============================================================================
 */
static void
threadWait (void* argPtr)
{
    long threadId = *(long*)argPtr;
    char msr_path[16];
    cpu_set_t *cpusetp;
    size_t size;
    int ret;

    THREAD_LOCAL_SET(global_threadId, (long)threadId);

    /*
    if(!M5_inSimulator) {
        //Performance counters: init FD
        sprintf(msr_path, "/dev/cpu/%li/msr", threadId);
        FD = open(msr_path, O_RDWR);
        assert(FD > 0);
    }
    */

    while (1) {
        THREAD_BARRIER(global_barrierPtr, threadId); /* wait for start parallel */
        if (global_doShutdown) {
            break;
        }
        global_funcPtr(global_argPtr);
        THREAD_BARRIER(global_barrierPtr, threadId); /* wait for end parallel */
        if (threadId == 0) {
            break;
        }
    }

    /*if (!M5_inSimulator) {
        ret = close(FD);
        assert(ret == 0);
    }*/
}


/* =============================================================================
 * thread_startup
 * -- Create pool of secondary threads
 * -- numThread is total number of threads (primary + secondaries)
 * =============================================================================
 */
void
thread_startup (long numThread)
{
    long i;
    cpu_set_t cpuset;
    pthread_t thread;
    int num_procs = get_nprocs();

    global_numThread = numThread;
    global_doShutdown = FALSE;


    /* Set up barrier */
    assert(global_barrierPtr == NULL);
    global_barrierPtr = THREAD_BARRIER_ALLOC(numThread);
    assert(global_barrierPtr);
    THREAD_BARRIER_INIT(global_barrierPtr, numThread);

    /*Set up thread contexts */
    thread_contexts =
      (_tm_thread_context_t*)malloc(numThread * sizeof(_tm_thread_context_t));

    for (i = 0; i < numThread; i++)
    {
      thread_contexts[i].threadId = i;
      thread_contexts[i].real_cpu = i % num_procs;
      thread_contexts[i].numThread = numThread;
      thread_contexts[i].inFastForward = TRUE;
      /*thread_contexts[i].appName = appName; // XXX added appname in thread_context*/
      /*thread_contexts[i].registers_set = 0; // so we don't recreate our TM state*/
    }

    /* Set up ids */
    THREAD_LOCAL_INIT(global_threadId);
    assert(global_threadIds == NULL);
    global_threadIds = (long*)malloc(numThread * sizeof(long));
    assert(global_threadIds);
    for (i = 0; i < numThread; i++) {
        global_threadIds[i] = i;
    }

    /* Set up thread list */
    assert(global_threads == NULL);
    global_threads = (THREAD_T*)malloc(numThread * sizeof(THREAD_T));
    assert(global_threads);

#if defined(SET_AFFINITY)
    /* Set up cpu affinity for currently running thread */
    thread = pthread_self();
    CPU_ZERO(&cpuset);
    CPU_SET(0, &cpuset);
    pthread_setaffinity_np(thread, sizeof(cpu_set_t), &cpuset);
#endif /* SET_AFFINITY */

    /* Set up pool */
    THREAD_ATTR_INIT(global_threadAttr);
    for (i = 1; i < numThread; i++) {
#if defined(SET_AFFINITY)
        THREAD_SET_AFFINITY(cpuset, i, global_threadAttr);
#endif /* SET_AFFINITY */
        THREAD_CREATE(global_threads[i],
                      global_threadAttr,
                      &threadWait,
                      &global_threadIds[i]);
    }


    /*
     * Initialize (program) performance counters
     */
    perf_counters_init();


    /*
     * Wait for primary thread to call thread_start
     */
}


/* =============================================================================
 * thread_start
 * -- Make primary and secondary threads execute work
 * -- Should only be called by primary thread
 * -- funcPtr takes one arguments: argPtr
 * =============================================================================
 */
void
thread_start (void (*funcPtr)(void*), void* argPtr)
{
    perf_counters_start();

    global_funcPtr = funcPtr;
    global_argPtr = argPtr;

    long threadId = 0; /* primary */
    threadWait((void*)&threadId);

    perf_counters_end();
}


/* =============================================================================
 * thread_shutdown
 * -- Primary thread kills pool of secondary threads
 * =============================================================================
 */
void
thread_shutdown ()
{
    /* Make secondary threads exit wait() */
    global_doShutdown = TRUE;
    THREAD_BARRIER(global_barrierPtr, 0);

    long numThread = global_numThread;

    long i;
    for (i = 1; i < numThread; i++) {
        THREAD_JOIN(global_threads[i]);
    }

    THREAD_BARRIER_FREE(global_barrierPtr);
    global_barrierPtr = NULL;

    free(global_threadIds);
    global_threadIds = NULL;

    free(global_threads);
    global_threads = NULL;

    global_numThread = 1;
}


/* =============================================================================
 * thread_barrier_alloc
 * =============================================================================
 */
thread_barrier_t*
thread_barrier_alloc (long numThread)
{
    thread_barrier_t* barrierPtr;

    assert(numThread > 0);
    assert((numThread & (numThread - 1)) == 0); /* must be power of 2 */
    barrierPtr = (thread_barrier_t*)malloc(numThread * sizeof(thread_barrier_t));
    if (barrierPtr != NULL) {
        barrierPtr->numThread = numThread;
    }

    return barrierPtr;
}


/* =============================================================================
 * thread_barrier_free
 * =============================================================================
 */
void
thread_barrier_free (thread_barrier_t* barrierPtr)
{
    free(barrierPtr);
}


/* =============================================================================
 * thread_barrier_init
 * =============================================================================
 */
void
thread_barrier_init (thread_barrier_t* barrierPtr)
{
    long i;
    long numThread = barrierPtr->numThread;

    for (i = 0; i < numThread; i++) {
        barrierPtr[i].count = 0;
        THREAD_MUTEX_INIT(barrierPtr[i].countLock);
        THREAD_COND_INIT(barrierPtr[i].proceedCond);
        THREAD_COND_INIT(barrierPtr[i].proceedAllCond);
    }
}


/* =============================================================================
 * thread_barrier
 * -- Simple logarithmic barrier
 * =============================================================================
 */
void
thread_barrier (thread_barrier_t* barrierPtr, long threadId)
{
    long i = 2;
    long base = 0;
    long index;
    long numThread = barrierPtr->numThread;

    if (numThread < 2) {
        return;
    }

    do {
        index = base + threadId / i;
        if ((threadId % i) == 0) {
            THREAD_MUTEX_LOCK(barrierPtr[index].countLock);
            barrierPtr[index].count++;
            while (barrierPtr[index].count < 2) {
                THREAD_COND_WAIT(barrierPtr[index].proceedCond,
                                 barrierPtr[index].countLock);
            }
            THREAD_MUTEX_UNLOCK(barrierPtr[index].countLock);
        } else {
            THREAD_MUTEX_LOCK(barrierPtr[index].countLock);
            barrierPtr[index].count++;
            if (barrierPtr[index].count == 2) {
                THREAD_COND_SIGNAL(barrierPtr[index].proceedCond);
            }
            while (THREAD_COND_WAIT(barrierPtr[index].proceedAllCond,
                                    barrierPtr[index].countLock) != 0)
            {
                /* wait */
            }
            THREAD_MUTEX_UNLOCK(barrierPtr[index].countLock);
            break;
        }
        base = base + numThread / i;
        i *= 2;
    } while (i <= numThread);

    for (i /= 2; i > 1; i /= 2) {
        base = base - numThread / i;
        index = base + threadId / i;
        THREAD_MUTEX_LOCK(barrierPtr[index].countLock);
        barrierPtr[index].count = 0;
        THREAD_COND_SIGNAL(barrierPtr[index].proceedAllCond);
        THREAD_MUTEX_UNLOCK(barrierPtr[index].countLock);
    }
}


/* =============================================================================
 * thread_getId
 * -- Call after thread_start() to get thread ID inside parallel region
 * =============================================================================
 */
long
thread_getId()
{
    return (long)THREAD_LOCAL_GET(global_threadId);
}


/* =============================================================================
 * thread_getNumThread
 * -- Call after thread_start() to get number of threads inside parallel region
 * =============================================================================
 */
long
thread_getNumThread()
{
    return global_numThread;
}


/* =============================================================================
 * thread_barrier_wait
 * -- Call after thread_start() to synchronize threads inside parallel region
 * =============================================================================
 */
void
thread_barrier_wait()
{
#ifndef SIMULATOR
    long threadId = thread_getId();
#endif /* !SIMULATOR */
    THREAD_BARRIER(global_barrierPtr, threadId);
}


/* =============================================================================
 * TEST_THREAD
 * =============================================================================
 */
#ifdef TEST_THREAD


#include <stdio.h>
#include <unistd.h>


#define NUM_THREADS    (4)
#define NUM_ITERATIONS (3)



void
printId (void* argPtr)
{
    long threadId = thread_getId();
    long numThread = thread_getNumThread();
    long i;

    for ( i = 0; i < NUM_ITERATIONS; i++ ) {
        thread_barrier_wait();
        if (threadId == 0) {
            sleep(1);
        } else if (threadId == numThread-1) {
            usleep(100);
        }
        printf("i = %li, tid = %li\n", i, threadId);
        if (threadId == 0) {
            puts("");
        }
        fflush(stdout);
    }
}


int
main ()
{
    puts("Starting...");

    /* Run in parallel */
    thread_startup(NUM_THREADS);
    /* Start timing here */
    thread_start(printId, NULL);
    thread_start(printId, NULL);
    thread_start(printId, NULL);
    /* Stop timing here */
    thread_shutdown();

    puts("Done.");

    return 0;
}


#endif /* TEST_THREAD */


/* =============================================================================
 *
 * End of thread.c
 *
 * =============================================================================
 */
