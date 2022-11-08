ifeq (, $(shell which idontexist))
$(error idontexist is not installed)
endif