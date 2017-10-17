#include "pcm.hpp"
#include <assert.h>
#include <iostream>
#include <math.h>
#include <string>
#include <sstream>
#include "tsx_event.h"

extern "C"
{
    string
    PCMWrapper::convertUnits(uint64 val) {
        static const char *UNITS[] = { "", "K", "M", "G", "T", "P" };
        const unsigned int base = 1000;
        unsigned int div = 0;
        uint64 rem = 0;

        while (val >= base && div < (sizeof UNITS / sizeof *UNITS)) {
            rem = (val % base);
            div++;
            val /= base;
        }

        double val_d = round((float)val + (float)rem / (float)base);
        ostringstream convert;
        convert << val_d;
        string val_str = convert.str();
        string result = val_str + " " + UNITS[div];
        return result;
    }

    void
    PCMWrapper::tokenize(string s, string delimiter, vector<string> &tokens) {
        assert(tokens.empty());
        size_t pos = 0;
        std::string token;
        while ((pos = s.find(delimiter)) != std::string::npos) {
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
        }
        else {
            tsxMode = false;

            fprintf (stderr, "%s unset, using basic core events\n",
                     tsxEventsEnvVarName);
        }
    }

    void
    PCMWrapper::init(void) {
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
            printStatsTSX();
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
    
        cout <<
            "******************** Begin PCM statistics ********************" << endl <<
            "Time elapsed: " << dec << fixed << AfterTime - BeforeTime << " ms" << endl <<
            "InstructionsRetired: " << setw(20) <<
            getInstructionsRetired(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            convertUnits(getInstructionsRetired(SysBeforeState,SysAfterState)) << ")" << endl <<
            "Cycles:              " << setw(20) <<
            getCycles(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            convertUnits(getCycles(SysBeforeState,SysAfterState)) << ")" << endl <<
            "RefCycles:           " << setw(20) <<
            getRefCycles(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            convertUnits(getRefCycles(SysBeforeState,SysAfterState)) << ")" << endl <<
            "InvariantTSC:        " << setw(20) <<
            getInvariantTSC(SysBeforeState,SysAfterState) <<
            " (" << setw(4) <<
            convertUnits(getInvariantTSC(SysBeforeState,SysAfterState)) << ")" << endl <<
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

        vector<string> eventNames;

        char *tsxEventsRaw = getenv(tsxEventsEnvVarName);
        string tsxEventsStr(tsxEventsRaw);
        
        tokenize(tsxEventsStr, tsxEventsDelimiter, eventNames);
        
        while (!eventNames.empty()) {
            string eventName = eventNames.back();
            eventNames.pop_back();

            int cur_event = findTSXEventDefinition(eventName.c_str());
            if (cur_event < 0) {
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
        conf.nGPCounters = 4;
        EventSelectRegister regs[4];
        conf.gpCounterCfg = regs;
        for (int i = 0; i < 4; ++i)
            regs[i] = def_event_select_reg;

        if (events.empty())
            {
                regs[0].fields.event_select = 0xc9;
                regs[0].fields.umask = 0x01;
                regs[1].fields.event_select = 0xc8;
                regs[1].fields.umask = 0x01;
                regs[2].fields.event_select = 0x3c;
                regs[2].fields.in_tx = 1;
                regs[2].fields.in_txcp = 1;
                regs[3].fields.event_select = 0x3c;
                regs[3].fields.in_tx = 1;
            }
        else
            {
                for (unsigned int i = 0; i < events.size(); ++i)
                    {
                        regs[i].fields.event_select = eventDefinition[events[i]].event;
                        regs[i].fields.umask = eventDefinition[events[i]].umask;
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
        std::cout.precision(2);
        std::cout << std::fixed;

        m->getAllCounterStates(SysBeforeState, DummySocketStates, BeforeState);
        BeforeTime = m->getTickCount();
    }
    
    void
    PCMWrapper::endTSX(void) {
        AfterTime = m->getTickCount();
        m->getAllCounterStates(SysAfterState, DummySocketStates, AfterState);
    }

    void
    PCMWrapper::printStatsTSX(void) {
        bool csv = false;
        if (!csv) cout << std::flush;
        cout << "Time elapsed: " << dec << fixed << AfterTime - BeforeTime << " ms\n";
        
        if (events.empty())
            {
                if (csv)
                    cout << "Core,IPC,Instructions,Cycles,Transactional Cycles,Aborted Cycles,#RTM,#HLE,Cycles/Transaction \n";
                else
                    cout << "Core | IPC  | Instructions | Cycles  | Transactional Cycles | Aborted Cycles  | #RTM  | #HLE  | Cycles/Transaction \n";
            }
        else
            {
                for (uint32 i = 0; i < events.size(); ++i)
                    {
                        cout << "Event" << i << ": "
                             << eventDefinition[events[i]].name << " "
                             << eventDefinition[events[i]].description << " (raw 0x"
                             << std::hex << (uint32)eventDefinition[events[i]].umask
                             << (uint32)eventDefinition[events[i]].event
                             << std::dec << ")" << endl;
                    }
                cout << "\n";
                if (csv)
                    cout << "Core,Event0,Event1,Event2,Event3\n";
                else
                    cout << "Core | Event0  | Event1  | Event2  | Event3 \n";
            }
        const uint32 ncores = m->getNumCores();
        for (uint32 i = 0; i < ncores; ++i)
            {
                if (csv)
                    cout << i << ",";
                else
                    cout << " " << setw(3) << i << "   " << setw(2);
                if (events.empty())
                    print_basic_stats(BeforeState[i], AfterState[i], csv);
                else
                    print_custom_stats(BeforeState[i], AfterState[i], csv);
            }
        if (csv)
            cout << "*,";
        else
            {
                cout << "-------------------------------------------------------------------------------------------------------------------\n";
                cout << "   *   ";
            }
        if (events.empty())
            print_basic_stats(SysBeforeState, SysAfterState, csv);
        else
            print_custom_stats(SysBeforeState, SysAfterState, csv);

        std::cout << std::endl;
    }
}

template <class StateType>
void
PCMWrapper::print_basic_stats(const StateType & BeforeState, const StateType & AfterState, bool csv)
{
    uint64 cycles = getCycles(BeforeState, AfterState);
    uint64 instr = getInstructionsRetired(BeforeState, AfterState);
    const uint64 TXcycles = getNumberOfCustomEvents(3, BeforeState, AfterState);
    const uint64 TXcycles_commited = getNumberOfCustomEvents(2, BeforeState, AfterState);
    const uint64 Abr_cycles = (TXcycles > TXcycles_commited) ? (TXcycles - TXcycles_commited) : 0ULL;
    uint64 nRTM = getNumberOfCustomEvents(0, BeforeState, AfterState);
    uint64 nHLE = getNumberOfCustomEvents(1, BeforeState, AfterState);

    if (csv)
        {
            cout << double(instr) / double(cycles) << ",";
            cout << instr << ",";
            cout << cycles << ",";
            cout << TXcycles << "," << std::setw(5) << 100. * double(TXcycles) / double(cycles) << "%,";
            cout << Abr_cycles << "," << std::setw(5) << 100. * double(Abr_cycles) / double(cycles) << "%,";
            cout << nRTM << ",";
            cout << nHLE << ",";
        }
    else
        {
            cout << double(instr) / double(cycles) << "       ";
            cout << unit_format(instr) << "     ";
            cout << unit_format(cycles) << "      ";
            cout << unit_format(TXcycles) << " (" << std::setw(5) << 100. * double(TXcycles) / double(cycles) << "%)       ";
            cout << unit_format(Abr_cycles) << " (" << std::setw(5) << 100. * double(Abr_cycles) / double(cycles) << "%) ";
            cout << unit_format(nRTM) << "   ";
            cout << unit_format(nHLE) << "    ";
        }

    if (nRTM + nHLE)
        {
            uint64 cyclesPerTransaction = TXcycles / (nRTM + nHLE);
            if (csv)
                cout << cyclesPerTransaction << "\n";
            else
                cout << unit_format(cyclesPerTransaction) << "\n";
        }
    else
        cout << " N/A" << "\n";
}

template <class StateType>
void
PCMWrapper::print_custom_stats(const StateType & BeforeState, const StateType & AfterState, bool csv)
{
    for (int i = 0; i < 4; ++i)
        if (!csv)
            cout << unit_format(getNumberOfCustomEvents(i, BeforeState, AfterState)) << "    ";
        else
            cout << getNumberOfCustomEvents(i, BeforeState, AfterState) << ",";

    cout << "\n";
}

