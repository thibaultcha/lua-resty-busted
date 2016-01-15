NAME = busted

PREFIX ?= /usr/local
INSTALL_DIR ?= $(PREFIX)/bin

install:
	@cp bin/$(NAME) $(INSTALL_DIR)

test:
	@bin/$(NAME)

.PHONY: install test
