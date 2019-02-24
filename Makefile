#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

PATH_ROFI = $(PREFIX)/etc/rofi.conf
PATH_ROFI_THEME = $(PREFIX)/usr/share/rofi/themes/regolith-theme.rasi

#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D rofi.conf $(PATH_ROFI)
	$(INSTALL) -m0644 -D regolith-theme.rasi $(PATH_ROFI_THEME)
	
uninstall:
	rm -f $(PATH_ROFI)
	rm -f $(PATH_ROFI_THEME)

.PHONY: all install uninstall
