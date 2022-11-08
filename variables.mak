simple := simple
recursive = recursive
conditional ?= conditional
substitution_reference := $(simple:e=ex)
name_of_simple := $($(simple))
from_shell != date +%s%N
from_shell_function := $(shell date)

appended = foo
appended += bar

undefined := undefined
undefine undefined

# cannot be set from cli:
override overridden = overridden

define multiline
i am
multi-line
endef

all:
	$(info simple=$(simple), origin=$(origin simple), flavor=$(flavor simple))

	$(info recursive=$(recursive), origin=$(origin recursive), flavor=$(flavor recursive))

	$(info conditional=$(conditional), origin=$(origin conditional), flavor=$(flavor conditional))

	$(info overridden=$(overridden), origin=$(origin overridden), flavor=$(flavor overridden))

	$(info from_shell=$(from_shell), origin=$(origin from_shell), flavor=$(flavor from_shell))

	$(info multiline=$(multiline), origin=$(origin multiline), flavor=$(flavor multiline))

	$(info undefined=$(undefined), origin=$(origin undefined), flavor=$(flavor undefined))

	$(eval at_rule_exec_time != date +%s%N)
	$(info $(at_rule_exec_time))
