ifneq (, $(shell which ls))
$(info ls is installed)
endif

ifeq (, $(shell which idontexist))
$(error idontexist is not installed)
endif