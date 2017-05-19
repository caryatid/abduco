# abduco version
VERSION = 0.6

# Customize below to fit your system

PREFIX ?= /usr/local
MANPREFIX = ${PREFIX}/share/man

INCS = -I.
LIBS = -lc -lutil

CPPFLAGS = -D_POSIX_C_SOURCE=200809L -D_XOPEN_SOURCE=700
CFLAGS += -I../musl/include -std=c99 -pedantic -Wall ${INCS} -DVERSION=\"${VERSION}\" -DNDEBUG ${CPPFLAGS}
LDFLAGS += -L../musl/lib ${LIBS} -static

DEBUG_CFLAGS = ${CFLAGS} -UNDEBUG -O0 -g -ggdb

CC ?= cc
STRIP ?= strip
