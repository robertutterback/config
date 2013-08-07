GIT_DIR_COMMAND= git ls-tree --name-only master | grep -v -e Makefile | grep -v -e README
GIT_DIRS= $(shell $(GIT_DIR_COMMAND))
GIT_DIRS!= $(GIT_DIR_COMMAND)

DIRS?= $(GIT_DIRS)
install: $(DIRS:=.install)
uninstall: $(DIRS:=.uninstall)

%.install:
	@echo Installing ${@:.install=}
	@cd ${@:.install=}; make install

%.uninstall:
	@echo Uninstalling ${@:.uninstall=}
	@cd ${@:.uninstall=}; make uninstall
