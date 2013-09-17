GIT_LS_COMMAND= git ls-files | grep -v -e Makefile
GIT_FILES=      $(shell $(GIT_LS_COMMAND))   # GNU Make compatible
GIT_FILES!=     $(GIT_LS_COMMAND)            # BSD Make compatible

FILES?=         $(GIT_FILES)
CURDIR?=        $(.CURDIR)                   # BSD Make compatibility

COMMAND?=        ln
INSTRUCT=

ifeq ($(shell uname -s), Darwin)
	DEST=$(HOME)/Library/Fonts
else
	DEST=$(HOME)/.fonts
# I should automate this later
	INSTRUCT="You must run 'sudo fc-cache -f -v' in ~/.fonts to install"
endif

.PHONY: all
all:
	@echo Usage:
	@echo make install - Run default command set in the Makefile \(default is to symlink\)

.PHONY: install uninstall $(FILES) %.uninstall
install: $(FILES)
uninstall: $(FILES:=.uninstall)

$(FILES):
	@echo $(DEST)/$@
	@if test ! -d `dirname "$(DEST)/$@"`; then \
		mkdir -p `dirname "$(DEST)/$@"`; \
	fi
	@if test -e "$(DEST)/$@"; then \
		mv "$(DEST)/$@" "$(DEST)/${@:=.bak}"; \
	fi
	@$(COMMAND) "$(CURDIR)/$@" "$(DEST)/$@"
	@echo $(INSTRUCT)

%.uninstall:
	@echo Reverting $(DEST)/${@:.uninstall=}
	@if test -e "$(DEST)/${@:.uninstall=.bak}"; then \
		mv "$(DEST)/${@:.uninstall=.bak}" "$(DEST)/${@:.uninstall=}"; \
	fi
