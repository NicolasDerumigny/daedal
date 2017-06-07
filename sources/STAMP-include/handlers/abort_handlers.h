// Abort handlers
#include "annotated_regions.h"

// Abort codes passed to XABORT instruction recognized by some abort handlers
#define ABORT_CODE_FALLBACK_EXPLICIT 0xfe
#define ABORT_CODE_FALLBACK_LOCKED 0xff

void initGlobals(int num_virt_cpus, int num_real_cpus);
void deleteGlobals ();

void beginTransaction(int tag, int prio, int in_fast_forward);
void commitTransaction(int tag, int in_fast_forward);

void DAE_beginAccessPhase(void);

void beginTransaction_touchAddr_simpleBackoff(int tag, int prio);
void beginTransaction_simpleBackoff(int tag, int prio);
void commitTransaction_simple(int tag);
void beginTransaction_fallbackLock(int tag, int prio);
void commitTransaction_fallbackLock(int tag);
void abortTransaction();
void releaseReadSet(u_int64_t addr);
void annotateRegion(u_int64_t region, u_int64_t value);
