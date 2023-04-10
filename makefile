SRCS = $(wildcard src/*.hs)
PROGS = $(patsubst src/%.hs,build/%,$(SRCS))

all: $(PROGS)

build/%: src/%.hs
	ghc -o $@ $<
