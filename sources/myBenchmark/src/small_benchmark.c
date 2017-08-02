/** # Copyright (C) Eta Scale AB. Licensed under the Eta Scale Open Source License. See the LICENSE file for details.
 *
 * # This is a small example benchmark */

#include <assert.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "timer.h"
#include "thread.h"
#include "tm.h"


enum param_types {
    PARAM_THREAD  = (unsigned char)'t',
};

#define PARAM_DEFAULT_THREAD  (1L)

long global_params[256];

static void
displayUsage (const char* appName)
{
    printf("Usage: %s [options]\n", appName);
    printf("    t <UINT>   Number of [t]hreads      (%li)\n", PARAM_DEFAULT_THREAD);
    puts("");
    exit(1);
}

static void
setDefaultParams( void )
{
    global_params[PARAM_THREAD]  = PARAM_DEFAULT_THREAD;
}

static void
parseArgs (long argc, char* const argv[])
{
    long i;
    long opt;

    opterr = 0;

    setDefaultParams();

    while ((opt = getopt(argc, argv, "t:")) != -1) {
        switch (opt) {
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


void
increment_number(void* argptr)
{
  long * number = (long *) argptr;
  for (long i=0; i<500000; i++) {
    TM_BEGIN(0);
    (*number)++;
    TM_END(0);
  }
}


MAIN (argc,argv)
{
  TIMER_T start;
  TIMER_T stop;
  GOTO_REAL();

  /* Initialization */
  parseArgs(argc, (char** const)argv);
  SIM_GET_NUM_CPU(global_params[PARAM_THREAD]);
  long numThread = global_params[PARAM_THREAD];

  TM_STARTUP(numThread);
  P_MEMORY_STARTUP(numThread);
  thread_startup(numThread);


  long number = 0;
  
  TIMER_READ(start);


  thread_start(increment_number, (void*) &number);

  TIMER_READ(stop);

  printf("Number %li\n", number);
  printf("Time = %lf\n", TIMER_DIFF_SECONDS(start, stop));
  fflush(stdout);

  TM_SHUTDOWN();
  P_MEMORY_SHUTDOWN();

  GOTO_SIM();

  thread_shutdown();

  MAIN_RETURN(0);
}
