#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

TARGET = $(PREFIX)/usr/share/i3xrocks
#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D i3xrocks.conf $(TARGET)/i3xrocks.conf
	$(INSTALL) -m0644 -D scripts/bandwidth $(TARGET)/bandwidth
	$(INSTALL) -m0644 -D scripts/battery $(TARGET)/battery
	$(INSTALL) -m0644 -D scripts/cpu_usage $(TARGET)/cpu_usage
	$(INSTALL) -m0644 -D scripts/disk $(TARGET)/disk
	$(INSTALL) -m0644 -D scripts/iface $(TARGET)/iface
	$(INSTALL) -m0644 -D scripts/keyindicator $(TARGET)/keyindicator
	$(INSTALL) -m0644 -D scripts/load_average $(TARGET)/load_average
	$(INSTALL) -m0644 -D scripts/mediaplayer $(TARGET)/mediaplayer
	$(INSTALL) -m0644 -D scripts/memory $(TARGET)/memory
	$(INSTALL) -m0644 -D scripts/openvpn $(TARGET)/openvpn
	$(INSTALL) -m0644 -D scripts/temperature $(TARGET)/temperature
	$(INSTALL) -m0644 -D scripts/time $(TARGET)/time
	$(INSTALL) -m0644 -D scripts/volume $(TARGET)/volume
	$(INSTALL) -m0644 -D scripts/wifi $(TARGET)/wifi

uninstall:
	rm -Rf $(PREFIX)/usr/share/i3xrocks

.PHONY: all install uninstall
