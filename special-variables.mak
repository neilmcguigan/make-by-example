
foo/the-target: first-prereq second-prereq first-prereq
	$(info target name = $@)
	$(info dirname part of target = $(@D))
	$(info filename part of target = $(@F))
	$(info first prereq name = $<)
	$(info all prereqs, no dupes = $^)
	$(info all prereqs with dupes = $+)
	$(info prereqs newer than target = $?)



first-prereq:

second-prereq: