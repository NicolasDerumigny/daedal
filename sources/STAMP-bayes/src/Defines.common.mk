# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


PROG := bayes

SRCS += \
	adtree.c \
	bayes.c \
	data.c \
	learner.c \
	net.c \
	sort.c \
#

SRCS_LIBS += \
	$(LIB_DIR)/bitmap.c \
	$(LIB_DIR)/list.c \
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/queue.c \
	$(LIB_DIR)/random.c \
	$(LIB_DIR)/thread.c \
	$(LIB_DIR)/vector.c \
	$(LIB_DIR)/memory.c \
#

OBJS := ${SRCS:.c=.o}
LIB_LLS := ${SRCS_LIBS:.c=.ll}
LIB_OBJS := $(LIB_DIR)/../gem5/m5op_x86.o \
			$(LIB_DIR)/../gem5/m5ops_wrapper.o \
#

CFLAGS += -DLIST_NO_DUPLICATES
CFLAGS += -DLEARNER_TRY_REMOVE
CFLAGS += -DLEARNER_TRY_REVERSE


# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
