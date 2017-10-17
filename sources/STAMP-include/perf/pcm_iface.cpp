#include "pcm_iface.h"
#include "pcm.hpp"

extern "C"
{
    /*
      MHandle create_magic(char const * s, int n) { return new Magic(s, n); }
      void    free_magic(MHandle p) { delete p; }
      double  work_magic(MHandle p, int a, int b) { return p->work(a, b); }
    */
    pcm_handle perf_pcm_create(void) // wrapper function
    {
        return new PCMWrapper();
    }

    void perf_pcm_init(pcm_handle w) // wrapper function
    {
        w->init();
    }

    void perf_pcm_start(pcm_handle w) // wrapper function
    {
        w->start();
    }

    void perf_pcm_end(pcm_handle w) // wrapper function
    {
        w->end();
    }

    void perf_pcm_shutdown(pcm_handle w) // wrapper function
    {
        w->shutdown();
    }
    
}
