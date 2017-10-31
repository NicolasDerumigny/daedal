/* =============================================================================
 *
 * worker.c
 *
 * =============================================================================
 */


#include <assert.h>
#include "worker.h"
#include "thread.h"
#include "types.h"
#include "tm.h"


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
              long* dataPtr)
{
    worker_t* workerPtr =  workerPtr = (worker_t*)malloc(sizeof(worker_t));
    if (workerPtr == NULL) return NULL;
    workerPtr->id = id;
    workerPtr->step = step;
    workerPtr->busy = busy;
    assert(busy >= 0);
    workerPtr->passes = passes;
    assert(passes > 0);
    workerPtr->numElements = numElements;
    workerPtr->dataPtr = dataPtr;
    workerPtr->numIndices = numIndices;
    long* indicesPtr = (long*)malloc(numIndices * sizeof(long));
    if (indicesPtr == NULL) return NULL;
    workerPtr->indicesPtr = indicesPtr;
    int i;
    for (i = 0; i < numIndices; i++) {
        long index = random_generate(randomPtr) % numElements;
        indicesPtr[i] = index;
    }

    return workerPtr;
}


/* =============================================================================
 * worker_free
 * =============================================================================
 */
void
worker_free (worker_t* workerPtr)
{
    free(workerPtr);
}


/* =============================================================================
 * worker_run
 * =============================================================================
 */
void
worker_run (void* argPtr)
{
    TM_THREAD_ENTER();

    long myId = thread_getId();
    worker_t* workerPtr = ((worker_t**)argPtr)[myId];
    long* dataPtr = workerPtr->dataPtr;
    long* indicesPtr = workerPtr->indicesPtr;
    //long numElements = workerPtr->numElements;
    long numIndices = workerPtr->numIndices;
    long step = workerPtr->step;
    long busy = workerPtr->busy;
    long passes = workerPtr->passes;
    long curPass = 0;

    TM_WORK_BEGIN();

    long curIndex = 0;
    while (1) {

        TM_BEGIN(0);

        /* Dummy loop to give enough time for prefetched
           data to arrive to cache */
#if 0
        unsigned short j;
        j = busy;
        while(j--) {
            asm("");
        }        
#endif

        long i;
#       pragma clang loop vectorize_width(1337)
        for(i = 0; i < step; i++) {
            long index = indicesPtr[curIndex];
            dataPtr[index]++;
        }
        TM_END(0);

        if ((step > 0 && curIndex + step >= numIndices) ||
            (step < 0 && curIndex + step < 0)) {
            /* Switch directions */
            step = -step;
            curPass++;
            if (curPass == passes) {  // Last pass done
                break;
            }
        }
        curIndex += step;
    }

    TM_WORK_END();

    TM_THREAD_EXIT();
    
}


/* =============================================================================
 *
 * End of worker.c
 *
 * =============================================================================
 */




