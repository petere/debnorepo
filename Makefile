prefix = /usr
bindir = $(prefix)/bin

all:

install:
	install -D -m755 debnorepo $(DESTDIR)$(bindir)/debnorepo
