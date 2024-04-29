#!/usr/bin/make -f

SHELL := bash
.SHELLFLAGS := -euo pipefail -c
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
COLUMNS ?= `tput cols`
CORES ?= $(shell (nproc  || sysctl -n hw.ncpu) 2> /dev/null)
MAKE_CMD := ${MAKE} --jobs ${CORES} -k --no-print-directory

##@ [Manual]
.DEFAULT_GOAL := help
help:  ## Display this help
	@echo "    __   ____  _       ";
	@echo "   / /__| __ )(_)_ __  ";
	@echo "  / / __|  _ \| | '_ \ ";
	@echo " / /\__ \ |_) | | | | |";
	@echo "/_/ |___/____/|_|_| |_|/mega_update";
	@echo "";
	@echo "";
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z0-9_-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' ${MAKEFILE_LIST}

##@ [App]
.PHONY: dry-run
dry-run:  ## Run Mega Update locally (Dry-Run mode, don't make any changes)
	ansible-playbook --inventory tests/inventory --ask-become-pass tests/test.yml --check --diff --verbose

.PHONY: run
run:  ## Run Mega Update locally
	ansible-playbook --inventory tests/inventory --ask-become-pass tests/test.yml

.PHONY: list-tasks
list-tasks:  ## List supported tasks and their tags
	ansible-playbook --inventory tests/inventory tests/test.yml --list-tasks

.PHONY: list-tags
list-tags:  ## List all supported tags
	ansible-playbook --inventory tests/inventory tests/test.yml --list-tags

##@ [Contribution]
.PHONY: lint
lint:  ## Lint the project
	-ansible-playbook --inventory tests/inventory tests/test.yml --syntax-check
	-ansible-lint

.PHONY: ansible-facts
ansible-facts:  ## Print Ansible Facts
	ansible localhost --module-name ansible.builtin.setup

.PHONY: galaxy-Update
galaxy-update:  ## Update role on Ansible Galaxy
	ansible-galaxy role import slashsbin mega_update
