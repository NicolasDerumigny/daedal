#include "pcm.hpp"
#include <assert.h>
#include <iostream>
#include <math.h>
#include <string>
#include <sstream>
#include "tsx_event.h"

extern "C"
{
    void
    PCMWrapper::tokenize(string s, string delimiter, list<string> &tokens) {
        assert(tokens.empty());
        size_t pos = 0;
        string token;
        while ((pos = s.find(delimiter)) != string::npos) {
            token = s.substr(0, pos);
            tokens.push_back(token);
            s.erase(0, pos + delimiter.length());
        }
        // Add last token to vector 
        if (s.length() > 0) {
            tokens.push_back(s);
        }
    }


    PCMWrapper::PCMWrapper() {
        char* tsxEvents;
        tsxEvents = getenv (tsxEventsEnvVarName);
        if (tsxEvents != NULL) {
            tsxMode = true;

            fprintf (stderr, "%s set: %s\n",
                     tsxEventsEnvVarName, tsxEvents);

            if (getenv (tsxEventsSummaryEnvVarName) != NULL)
                summarized = true;
            else
                summarized = false;
        }
        else {
            tsxMode = false;

            fprintf (stderr, "%s unset, using basic core events\n",
                     tsxEventsEnvVarName);
        }
    }

    void
    PCMWrapper::init(cpu_set_t cpus) {
        cpusToMonitor = cpus;
        if (tsxMode)
            initTSX();
        else
            initBasic();
    }

    void
    PCMWrapper::initBasic(void) {
        m = PCM::getInstance();
        int retriesLeft = 2;
        string errorStr = "PCM cannot program performance counters";
        PCM::ErrorCode ret;
        
        do {
            ret = m->program();
            switch(ret) {
            case PCM::Success:
                break;
            case PCM::MSRAccessDenied:
                cerr << errorStr << ": MSR access denied" << endl;
                break;
            case PCM::PMUBusy:
                cerr << errorStr << ": PMU is busy" << endl;
                if (retriesLeft > 0) {
                    cerr << "Forcing PMU reset and retrying..." << endl;
                    m->resetPMU();
                }
                break;
            case PCM::UnknownError:
                cerr << errorStr << ": Unknown error" << endl;
                break;
            default:
                assert(false);
            }
            retriesLeft--;
        } while (retriesLeft > 0 && ret == PCM::PMUBusy);

        if (ret == PCM::Success) {
            cout << "PCM successfully programmed performance counters" << endl;
            cerr << "\nDetected " << m->getCPUBrandString() << " \"Intel(r) microarchitecture codename " << m->getUArchCodename() << "\"" << endl;
        }
        else // Clear instance so that calls to start/end simply do nothing
            m = NULL;

    }

    void
    PCMWrapper::start(void) {
        if (!m) return;
        if (tsxMode) {
            startTSX();
        }
        else {
            startBasic();
        }
    }
    
    void
    PCMWrapper::startBasic(void) {
        SysBeforeState = getSystemCounterState();
        BeforeTime = m->getTickCount();
    }

    void
    PCMWrapper::end(void) {
        if (!m) return;
        if (tsxMode) {
            endTSX();
        }
        else {
            endBasic();
        }
    }
    
    void
    PCMWrapper::endBasic(void) {
        AfterTime = m->getTickCount();
        SysAfterState = getSystemCounterState();
    }
    
    void
    PCMWrapper::shutdown(void) {
        if (!m) return;
        /* Always cleanup PMU state so that we don't get PMBusy
           errors when calling 'program' */
        m->cleanup();

        if (tsxMode) {
            printStatsTSX(summarized);
        }
        else {
            printStatsBasic();
        }
    }

    void
    PCMWrapper::printStatsBasic(void) {
    
        /* TSC: Recent Intel processors include a constant rate TSC
           ("constant_tsc" flag in /proc/cpuinfo). TSC ticks at the
           processor's nominal frequency, regardless of the actual CPU
           clock frequency due to turbo or power saving
           states. (i.e. counts elapsed time, not number of CPU clock
           cycles). The invariant TSC means that the TSC continues at a
           fixed rate regardless of the C-state or frequency of the
           processor (as long as it remains in the ACPI S0 state). */
    
        cerr <<
            "******************** Begin PCM statistics ********************" << endl <<
            "Time: " << dec << fixed << AfterTime - BeforeTime << " ms" << endl <<
            "InstructionsRetired: " << setw(20) <<
            getInstructionsRetired(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            unit_format(getInstructionsRetired(SysBeforeState,SysAfterState)) << ")" << endl <<
            "Cycles:              " << setw(20) <<
            getCycles(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            unit_format(getCycles(SysBeforeState,SysAfterState)) << ")" << endl <<
            "RefCycles:           " << setw(20) <<
            getRefCycles(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            unit_format(getRefCycles(SysBeforeState,SysAfterState)) << ")" << endl <<
            "InvariantTSC:        " << setw(20) <<
            getInvariantTSC(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            unit_format(getInvariantTSC(SysBeforeState,SysAfterState)) << ")" << endl <<
            "IPC:                 " << setw(20) <<
            getIPC(SysBeforeState,SysAfterState) << endl <<
            "ActiveAvgFrequency:  " << setw(20) <<
            getActiveAverageFrequency(SysBeforeState,SysAfterState) << endl <<
            "L2CacheHitRatio:     " << setw(20) <<
            getL2CacheHitRatio(SysBeforeState,SysAfterState) << endl <<
            "L2CacheMisses:       " << setw(20) <<
            getL2CacheMisses(SysBeforeState,SysAfterState) << endl <<
            "L3CacheHitRatio:     " << setw(20) <<
            getL3CacheHitRatio(SysBeforeState,SysAfterState) << endl <<
            "L3CacheMisses:       " << setw(20) <<
            getL3CacheMisses(SysBeforeState,SysAfterState) << endl <<
            "********************   End PCM statistics ********************" << endl;

    }

    void
    PCMWrapper::initTSX(void) {

        list<string> eventNames;

        char *tsxEventsRaw = getenv(tsxEventsEnvVarName);
        string tsxEventsStr(tsxEventsRaw);
        int cur_event;
        
        tokenize(tsxEventsStr, tsxEventsDelimiter, eventNames);

        if (eventNames.empty())  {
            /* If no events selected, by default use RTM.START/COMMIT,
             * tx cycles commited and tx cycles total (special events).
             */
            defaultStatsTSX = true;

            /* NOTE: the order in which events are pushed must
               be in sync with print_default_stats */
            eventNames.push_back("RTM_RETIRED.START");
            eventNames.push_back("RTM_RETIRED.COMMIT");
            eventNames.push_back("TX_CYCLES.COMMIT");
            eventNames.push_back("TX_CYCLES.TOTAL");
        }
        else {
            defaultStatsTSX = false;
        }
        
        while (!eventNames.empty()) {
            string eventName = eventNames.front();
            eventNames.pop_front();

            cur_event = findTSXEventDefinition(eventName.c_str());
            if (cur_event < 0) { // Invalid event number (TX_CYCLES)
                cerr << "Event " << eventName << " is not supported. " <<
                    "See the list of supported events" << endl;
            }
            else {
                cerr << "Event " << eventName << " added to event list" << endl;
                events.push_back(cur_event);
            }
        }
                
        m = PCM::getInstance();

        EventSelectRegister def_event_select_reg;
        def_event_select_reg.value = 0;
        def_event_select_reg.fields.usr = 1;
        def_event_select_reg.fields.os = 1;
        def_event_select_reg.fields.enable = 1;

        PCM::ExtendedCustomCoreEventDescription conf;
        conf.fixedCfg = NULL; // default
        conf.nGPCounters = MONITORED_EVENTS_MAX;
        EventSelectRegister regs[MONITORED_EVENTS_MAX];
        conf.gpCounterCfg = regs;
        for (int i = 0; i < MONITORED_EVENTS_MAX; ++i)
            regs[i] = def_event_select_reg;

        assert(events.size() > 0);
        // Resize summarized event counts and set to 0
        eventCountSummary.resize(events.size(), 0);

        for (unsigned int i = 0; i < events.size(); ++i)  {

            // Set selected event and umask for events defined in tsx_event.h
            regs[i].fields.event_select = eventDefinition[events[i]].event;
            regs[i].fields.umask = eventDefinition[events[i]].umask;

            //  "special events" that need to set additional fields in reg
            if (strcmp(eventDefinition[events[i]].name, "TX_CYCLES.TOTAL") == 0) {
                regs[i].fields.in_tx = 1;
            }
            else if (strcmp(eventDefinition[events[i]].name, "TX_CYCLES.COMMIT") == 0) {
                regs[i].fields.in_tx = 1;
                regs[i].fields.in_txcp = 1;
            }

        }

        PCM::ErrorCode status = m->program(PCM::EXT_CUSTOM_CORE_EVENTS, &conf);
        switch (status)
            {
            case PCM::Success:
                break;
            case PCM::MSRAccessDenied:
                cerr << "Access to Processor Counter Monitor denied (no MSR or PCI CFG space access)." << endl;
                m = NULL;
            case PCM::PMUBusy:
                cerr << "Access to Processor Counter Monitor denied (Performance Monitoring Unit is occupied by other application)." << endl;
                m->resetPMU();
                cerr << "PMU configuration has been reset. Try to rerun the program again." << endl;
                m = NULL;
            default:
                cerr << "Access to Processor Counter Monitor denied (Unknown error)." << endl;
                m = NULL;
            }

        if (!m) return;

        cerr << "\nDetected " << m->getCPUBrandString() << " \"Intel(r) microarchitecture codename " << m->getUArchCodename() << "\"" << endl;

        bool rtm_support = m->supportsRTM();

        if (!rtm_support) {
            cerr << "No RTM support detected!" << endl;
            m = NULL;
            return;
        }
    }
    void
    PCMWrapper::startTSX(void) {
        cerr.precision(2);
        cerr << fixed;

        m->getAllCounterStates(SysBeforeState, DummySocketStates, BeforeState);
        BeforeTime = m->getTickCount();
    }
    
    void
    PCMWrapper::endTSX(void) {
        AfterTime = m->getTickCount();
        m->getAllCounterStates(SysAfterState, DummySocketStates, AfterState);
    }

    void
    PCMWrapper::printStatsTSX(bool summarized) {
        if (summarized) {
            const uint32 ncores = m->getNumCores();
            // Only accumulate state for CPUs running the benchmark
            for (uint32 i = 0; i < ncores; ++i) {
                if (CPU_ISSET(i, &cpusToMonitor)) {
                    accumulate_stats(BeforeState[i], AfterState[i]);
                }
            }
            print_stats_summary();
            return;
        }
        
        if (defaultStatsTSX)
            {
                cerr << "Time: " << dec << fixed << AfterTime - BeforeTime << " ms\n";
                cerr << "Core | IPC  | Inst  | Cycles  | Trans Cycles | Aborted Cycles  | #Start | #Commit | Cycles/Transaction \n";
            }
        else
            {
                for (uint32 i = 0; i < events.size(); ++i)
                    {
                        cerr << "Event" << i << ": "
                             << eventDefinition[events[i]].name << " "
                             << eventDefinition[events[i]].description << " (raw 0x"
                             << hex << (uint32)eventDefinition[events[i]].umask
                             << (uint32)eventDefinition[events[i]].event
                             << dec << ")" << endl;
                    }
                cerr << "\n";
                cerr << "Core | Event0  | Event1  | Event2  | Event3 \n";
            }
        const uint32 ncores = m->getNumCores();
        for (uint32 i = 0; i < ncores; ++i)
            {
                cerr << " " << setw(3) << i << "   " << setw(2);
                if (defaultStatsTSX)
                    print_default_stats(BeforeState[i], AfterState[i]);
                else
                    print_custom_stats(BeforeState[i], AfterState[i]);
            }
        cerr << "-------------------------------------------------------------------------------------------------------------------\n";
        cerr << "   *   ";
        if (defaultStatsTSX)
            print_default_stats(SysBeforeState, SysAfterState);
        else
            print_custom_stats(SysBeforeState, SysAfterState);

        cerr << endl;
    }
}

template <class StateType>
void
PCMWrapper::print_default_stats(const StateType & BeforeState, const StateType & AfterState)
{
    uint64 cycles = getCycles(BeforeState, AfterState);
    uint64 instr = getInstructionsRetired(BeforeState, AfterState);
    uint64 nRTM = getNumberOfCustomEvents(0, BeforeState, AfterState);
    uint64 nRTMcommit = getNumberOfCustomEvents(1, BeforeState, AfterState);
    const uint64 TXcycles_commited = getNumberOfCustomEvents(2, BeforeState, AfterState);
    const uint64 TXcycles = getNumberOfCustomEvents(3, BeforeState, AfterState);
    const uint64 Abr_cycles = (TXcycles > TXcycles_commited) ? (TXcycles - TXcycles_commited) : 0ULL;

    cerr << double(instr) / double(cycles) << "   ";
    cerr << unit_format(instr) << "   ";
    cerr << unit_format(cycles) << "  ";
    cerr << unit_format(TXcycles) << " (" << setw(5) << 100. * double(TXcycles) / double(cycles) << "%)  ";
    cerr << unit_format(Abr_cycles) << " (" << setw(5) << 100. * double(Abr_cycles) / double(cycles) << "%) ";
    cerr << unit_format(nRTM) << "   ";
    cerr << unit_format(nRTMcommit) << "     ";

    if (nRTM)
        {
            uint64 cyclesPerTransaction = TXcycles / (nRTM);
            cerr << unit_format(cyclesPerTransaction) << "\n";
        }
    else
        cerr << " N/A" << "\n";
}

template <class StateType>
void
PCMWrapper::print_custom_stats(const StateType & BeforeState, const StateType & AfterState)
{
    for (int i = 0; i < MONITORED_EVENTS_MAX; ++i)
        cerr << unit_format(getNumberOfCustomEvents(i, BeforeState, AfterState)) << "    ";
    cerr << "\n";
}

template <class StateType>
void
PCMWrapper::accumulate_stats(const StateType & BeforeState, const StateType & AfterState)
{
    uint64 cycles = getCycles(BeforeState, AfterState);
    uint64 insts = getInstructionsRetired(BeforeState, AfterState);

    cyclesSummary += cycles;
    instructionsRetiredSummary += insts;

    for (unsigned int i = 0; i < events.size(); i++) {
        uint64 count = getNumberOfCustomEvents(i, BeforeState, AfterState);
        eventCountSummary[i] += count;
    }

}

void
PCMWrapper::print_stats_summary()
{
    cerr <<
        "******************** Begin PCM summary statistics  ********************" << endl <<
        "NumCpusMonitored: " << CPU_COUNT(&cpusToMonitor) << endl <<
        "Time: " << dec << fixed << AfterTime - BeforeTime << " ms" << endl <<
        "InstructionsRetired: " << setw(20) <<
        instructionsRetiredSummary <<
        " (" << setw(4) << unit_format(instructionsRetiredSummary) << ")" << endl <<
        "Cycles:              " << setw(20) <<
        cyclesSummary <<
        " (" << setw(4) << unit_format(cyclesSummary) << ")" << endl;

    for (unsigned int i = 0; i < events.size(); i++) {
        cerr <<
            setw(30) << left << eventDefinition[events[i]].name << ":" << setw(20) <<
            right << eventCountSummary[i] <<
            " (" << setw(4) << unit_format(eventCountSummary[i]) << ")" << endl;
    }
    cerr <<
        "********************   End PCM summary statistics ********************" << endl;

}
