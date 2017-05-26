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
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/random.c \
	$(LIB_DIR)/thread.c \
#
OBJS := ${SRCS:.c=.o}
LIB_OBJS := ${SRCS_LIBS:.c=.o}

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
