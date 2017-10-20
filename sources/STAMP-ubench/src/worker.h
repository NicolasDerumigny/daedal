/* =============================================================================
 *
 * worker.h
 *
 * =============================================================================
 */


#ifndef WORKER_H
#define WORKER_H 1


#include "random.h"
#include "tm.h"

typedef struct worker {
    long id;
    long step;
    long busy;
    long passes;
    long numIndices;
    long numElements;
    long* indicesPtr;
    long* dataPtr;
} worker_t;


/* =============================================================================
 * worker_alloc
 * -- Returns NULL on failure
 * =============================================================================
 */
worker_t*
worker_alloc (long id,
              random_t* randomPtr,
              long step,
              long busy,
              long passes,
              long numIndices,
              long numElements,       
              long* dataPtr);


/* =============================================================================
 * worker_free
 * =============================================================================
 */
void
worker_free (worker_t* workerPtr);


/* =============================================================================
 * worker_run
 * -- Execute list operations on the database
 * =============================================================================
 */
void
worker_run (void* argPtr);


#endif /* WORKER_H */


/* =============================================================================
 *
 * End of worker.h
 *
 * =============================================================================
 */
