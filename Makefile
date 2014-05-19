SNAPSHOT=latest
ARCH=ia32
QAREPORTID=

DAILY_URL=https://download.tizen.org/releases/daily/tizen/common/common-wayland-$(ARCH)/$(SNAPSHOT)
WEEKLY_URL=https://download.tizen.org/releases/weekly/tizen/common/common-wayland-$(ARCH)/$(SNAPSHOT)

all: help

help:
	@echo "Usage: make <daily|weekly> SNAPSHOT=snapshotid ARCH=<ia32|x86_64>"

.PHONY: daily
daily:
	bin/gen_announce $@ $(DAILY_URL) "$(QAREPORTID)" daily

.PHONY: weekly
weekly:
	bin/gen_announce $@ $(WEEKLY_URL) "$(QAREPORTID)" weekly

