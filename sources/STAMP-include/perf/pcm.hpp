#include "cpucounters.h"

using namespace std;

class PCMWrapper {
public:
    void init(void);
    void start(void);
    void end(void);
    void shutdown(void); // Print stats and cleanup
    PCMWrapper();

private:
    PCM * m;
    SystemCounterState SysBeforeState;
    SystemCounterState SysAfterState;
    uint64 BeforeTime;
    uint64 AfterTime;
    
    /* A colon-separated list of TSX events (max. 4 events) can be
     * monitored during the execution of the benchmark, passed to 
     * the PCM library through the variable PCM_EVENTS_TSX, e.g.:
     * sudo PCM_EVENTS_TSX=RTM_RETIRED.START:RTM_RETIRED.COMMIT ./benchmark
     * NOTE: You need to run the benchmark with root priviledges in
     * order to program/access MSRs.
     * NOTE: Set PCM_EVENTS_TSX to an empty value for global TSX monitoring:
     * Cycles, Instructions, Trans cycles, Aborted cycles, #RTM, cycles/trans
     */
    const char *tsxEventsEnvVarName = "PCM_EVENTS_TSX";
    const char *tsxEventsDelimiter = ":";

    /* init/start/end for basic core counters */
    void initBasic(void);
    void startBasic(void);
    void endBasic(void);
    void printStatsBasic(void);

    /* Whether monitoring TSX events or basic core counters.  
     * Disabled when env var PCM_EVENTS_TSX unset, enabled otherwise.
     */
    bool tsxMode; 
    
    /* init/start/end for TSX-related counters  */
    void initTSX(void);
    void startTSX(void);
    void endTSX(void);
    void printStatsTSX(void);
    
    template <class StateType> void print_basic_stats(const StateType & BeforeState, const StateType & AfterState, bool csv);
    template <class StateType> void print_custom_stats(const StateType & BeforeState, const StateType & AfterState, bool csv);
    /* The TSX events (index in eventDescriptor) to be monitored (up to 4) */
    vector<int> events;
    std::vector<CoreCounterState> BeforeState;
    std::vector<CoreCounterState> AfterState;
    std::vector<SocketCounterState> DummySocketStates;

    /* Utility functions */
    static string convertUnits(uint64 val);
    static void tokenize(string s, string delimiter, vector<string> &tokens);
};

