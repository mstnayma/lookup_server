CC = gcc

CC = gcc

# Support externally overriding CFLAGS
CFLAGS ?= -g -Wall -Wpedantic -std=c17
CFLAGS += -I/home/j-hui/cs3157-pub/include

LDFLAGS = -L/home/j-hui/cs3157-pub/lib
LDLIBS = -lmylist


.PHONY: default

default: mdb-lookup-server

mdb-lookup-server.o: mdb.h

.PHONY: clean
clean: 
	rm -f *.o a.out core mdb-lookup-server

.PHONY: all 
all: clean default 
