.ONESHELL:
.SILENT:

backfill_dates != sqlite3 :memory: "select * from (values ('2022-11-08'),('2022-11-06')) a"

backfill: $(backfill_dates)

$(backfill_dates):
	echo some-command --date '$@'
