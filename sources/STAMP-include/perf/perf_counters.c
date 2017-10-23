#include <stdio.h>
#include <stdlib.h>

#include "m5ops_wrapper.h"
#include "perf_counters.h"

#if defined(PERF_COUNTERS_JEVENTS)

#include "rdpmc.h"

unsigned long long *start, *end;
struct rdpmc_ctx *ctx;

unsigned events[] = { // See man entry for perf_event_open
    PERF_COUNT_HW_CPU_CYCLES,
    PERF_COUNT_HW_INSTRUCTIONS,
    PERF_COUNT_HW_REF_CPU_CYCLES,
    PERF_COUNT_HW_CACHE_MISSES,
    PERF_COUNT_HW_CACHE_REFERENCES,
};

char *eventNames[] = {
    "PERF_COUNT_HW_CPU_CYCLES",
    "PERF_COUNT_HW_INSTRUCTIONS",
    "PERF_COUNT_HW_REF_CPU_CYCLES",
    "PERF_COUNT_HW_CACHE_MISSES",
    "PERF_COUNT_HW_CACHE_REFERENCES",
};

const int numEvents = sizeof(events) / sizeof(events[0]);

void perf_counters_init(cpu_set_t cpus) {
    if (M5_inSimulator) return;

    ctx = (struct rdpmc_ctx *)malloc(numEvents*sizeof(struct rdpmc_ctx));
    start = (unsigned long long *)malloc(numEvents*sizeof(unsigned long long));
    end = (unsigned long long *)malloc(numEvents*sizeof(unsigned long long));

    int i;
    for (i=0; i < numEvents; i++) {
        if (rdpmc_open(events[i], &ctx[i]) < 0) {
            // error
            fprintf(stderr,"rdpmc_open failed to open perf counter.\n");
            fprintf(stderr,"Be sure to disable NMI watchdog: "
                    "'echo 0 > /proc/sys/kernel/nmi_watchdog'\n");
            exit(-1);
        }
    }
}

void perf_counters_start() {
    if (M5_inSimulator) return;

    int i;
    for (i=0; i < numEvents; i++)
        start[i] = rdpmc_read(&ctx[i]);
}

void perf_counters_end() {
    if (M5_inSimulator) return;

    int i;
    for (i=0; i < numEvents; i++)
        end[i] = rdpmc_read(&ctx[i]);
}

void perf_counters_shutdown() {
    if (M5_inSimulator) return;
    
    for (i=0; i < numEvents; i++)
        fprintf(stdout, "%s: %lld\n", eventNames[i], end[i] - start[i]);
}

#elif defined(PERF_COUNTERS_PCM)

#include "pcm_iface.h"

pcm_handle pcm;

void perf_counters_init(cpu_set_t cpus) {
    if (M5_inSimulator) return;

    pcm = perf_pcm_create();
    perf_pcm_init(pcm, cpus);
}
void perf_counters_start() {
    if (M5_inSimulator) return;

    perf_pcm_start(pcm);
}
void perf_counters_end() {
    if (M5_inSimulator) return;

    perf_pcm_end(pcm);
}

void perf_counters_shutdown() {
    perf_pcm_shutdown(pcm);
}

#else // No performance monitoring

void perf_counters_init(cpu_set_t cpus) {}
void perf_counters_start() {}
void perf_counters_end() {}
void perf_counters_shutdown() {}

#endif
