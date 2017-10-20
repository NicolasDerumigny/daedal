
#include <assert.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "worker.h"
#include "random.h"
#include "thread.h"
#include "timer.h"
#include "tm.h"

enum param_types {
    PARAM_INDICES = (unsigned char)'i',
    PARAM_LENGTH = (unsigned char)'l',
    PARAM_STEP = (unsigned char)'s',
    PARAM_BUSY = (unsigned char)'b',
    PARAM_PASSES = (unsigned char)'p',
    PARAM_THREAD = (unsigned char)'t',
};

enum param_defaults {
    PARAM_DEFAULT_INDICES = 1 << 22,
    PARAM_DEFAULT_LENGTH  = 1 << 30,
    PARAM_DEFAULT_STEP    = 1 << 6,
    PARAM_DEFAULT_BUSY    = 0,
    PARAM_DEFAULT_PASSES  = 1 << 6,
    PARAM_DEFAULT_THREAD  = 1,
};

long global_params[256] = { /* 256 = ascii limit */
    [PARAM_INDICES] = PARAM_DEFAULT_INDICES,
    [PARAM_LENGTH] = PARAM_DEFAULT_LENGTH,
    [PARAM_STEP] = PARAM_DEFAULT_STEP,
    [PARAM_BUSY] = PARAM_DEFAULT_BUSY,
    [PARAM_PASSES] = PARAM_DEFAULT_PASSES,
    [PARAM_THREAD] = PARAM_DEFAULT_THREAD,
};


/* =============================================================================
 * displayUsage
 * =============================================================================
 */
static void
displayUsage (const char* appName)
{
    printf("Usage: %s [options]\n", appName);
    puts("\nOptions:                            (defaults)\n");
    printf("    l <UINT>   Data [l]ength in bytes      (%i)\n", PARAM_DEFAULT_LENGTH);
    printf("    i <UINT>   Number of [i]ndices         (%i)\n", PARAM_DEFAULT_INDICES);
    printf("    s <UINT>   Step size (indices per tx)  (%i)\n", PARAM_DEFAULT_STEP);
    printf("    b <UINT>   Number of [b]usy loops      (%i)\n", PARAM_DEFAULT_BUSY);
    printf("    p <UINT>   Number of [p]asses          (%i)\n", PARAM_DEFAULT_PASSES);
    printf("    t <UINT>   Number of [t]hreads         (%i)\n", PARAM_DEFAULT_THREAD);
    exit(1);
}


/* =============================================================================
 * parseArgs
 * =============================================================================
 */
static void
parseArgs (long argc, char* const argv[])
{
    long i;
    long opt;

    opterr = 0;

    while ((opt = getopt(argc, argv, "l:t:i:s:b:p:")) != -1) {
        switch (opt) {
            case 'p':
            case 'b':
            case 'i':
            case 's':
            case 'l':
            case 't':
                global_params[(unsigned char)opt] = atol(optarg);
                break;
            case '?':
            default:
                opterr++;
                break;
        }
    }

    for (i = optind; i < argc; i++) {
        fprintf(stderr, "Non-option argument: %s\n", argv[i]);
        opterr++;
    }

    if (opterr) {
        displayUsage(argv[0]);
    }
}


/* =============================================================================
 * initializeWorkers
 * =============================================================================
 */
static worker_t**
initializeWorkers ()
{
    random_t* randomPtr;
    worker_t** workers;
    long numWorkers = (long)global_params[PARAM_THREAD];
    long dataLen = global_params[PARAM_LENGTH];
    long numIndices = global_params[PARAM_INDICES];
    long step = global_params[PARAM_STEP];
    long busy = global_params[PARAM_BUSY];
    long passes = global_params[PARAM_PASSES];
    int i;
    
    printf("Initializing workers... ");
    fflush(stdout);

    randomPtr = random_alloc();
    assert(randomPtr != NULL);

    workers = (worker_t**)malloc(numWorkers * sizeof(worker_t*));
    if (workers == NULL) return NULL;

    /* Global array shared by all threads */
    long *dataPtr = (long *) malloc(dataLen);
    long numElements = dataLen / sizeof(long);
    if (dataPtr == NULL) return NULL;
    memset(dataPtr, 0, dataLen);

    for (i = 0; i < numWorkers; i++) {

        workers[i] = worker_alloc(i,
                                  randomPtr,
                                  step,
                                  busy,
                                  passes,
                                  numIndices,
                                  numElements,
                                  dataPtr);
        if (workers[i]  == NULL) return NULL;
    }

    puts("done.");
    printf("    Threads             = %li\n", numWorkers);
    printf("    Global array size   = %li\n", dataLen);
    printf("    Indices             = %li\n", numIndices);
    printf("    Step                = %li\n", step);
    printf("    BusyLoop            = %li\n", busy);
    printf("    Passes              = %li\n", passes);
    fflush(stdout);

    random_free(randomPtr);

    return workers;
}

/* =============================================================================
 * main
 * =============================================================================
 */
MAIN(argc, argv)
{
    GOTO_REAL();

    /*
     * Initialization
     */

    parseArgs(argc, (char** const)argv);
    long numThread = global_params[PARAM_THREAD];
    SIM_GET_NUM_CPU(numThread);
    TM_STARTUP(numThread);
    P_MEMORY_STARTUP(numThread);
    thread_startup(numThread);

    worker_t** workers = initializeWorkers();
    if (workers == NULL) {
        fprintf(stderr, "Failed to initialized workers (out of memory)\n");
    }
    /*
     * Run transactions
     */

    TIMER_T startTime;
    TIMER_READ(startTime);
    GOTO_SIM();
#ifdef OTM
#pragma omp parallel
    {
        worker_run(workers);
    }
    
#else
    thread_start(worker_run, (void*)workers);
#endif
    GOTO_REAL();
    TIMER_T stopTime;
    TIMER_READ(stopTime);
    printf("Elapsed time    = %f seconds\n", TIMER_DIFF_SECONDS(startTime, stopTime));

    /*
     * Check solution
     */


    /*
     * Clean up
     */

    TM_SHUTDOWN();
    P_MEMORY_SHUTDOWN();

    GOTO_SIM();

    thread_shutdown();

    MAIN_RETURN(0);
}


/* =============================================================================
 *
 * End of intruder.c
 *
 * =============================================================================
 */
