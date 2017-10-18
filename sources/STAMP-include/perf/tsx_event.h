#ifndef PCM_TSX_EVENT_H
#define PCM_TSX_EVENT_H

typedef struct TSXEvent
{
    const char * name;
    unsigned char event;
    unsigned char umask;
    const char * description;
} TSXEvent;

const struct TSXEvent eventDefinition[] = {
    { "RTM_RETIRED.START", 0xC9, 0x01, "Number of times an RTM execution started." },
    { "RTM_RETIRED.COMMIT", 0xC9, 0x02, "Number of times an RTM execution successfully committed" },
    { "RTM_RETIRED.ABORTED", 0xC9, 0x04, "Number of times an RTM execution aborted due to any reasons (multiple categories may count as one)" },
    { "RTM_RETIRED.ABORTED_MISC1", 0xC9, 0x08, "Number of times an RTM execution aborted due to various memory events" },
    { "RTM_RETIRED.ABORTED_MISC2", 0xC9, 0x10, "Number of times an RTM execution aborted due to uncommon conditions" },
    { "RTM_RETIRED.ABORTED_MISC3", 0xC9, 0x20, "Number of times an RTM execution aborted due to Intel TSX-unfriendly instructions" },
    { "RTM_RETIRED.ABORTED_MISC4", 0xC9, 0x40, "Number of times an RTM execution aborted due to incompatible memory type" },
    { "RTM_RETIRED.ABORTED_MISC5", 0xC9, 0x80, "Number of times an RTM execution aborted due to none of the previous 4 categories (e.g. interrupt)" },

    { "HLE_RETIRED.START", 0xC8, 0x01, "Number of times an HLE execution started." },
    { "HLE_RETIRED.COMMIT", 0xC8, 0x02, "Number of times an HLE execution successfully committed" },
    { "HLE_RETIRED.ABORTED", 0xC8, 0x04, "Number of times an HLE execution aborted due to any reasons (multiple categories may count as one)" },
    { "HLE_RETIRED.ABORTED_MISC1", 0xC8, 0x08, "Number of times an HLE execution aborted due to various memory events" },
    { "HLE_RETIRED.ABORTED_MISC2", 0xC8, 0x10, "Number of times an HLE execution aborted due to uncommon conditions" },
    { "HLE_RETIRED.ABORTED_MISC3", 0xC8, 0x20, "Number of times an HLE execution aborted due to Intel TSX-unfriendly instructions" },
    { "HLE_RETIRED.ABORTED_MISC4", 0xC8, 0x40, "Number of times an HLE execution aborted due to incompatible memory type" },
    { "HLE_RETIRED.ABORTED_MISC5", 0xC8, 0x80, "Number of times an HLE execution aborted due to none of the previous 4 categories (e.g. interrupt)" },

    { "TX_MEM.ABORT_CONFLICT", 0x54, 0x01, "Number of times a transactional abort was signaled due to a data conflict on a transactionally accessed address" },
    { "TX_MEM.ABORT_CAPACITY_WRITE", 0x54, 0x02, "Number of times a transactional abort was signaled due to limited resources for transactional stores" },
    { "TX_MEM.ABORT_HLE_STORE_TO_ELIDED_LOCK", 0x54, 0x04, "Number of times a HLE transactional region aborted due to a non XRELEASE prefixed instruction writing to an elided lock in the elision buffer" },
    { "TX_MEM.ABORT_HLE_ELISION_BUFFER_NOT_EMPTY", 0x54, 0x08, "Number of times an HLE transactional execution aborted due to NoAllocatedElisionBuffer being nonzero." },
    { "TX_MEM.ABORT_HLE_ELISION_BUFFER_MISMATCH", 0x54, 0x10, "Number of times an HLE transactional execution aborted due to XRELEASE lock not satisfying the address and value requirements in the elision buffer." },
    { "TX_MEM.ABORT_HLE_ELISION_BUFFER_UNSUPPORTED_ALIGNMENT", 0x54, 0x20, "Number of times an HLE transactional execution aborted due to an unsupported read alignment from the elision buffer." },
    { "TX_MEM.HLE_ELISION_BUFFER_FULL", 0x54, 0x40, "Number of times HLE lock could not be elided due to ElisionBufferAvailable being zero." },

    { "TX_EXEC.MISC1", 0x5D, 0x01, "Counts the number of times a class of instructions that may cause a transactional abort was executed. Since this is the count of execution, it may not always cause a transactional abort." },
    { "TX_EXEC.MISC2", 0x5D, 0x02, "Counts the number of times a class of instructions that may cause a transactional abort was executed inside a transactional region" },
    { "TX_EXEC.MISC3", 0x5D, 0x04, "Counts the number of times an instruction execution caused the nest count supported to be exceeded" },
    { "TX_EXEC.MISC4", 0x5D, 0x08, "Counts the number of times an HLE XACQUIRE instruction was executed inside an RTM transactional region" },
    // umask is invalid in the following event definitions, only name, event and description
    { "TX_CYCLES.TOTAL", 0x3c, 0x00, "Counts the total number cycles spent inside an RTM transactional region" },
    { "TX_CYCLES.COMMIT", 0x3c, 0x00, "Counts the number cycles spent inside an RTM transactional region that committed" }

};

static inline int findTSXEventDefinition(const char * name)
{
    const int all = sizeof(eventDefinition) / sizeof(struct TSXEvent);
    for (int i = 0; i < all; ++i)
        {
            if (strcmp(name, eventDefinition[i].name) == 0)
                return i;
        }
    return -1;
}


#endif
