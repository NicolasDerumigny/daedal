# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


PROG := intruder

SRCS += \
	decoder.c \
	detector.c \
	dictionary.c \
	intruder.c \
	packet.c \
	preprocessor.c \
	stream.c \
#

SRCS_LIBS += \
	$(LIB_STAMP)/list.c \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/pair.c \
	$(LIB_STAMP)/queue.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/rbtree.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/vector.c \
	$(LIB_STAMP)/memory.c \

CFLAGS += -DMAP_USE_RBTREE


# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
