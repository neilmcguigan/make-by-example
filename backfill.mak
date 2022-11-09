# imagine you have a "state" database or file of executions of a program
# but need to "backfill" "missed" runs
# calculate the missed dates from state
# then run your program with those dates
# this can run in parallel with make -j

.ONESHELL:
.SILENT:

backfill_dates != sqlite3 :memory: "select * from (values ('2022-11-08'),('2022-11-06')) a"

backfill: $(backfill_dates)

$(backfill_dates):
	echo some-command --date '$@'
