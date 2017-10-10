#include "pcm.hpp"
#include <assert.h>
#include <iostream>
#include <math.h>
#include <string>
#include <sstream>

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
    PCMWrapper::init(void) {
        m = PCM::getInstance();
        int retriesLeft = 2;
        std::string errorStr = "PCM cannot program performance counters";
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

        if (ret == PCM::Success)
            cout << "PCM successfully programmed performance counters" << endl;
        else // Clear instance so that calls to start/end simply do nothing
            m = NULL;
    }

    void
    PCMWrapper::start(void) {
        if (!m) return;
        before_sstate = getSystemCounterState();
    }
    void
    PCMWrapper::end(void) {
        if (!m) return;
        after_sstate = getSystemCounterState();

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
            "InstructionsRetired: " << setw(20) <<
            getInstructionsRetired(before_sstate,after_sstate) <<
            " (" << setw(4) <<
            convertUnits(getInstructionsRetired(before_sstate,after_sstate)) << ")" << endl <<
            "Cycles:              " << setw(20) <<
            getCycles(before_sstate,after_sstate) <<
            " (" << setw(4) <<
            convertUnits(getCycles(before_sstate,after_sstate)) << ")" << endl <<
            "RefCycles:           " << setw(20) <<
            getRefCycles(before_sstate,after_sstate) <<
            " (" << setw(4) <<
            convertUnits(getRefCycles(before_sstate,after_sstate)) << ")" << endl <<
            "InvariantTSC:        " << setw(20) <<
            getInvariantTSC(before_sstate,after_sstate) <<
            " (" << setw(4) <<
            convertUnits(getInvariantTSC(before_sstate,after_sstate)) << ")" << endl <<
            "IPC:                 " << setw(20) <<
            getIPC(before_sstate,after_sstate) << endl <<
            "ActiveAvgFrequency:  " << setw(20) <<
            getActiveAverageFrequency(before_sstate,after_sstate) << endl <<
            "L2CacheHitRatio:     " << setw(20) <<
            getL2CacheHitRatio(before_sstate,after_sstate) << endl <<
            "L2CacheMisses:       " << setw(20) <<
            getL2CacheMisses(before_sstate,after_sstate) << endl <<
            "L3CacheHitRatio:     " << setw(20) <<
            getL3CacheHitRatio(before_sstate,after_sstate) << endl <<
            "L3CacheMisses:       " << setw(20) <<
            getL3CacheMisses(before_sstate,after_sstate) << endl <<
            "********************   End PCM statistics ********************" << endl;

        /* Always cleanup PMU state so that we don't get PMUBusy
           errors when calling 'program' */
        m->cleanup();
    }
}
