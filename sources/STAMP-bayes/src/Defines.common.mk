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
	$(LIB_STAMP)/bitmap.c \
	$(LIB_STAMP)/list.c \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/queue.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/vector.c \
	$(LIB_STAMP)/memory.c \

CFLAGS += -DLIST_NO_DUPLICATES
CFLAGS += -DLEARNER_TRY_REMOVE
CFLAGS += -DLEARNER_TRY_REVERSE


# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
