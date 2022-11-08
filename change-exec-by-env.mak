.ONESHELL:
.SILENT:

# using target-specific variables:

dev: exec=echo
dev: run

prod: exec=printf
prod: run

run:
	$(exec) hello