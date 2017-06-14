# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


CFLAGS += -DLIST_NO_DUPLICATES
CFLAGS += -DCHUNK_STEP1=12

PROG := genome

SRCS += \
	gene.c \
	genome.c \
	segments.c \
	sequencer.c \
	table.c \
#

SRCS_LIBS += \
	$(LIB_DIR)/bitmap.c \
	$(LIB_DIR)/hash.c \
	$(LIB_DIR)/hashtable.c \
	$(LIB_DIR)/pair.c \
	$(LIB_DIR)/random.c \
	$(LIB_DIR)/list.c \
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/thread.c \
	$(LIB_DIR)/vector.c \
	$(LIB_DIR)/memory.c \
#
OBJS := ${SRCS:.c=.o}
LIB_OBJS := ${SRCS_LIBS:.c=.o}
LIB_OBJS += $(LIB_DIR)/abort_handlers.a \
			$(LIB_DIR)/../gem5/m5op_x86.o \
			$(LIB_DIR)/../gem5/m5ops_wrapper.o \
#

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
