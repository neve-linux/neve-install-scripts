PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

SCRIPTS = neve-bootstrap neve-chroot genfstab

all:

install:
	install -d $(DESTDIR)$(BINDIR)
	for script in $(SCRIPTS); do \
		install -m 755 $$script $(DESTDIR)$(BINDIR); \
	done
