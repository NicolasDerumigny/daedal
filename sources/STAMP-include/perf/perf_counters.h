#include <sched.h>

void perf_counters_init(cpu_set_t cpus);
void perf_counters_start();
void perf_counters_end();
void perf_counters_shutdown();
