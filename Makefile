.ONESHELL:
.SILENT:

backfill_dates != sqlite3 :memory: "select * from (values ('2022-11-08'),('2022-11-06')) a"

backfill: $(backfill_dates)

$(backfill_dates):
	echo some-command --date '$@'


python: SHELL := python3
python:
	print('Hello from python')


sqlite: SHELL := sqlite3
sqlite: .SHELLFLAGS := :memory:
sqlite:
	select
		'Hello from SQLite';


control-functions:
	$(info an info message)
	$(warning a warning message)
	$(error an error message)
