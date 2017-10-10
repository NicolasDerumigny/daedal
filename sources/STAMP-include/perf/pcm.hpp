#include "cpucounters.h"

using namespace std;

class PCMWrapper {
public:
    void init(void);
    void start(void);
    void end(void);
private:
    /* Utility functions */
    static string convertUnits(uint64 val);

    PCM * m;
    SystemCounterState before_sstate;
    SystemCounterState after_sstate;
};

