.ONESHELL:
.SILENT:

include .env
export

-include idontexist.txt

all:
	echo read FOO from .env and use in bash, value is "$${FOO}"
