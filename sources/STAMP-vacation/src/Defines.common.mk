# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


CFLAGS += -DLIST_NO_DUPLICATES
CFLAGS += -DMAP_USE_RBTREE

PROG := vacation

SRCS += \
	client.c \
	customer.c \
	manager.c \
	reservation.c \
	vacation.c \
#

SRCS_LIBS += \
	$(LIB_DIR)/list.c \
	$(LIB_DIR)/pair.c \
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/random.c \
	$(LIB_DIR)/rbtree.c \
	$(LIB_DIR)/thread.c \
	$(LIB_DIR)/memory.c \
#
OBJS := ${SRCS:.c=.o}
LIB_LLS := ${SRCS_LIBS:.c=.ll}
LIB_OBJS :=	$(LIB_DIR)/../gem5/m5op_x86.o \
			$(LIB_DIR)/../gem5/m5ops_wrapper.o \
#

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
