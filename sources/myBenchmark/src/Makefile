# Copyright (C) Eta Scale AB. Licensed under the Eta Scale Open Source License. See the LICENSE file for details.

LEVEL=../../
LIB_DIR=../../STAMP-include/lib

include ./Defines.common.mk

BENCHMARK=myBenchmark

CFLAGS+=-pthread -DHTM -DOLD_RTM_MACROSES
CXXFLAGS+=-O3
LDFLAGS+=

include $(LEVEL)/common/DAE/Makefile.targets
include $(LEVEL)/common/DAE/Makefile.defaults

