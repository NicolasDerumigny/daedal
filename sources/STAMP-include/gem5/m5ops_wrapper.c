#include <assert.h>
#include <fcntl.h>
#include <math.h>
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "m5op.h"

/* map_m5_mem copied from m5.c */
void *m5_mem = NULL;
extern int M5_inSimulator; /* M5 pseudo instructions disabled by default */
static int M5_exitAtSimRoiEnd = 0; /* Exit simulation when SimRoiEnd */
static long workItemCount = 0; /* work begin count */
static int M5_globalLock = 0; /* Use single global lock instead of RTM */
/* Barrier for synchronizing threads at ROI begin/end */
static pthread_barrier_t barrier;

static void
map_m5_mem()
{
#ifdef M5OP_ADDR
    int fd;

    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd == -1) {
        perror("Can't open /dev/mem");
        exit(1);
    }

    m5_mem = mmap(NULL, 0x10000,
                  PROT_READ | PROT_WRITE,
                  MAP_SHARED, fd, M5OP_ADDR);
    if (!m5_mem) {
        perror("Can't mmap /dev/mem");
        exit(1);
    }
#endif
}

void barrier_wait(pthread_barrier_t *barrier, int in_fast_forward)
{
  pthread_barrier_wait(barrier);
}


/* Check if environment variable M5_OPS!=1
 * otherwise do not execute m5_ops
 */
void SimStartup(int numThreads) {
  char* envString;

  envString = getenv("M5_SIMULATOR");
  if (envString != NULL && atoi(envString) == 1) {
    M5_inSimulator = 1;

    /* m5 ops are now implemented using shared memory instead of
     * pseudoinstructions to support virtualization (KVM cpu)
     */
    map_m5_mem();

    envString = getenv("M5_EXIT_AT_SIM_ROI_END");
    if (envString != NULL && atoi(envString) == 1) {
      M5_exitAtSimRoiEnd = 1;
    }
  }
  envString = getenv("USE_GLOBAL_LOCK");
  if (envString != NULL && atoi(envString) == 1) {
    M5_globalLock = 1;
  }

  int s = pthread_barrier_init(&barrier, NULL, numThreads);
  assert(s == 0);
}


void   SimRoiStart(int threadid) {
  fflush(NULL);
  if (M5_inSimulator) {
    pthread_barrier_wait(&barrier);
    if (threadid == 0) {
      /* Only the master thread should write the ROI-start checkpoint.
       */
      /* No longer need this checkpoint at beginnnin of ROI, now we fast-forward for n work-units
      m5_checkpoint(0,0);
      if (M5_exitAtSimRoiStart) {
        m5_exit(0);
      }
      */
      m5_reset_stats(0,0);
    }
  }
  pthread_barrier_wait(&barrier);
}

int workBegin(int workid, int threadid) {
  if (M5_inSimulator) {
  /* m5_work_begin returns 1 when option '--in-fast-forward-phase'
   * passed to simulator: This is done when creating checkpoint after
   * executing given work-unit count with KVM cpu. Fast-forward phase
   * cannot use "special instructions" (e.g xbegin, etc.)
   */
    int retVal = m5_work_begin(workid, threadid);
    if (retVal == 2) {
      /* m5_work_begin returns 2 when work begin checkpoint count
       * reached while in fast-forward. Instead of letting workbegin
       * take checkpoint immediately, we return a special value to
       * force all threads to hit barrier, then one thread explicitly
       * writes the checkpoint.
       */
      pthread_barrier_wait(&barrier);

      // Take checkpoint
      if (threadid == 0) {
        m5_checkpoint(0,0);
      }
      do {
        /* All threads now spin here forever until simulation in
         * fast-forward mode exits. Once checkpoint restored,
         * m5_work_begin will return 0 so these threads will be
         * released.
         */
        retVal = m5_work_begin(0xffff, threadid);
      } while (retVal > 0);
    }
    return retVal;
  }
  else if (M5_globalLock) {
    /* Set env variable USE_GLOBAL_LOCK to run .htm binaries outside simulator,
     * replacing transactions with locks.
     */
    return 1; // Emulate fast-forward phase (avoid RTM instructions)
  }
  else
    return 0; // Use RTM instructions in this work item
}

void workEnd(int workid, int threadid) {
  if (M5_inSimulator) {
    m5_work_end(workid, threadid);
  }
  else {
    // Count work items if not in simulator
    __sync_fetch_and_add( &workItemCount, 1 );
  }
}

long getWorkItemCount() {
  return workItemCount;
}

void   SimRoiEnd(int threadid, int in_fast_forward) {
  if (M5_inSimulator) {
    barrier_wait(&barrier, in_fast_forward);
    if (threadid == 0) {
      if (M5_exitAtSimRoiEnd) {
        //printf("Exiting simulation at SimRoiEnd\n");
        //fflush(NULL);
        m5_exit(0);
      }
    }
  }
}


/* Wrappers to access pseudoops from Fortran code */
void sim_check_in_simulator_(int numThreads) {
  SimStartup(numThreads);
}

void sim_roi_start_(int *threadid) {
  SimRoiStart(*threadid);
}

void sim_roi_end_(int *threadid) {
  SimRoiEnd(*threadid, 0);
}
