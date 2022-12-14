.ONESHELL:
.SILENT:

all: python sqlite bash

# this is a target-specific variable:
python: SHELL := python3
python:
	from datetime import datetime
	print("--- python ---")
	print(datetime.now())


sqlite: SHELL := sqlite3
sqlite: .SHELLFLAGS := :memory:
sqlite:
	select '--- sqlite ---'
	union all
	select current_time;


bash: SHELL := bash
bash:
	echo --- bash ---
	echo `date`