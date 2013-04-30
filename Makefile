CC = cc
CFLAGS = -Wall -Os
LDFLAGS =
DESTDIR ?=
PREFIX ?= /usr
BINDIR = $(PREFIX)/bin

all: fbvnc
.c.o:
	$(CC) -c $(CFLAGS) $<
fbvnc: fbvnc.o draw.o d3des.o vncauth.o
	$(CC) $(LDFLAGS) -o $@ $^
install:
	install -Dm755 fbvnc "$(DESTDIR)$(BINDIR)"
clean:
	rm -f *.o fbvnc
