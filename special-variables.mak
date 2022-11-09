
foo/the-target: first-prereq second-prereq first-prereq | README.md
	$(info target = $@)
	$(info dirname of target = $(@D))
	$(info filename of target = $(@F))
	$(info first prereq = $<)
	$(info all prereqs, no dupes = $^)
	$(info all prereqs with dupes = $+)
	$(info prereqs newer than target = $?)
	$(info order-only prereqs = $|)



first-prereq:

second-prereq:
