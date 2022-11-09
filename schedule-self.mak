# TODO:
# update crontab, don't overwrite
# set cron's working dir, mailto, tz etc
# allow arguments to cron'd make call

.ONESHELL:
.SILENT:

cron := @daily

make_path != which make
this_path:= $(abspath $(lastword $(MAKEFILE_LIST)))

schedule-me: 
	echo "$(cron) $(make_path) -f $(this_path)"
