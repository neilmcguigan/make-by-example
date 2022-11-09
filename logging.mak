$(info $(MY_VAR))

$(info an info message)

$(warning a warning message)

#$(error an error message)

all: foo != date
all:
	echo $(foo)
