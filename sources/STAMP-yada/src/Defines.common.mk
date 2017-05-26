# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


CFLAGS += -DLIST_NO_DUPLICATES
CFLAGS += -DMAP_USE_AVLTREE
CFLAGS += -DSET_USE_RBTREE

PROG := yada
SRCS += \
	coordinate.c \
	element.c \
	mesh.c \
	region.c \
	yada.c \
#

SRCS_LIBS += \
	$(LIB_DIR)/avltree.c \
	$(LIB_DIR)/heap.c \
	$(LIB_DIR)/list.c \
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/pair.c \
	$(LIB_DIR)/queue.c \
	$(LIB_DIR)/random.c \
	$(LIB_DIR)/rbtree.c \
	$(LIB_DIR)/thread.c \
	$(LIB_DIR)/vector.c \
#

OBJS := ${SRCS:.c=.o}
LIB_OBJS := ${SRCS_LIBS:.c=.o}

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
