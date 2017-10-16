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
	$(LIB_STAMP)/list.c \
	$(LIB_STAMP)/pair.c \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/rbtree.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/memory.c \

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
