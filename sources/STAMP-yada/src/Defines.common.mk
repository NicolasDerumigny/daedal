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
	$(LIB_STAMP)/avltree.c \
	$(LIB_STAMP)/heap.c \
	$(LIB_STAMP)/list.c \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/pair.c \
	$(LIB_STAMP)/queue.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/rbtree.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/vector.c \
	$(LIB_STAMP)/memory.c \

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
