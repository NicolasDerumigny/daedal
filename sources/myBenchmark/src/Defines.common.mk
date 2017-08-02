# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


PROG := myBenchmark

SRCS += \
	small_benchmark.c \
#

SRCS_LIBS += \
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/thread.c \
	$(LIB_DIR)/vector.c \
	$(LIB_DIR)/memory.c \
#
OBJS := ${SRCS:.c=.o}
LIB_LLS := ${SRCS_LIBS:.c=.ll}
LIB_OBJS := $(LIB_DIR)/../gem5/m5op_x86.o \
			$(LIB_DIR)/../gem5/m5ops_wrapper.o \
#

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
