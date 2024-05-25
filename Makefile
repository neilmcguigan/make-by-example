MAKEFLAGS += --warn-undefined-variables --jobs $(shell nproc)  --output-sync=target
SHELL := bash
.SHELLFLAGS := -ceuo pipefail
.ONESHELL:
.SILENT:

all:
  echo ok
