# imagine you have a database or file of successful executions of a program
# but need to "backfill" "missed" runs
# calculate the missed dates from state
# then run the program with those dates
# this can run in parallel with make -j

.ONESHELL:
.SILENT:

backfill_dates != sqlite3 :memory: "select * from (values ('2022-11-08'),('2022-11-06')) a"

backfill: $(backfill_dates)

$(backfill_dates):
	echo some-command --date '$@'
