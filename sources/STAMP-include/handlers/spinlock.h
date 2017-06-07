#ifndef SPINLOCK_H
#define SPINLOCK_H 1

#define CACHE_LINE_SIZE_BYTES 64

void spinlock_init();
void fallback_whileIsLocked();
long fallback_isLocked();
void fallback_unlock();
void fallback_lock();

extern volatile long * numActiveTransactions;
extern volatile long * numRunningTransactions;

long update_active_transaction(long value);
long any_active_transaction();
long update_running_transaction(long value);
long any_running_transaction();

#endif /* SPINLOCK_H */
