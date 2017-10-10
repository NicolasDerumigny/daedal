# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


PROG := myBenchmark

SRCS += \
	small_benchmark.c \

# LIB_STAMP defined in common/Defines.common.mk
SRCS_LIBS += \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/vector.c \
	$(LIB_STAMP)/memory.c \

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
