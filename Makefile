prefix = /usr
bindir = $(prefix)/bin
mandir = $(prefix)/share/man

all: debnorepo debnorepo.8

debnorepo.8: debnorepo
	podchecker -warnings $<
	pod2man --center='debnorepo' --release='Debian' --section=8 $< $@

install: all
	install -D -m755 debnorepo $(DESTDIR)$(bindir)/debnorepo
	install -D -m644 debnorepo.8 $(DESTDIR)$(mandir)/man8/debnorepo.8

clean:
	rm -f debnorepo.8
