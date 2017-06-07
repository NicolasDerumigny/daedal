#  include "spinlock.h"
#include <stdio.h>
#include <xmmintrin.h>

#define PADDED_ARRAY_SIZE_BYTES (CACHE_LINE_SIZE_BYTES * 4)

volatile char lock_array[PADDED_ARRAY_SIZE_BYTES] __attribute__ ((aligned (CACHE_LINE_SIZE_BYTES))) ;
volatile long * fallBackLock;

volatile long * numActiveTransactions;
volatile long * numRunningTransactions;

inline void spinlock_init()
{
  /* Make sure each synchronized variable maps to a different cache line */
  fallBackLock = (long *)&lock_array[CACHE_LINE_SIZE_BYTES];
  *fallBackLock = 0;

  numActiveTransactions = (long *)&lock_array[CACHE_LINE_SIZE_BYTES*2];
  *numActiveTransactions = 0;

  numRunningTransactions = (long *)&lock_array[CACHE_LINE_SIZE_BYTES*3];
  *numRunningTransactions = 0;
}

inline long fallback_isLocked()
{
  return *fallBackLock != 0;
}

inline void fallback_whileIsLocked()
{
  while (fallback_isLocked()) {
    _mm_pause();
  }
}

inline void fallback_lock()
{
    while (!__sync_bool_compare_and_swap(fallBackLock, 0, 1))
    {
      fallback_whileIsLocked();
    }
}

inline void fallback_unlock()
{
    asm volatile (""); // acts as a memory barrier.
    *fallBackLock = 0;
}

inline long update_active_transaction(long value) {
  return __sync_fetch_and_add (numActiveTransactions, value);
}

inline long any_active_transaction() {
  return *numActiveTransactions != 0;
}

inline long update_running_transaction(long value) {
  return __sync_fetch_and_add (numRunningTransactions, value);
}

inline long any_running_transaction() {
  return *numRunningTransactions != 0;
}
