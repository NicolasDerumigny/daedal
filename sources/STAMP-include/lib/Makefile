# ==============================================================================
#
# Makefile for lib
#
# ==============================================================================


# ==============================================================================
# Variables
# ==============================================================================

CC      := clang
CFLAGS  := -g -Wall -DOLD_RTM_MACROSES

SRCS := \
	avltree.c \
	bitmap.c \
	hash.c \
	hashtable.c \
	heap.c \
	list.c \
	memory.c \
	mt19937ar.c \
	pair.c \
	queue.c \
	random.c \
        rbtree.c \
	thread.c \
	vector.c \
#
OBJS := ${SRCS:.c=.o}

PROG_TEST := \
	test_bitmap \
	test_hashtable \
	test_list \
	test_memory \
	test_pair \
	test_queue \
	test_random \
        test_rbtree \
	test_thread \
	test_vector \
#

RM := rm -f


# ==============================================================================
# Unit tests
# ==============================================================================
all: $(OBJS)

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)


.PHONY: clean
clean:
	$(RM) $(OBJS) $(PROG_TEST)

.PHONY: test_bitmap
test_bitmap: CFLAGS += -DTEST_BITMAP
test_bitmap:
	$(CC) $(CFLAGS) bitmap.c -o $@

.PHONY: test_hashtable
test_hashtable: CFLAGS += -DTEST_HASHTABLE
test_hashtable: CFLAGS += -DHASHTABLE_RESIZABLE -DLIST_NO_DUPLICATES
test_hashtable:
	$(CC) $(CFLAGS) hashtable.c list.c pair.c memory.c -o $@

.PHONY: test_list
test_list: CFLAGS += -DTEST_LIST
test_list:
	$(CC) $(CFLAGS) list.c memory.c -o $@

.PHONY: test_memory
test_memory: CFLAGS += -DTEST_MEMORY
test_memory:
	$(CC) $(CFLAGS) memory.c -o $@

.PHONY: test_pair
test_pair: CFLAGS += -DTEST_PAIR
test_pair:
	$(CC) $(CFLAGS) pair.c memory.c -o $@

.PHONY: test_queue
test_queue: CFLAGS += -DTEST_QUEUE
test_queue:
	$(CC) $(CFLAGS) queue.c random.c mt19937ar.c memory.c -o $@

.PHONY: test_random
test_random: CFLAGS += -DTEST_RANDOM
test_random:
	$(CC) $(CFLAGS) random.c -o $@

.PHONY: test_rbtree
test_rbtree: CFLAGS += -DTEST_RBTREE
test_rbtree:
	$(CC) $(CFLAGS) rbtree.c -o $@

.PHONY: test_thread
test_thread: CFLAGS += -DTEST_THREAD
test_thread:
	$(CC) $(CFLAGS) thread.c -lpthread -o $@

.PHONY: test_vector
test_vector: CFLAGS += -DTEST_VECTOR
test_vector:
	$(CC) $(CFLAGS) vector.c -o $@



# ==============================================================================
#
# End of Makefile for lib
#
# ==============================================================================
