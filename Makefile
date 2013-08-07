GIT_LS_COMMAND= git ls-files | grep -v -e Makefile | grep -v -e README
GIT_FILES=      $(shell $(GIT_LS_COMMAND))   # GNU Make compatible
GIT_FILES!=     $(GIT_LS_COMMAND)            # BSD Make compatible

FILES?=         $(GIT_FILES)
CURDIR?=        $(.CURDIR)                   # BSD Make compatibility

COMMAND?=       ln -sf
DEST?=          $(HOME)

.PHONY: all
all:
	@echo Usage:
	@echo make install - Run default command set in the Makefile \(default is to symlink\)

.PHONY: install uninstall $(FILES) $(UNFILES)
install: $(FILES)
uninstall: $(FILES:=.uninstall)

$(FILES):
	@echo Installing $(DEST)/$@
	@if test ! -d `dirname "$(DEST)/$@"`; then \
		mkdir -p `dirname "$(DEST)/$@"`; \
	fi
	@if test -e "$(DEST)/$@"; then \
		mv "$(DEST)/$@" "$(DEST)/${@:=.orig}"; \
	fi
	@$(COMMAND) "$(CURDIR)/$@" "$(DEST)/$@"

%.uninstall:
	@echo Reverting $(DEST)/$@
	@if test -e "$(DEST)/$@"; then \
		rm "$(DEST)/$@"; \
	fi
	@if test -e "$(DEST)/${@:.uninstall=.orig}"; then \
		mv "$(DEST)/${@:.uninstall=.orig}" "$(DEST)/${@:.uninstall=}"; \
	fi
