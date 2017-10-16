# ==============================================================================
#
# Defines.common.mk
#
# ==============================================================================


LIBS += -lm

PROG := labyrinth

SRCS += \
	coordinate.c \
	grid.c \
	labyrinth.c \
	maze.c \
	router.c \
#

SRCS_LIBS += \
	$(LIB_STAMP)/list.c \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/pair.c \
	$(LIB_STAMP)/queue.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/vector.c \
	$(LIB_STAMP)/memory.c \

CFLAGS += -DUSE_EARLY_RELEASE


# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
