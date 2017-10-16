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
	$(LIB_STAMP)/bitmap.c \
	$(LIB_STAMP)/hash.c \
	$(LIB_STAMP)/hashtable.c \
	$(LIB_STAMP)/pair.c \
	$(LIB_STAMP)/random.c \
	$(LIB_STAMP)/list.c \
	$(LIB_STAMP)/mt19937ar.c \
	$(LIB_STAMP)/thread.c \
	$(LIB_STAMP)/vector.c \
	$(LIB_STAMP)/memory.c \

# ==============================================================================
#
# End of Defines.common.mk
#
# ==============================================================================
