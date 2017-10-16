# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


CFLAGS += -DOUTPUT_TO_STDOUT

PROG := kmeans

SRCS += \
	cluster.c \
	common.c \
	kmeans.c \
	normal.c \
#

SRCS_LIBS += \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/memory.c \

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
