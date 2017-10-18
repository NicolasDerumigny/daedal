#include <sched.h>

struct PCMWrapper;

#ifdef __cplusplus
extern "C" {
#endif

    typedef struct PCMWrapper * pcm_handle;
    pcm_handle perf_pcm_create(void);
    void perf_pcm_init(pcm_handle p, cpu_set_t cpus);
    
    void perf_pcm_start(pcm_handle p);
    void perf_pcm_end(pcm_handle p);
    void perf_pcm_shutdown(pcm_handle p);
    
#ifdef __cplusplus
}
#endif


