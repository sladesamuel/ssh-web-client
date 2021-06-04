SHELL := /bin/bash

.PHONY: init
init:
	scripts/init.sh

.PHONY: start
start:
	scripts/build-and-run.sh
