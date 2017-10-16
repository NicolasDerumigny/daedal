# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


PROG := ssca2

SRCS += \
	alg_radix_smp.c \
	computeGraph.c \
	createPartition.c \
	cutClusters.c \
	findSubGraphs.c \
	genScalData.c \
	getStartLists.c \
	getUserParameters.c \
	globals.c \
	ssca2.c \
#

SRCS_LIBS += \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/memory.c \

#CFLAGS += -DUSE_PARALLEL_DATA_GENERATION
#CFLAGS += -DWRITE_RESULT_FILES
CFLAGS += -DENABLE_KERNEL1
#CFLAGS += -DENABLE_KERNEL2 -DENABLE_KERNEL3
#CFLAGS += -DENABLE_KERNEL4


# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
