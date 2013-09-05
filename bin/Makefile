GIT_LS_COMMAND= git ls-files | grep -v -e Makefile
GIT_FILES=      $(shell $(GIT_LS_COMMAND))   # GNU Make compatible
GIT_FILES!=     $(GIT_LS_COMMAND)            # BSD Make compatible

FILES?=         $(GIT_FILES)
CURDIR?=        $(.CURDIR)                   # BSD Make compatibility

COMMAND?=       ln -sf
DEST?=          $(HOME)/bin

.PHONY: all
all:
	@echo Usage:
	@echo make install - Run default command set in the Makefile \(default is to symlink\)

.PHONY: install uninstall $(FILES) %.uninstall
install: $(FILES)
uninstall: $(FILES:=.uninstall)

$(FILES):
	@echo $(DEST)/$@
	@if test -e "$(DEST)/$@"; then \
		mv "$(DEST)/$@" "$(DEST)/${@:=.bak}"; \
	fi
	@$(COMMAND) "$(CURDIR)/$@" "$(DEST)/$@"

%.uninstall:
	@echo Reverting $(DEST)/${@:.uninstall=}
	@if test -e "$(DEST)/${@:.uninstall=.bak}"; then \
		mv "$(DEST)/${@:.uninstall=.bak}" "$(DEST)/${@:.uninstall=}"; \
	fi
