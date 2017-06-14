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
	$(LIB_DIR)/list.c \
	$(LIB_DIR)/mt19937ar.c \
	$(LIB_DIR)/pair.c \
	$(LIB_DIR)/queue.c \
	$(LIB_DIR)/random.c \
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

CFLAGS += -DUSE_EARLY_RELEASE


# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
