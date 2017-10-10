all:
ifeq ($(PERF_TOOL),pcm)
	make -f Makefile.pcm
else
ifeq ($(PERF_TOOL),jevents)
	make -f Makefile.jevents
else
ifndef $(PERF_TOOL)
	make -f Makefile.empty
else
	$(error Unknown perf counter library: '$(PERF_TOOL)' !)
endif
endif
endif

clean:
	rm -f *.o *.a

