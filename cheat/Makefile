COMMAND?=       ln -sf
DEST?=          $(HOME)
NAME?=		.cheat
CURDIR?=        $(.CURDIR)                   # BSD Make compatibility

.PHONY: all
all:
	@echo Usage:
	@echo make install - Run default command set in the Makefile \(default is to symlink\)

.PHONY: install uninstall

# Just symlink the whole folder
install:
	@echo $(DEST)/$(NAME)
	@if test -e "$(DEST)/$(NAME)"; then \
		mv "$(DEST)/$(NAME)" "$(DEST)/${NAME:=.bak}"; \
	fi
	@$(COMMAND) "$(CURDIR)" "$(DEST)/$(NAME)"

uninstall: $(FILES:=.uninstall)
	@echo Reverting $(DEST)/$(NAME)
	@if test -e "$(DEST)/${NAME:=.bak}"; then \
		mv "$(DEST)/${NAME:=.bak}" "$(DEST)/$(NAME)"; \
	fi
