# Simple makefile

SRC = $(wildcard *.c)
BIN = $(patsubst %.c,%,$(SRC))

CFLAGS = -Wall -O0 -g
#CFLAGS = -Wall -O2

.PHONY: all clean

all: $(BIN)
	mkdir -p bin
	mv $(BIN) bin/
	mv $(BIN).dSYM bin/

clean:
	$(RM) -r bin
