#
# Makefile for the library
#

XACTION = $(M5_PATH)/benchmarks/libs/xaction/
GEM5 = $(M5_PATH)/benchmarks/libs/gem5/

CC        := gcc
AR        := ar
LD        := gcc

AR_FLAGS  := rvs
CFLAGS    += -O3 -Wall
CFLAGS    += -I$(XACTION) -I$(GEM5)
CFLAGS    += -DX86

OBJS= spinlock.o abort_handlers.o mt19937ar_1.o

%.o: %.S
	${CC} ${CFLAGS} -c $< -o $@

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

aborthandlers.a: ${OBJS}
	${AR} ${AR_FLAGS} $@ ${OBJS}
	cp aborthandlers.a libaborthandlers.a

clean:
	rm -f *.o *.a
