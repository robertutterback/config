GIT_DIR_COMMAND= ./gitdirs.sh
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
