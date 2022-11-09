# TODO:
# update crontab, don't overwrite
# set working dir
# allow arguments to make

.ONESHELL:
.SILENT:

make_path != which make
this_path:= $(abspath $(lastword $(MAKEFILE_LIST)))

schedule-me: check
	echo "$(cron) $(make_path) -f $(this_path)" | crontab

check:
ifndef cron
$(error `cron` not set. usage `make cron='@daily'`)
endif