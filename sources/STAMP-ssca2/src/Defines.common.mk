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
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/random.c \
	$(LIB_DIR)/thread.c \
	$(LIB_DIR)/memory.c \
#
OBJS := ${SRCS:.c=.o}
LIB_OBJS := ${SRCS_LIBS:.c=.o}
LIB_OBJS += $(LIB_DIR)/abort_handlers.a \
			$(LIB_DIR)/../gem5/m5op_x86.o \
			$(LIB_DIR)/../gem5/m5ops_wrapper.o \
#

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
