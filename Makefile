# That "source" works
SHELL := /bin/bash

all: colors/unicorn.vim

colors/unicorn.vim: generate.go colors.env Makefile
	$(shell source colors.env && go run generate.go colors/unicorn.vim)
	@echo "Done"

clean:
	rm -rf colors/unicorn.vim

.PHONY: all clean
