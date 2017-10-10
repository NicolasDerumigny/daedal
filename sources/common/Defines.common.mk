LIB_DIR=$(LEVEL)/STAMP-include
LIB_STAMP      = $(LIB_DIR)/lib
LIB_PERF       = $(LIB_DIR)/perf
LIB_GEM5       = $(LIB_DIR)/gem5
PCM        = $(LIB_PERF)

# Choice of performance monitoring library: {pcm, jevents, <empty>}
PERF_COUNTERS_TOOL =

CFLAGS+=-pthread -DHTM -DOLD_RTM_MACROSES
CXXFLAGS+=-O3
# Avoid missing libraries when running in simulator
LDFLAGS  += -static

# Performance monitoring library
ifdef PERF_COUNTERS_TOOL
ifneq ($(PERF_COUNTERS_TOOL),pcm)
ifneq ($(PERF_COUNTERS_TOOL),jevents)
        $(error Unknown perf counter tool: '$(PERF_COUNTERS_TOOL)' !)
endif
endif
  LDFLAGS     += -L$(LIB_PERF) -l$(PERF_COUNTERS_TOOL)
endif
