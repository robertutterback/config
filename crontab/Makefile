FILES = all.jobs
CRONFILE = crontab
INFO =

ifeq ($(shell uname -s),Darwin)
	INFO += "OS X (Darwin) detected."
	FILES += osx.jobs
endif
#else
# check here for hostname? Or otherwise determine if hosted or not

all: cron

cron:
	@echo $(INFO)
	@if test -e "$(CRONFILE)"; then \
	 	echo "Moving old crontab file."; \
		mv $(CRONFILE) $(CRONFILE:=.bak; \
	fi
	@for f in $(FILES); do \
		echo "Adding $$f to crontab." ; \
		cat $$f >> $(CRONFILE); \
	done
	@crontab -l > systemCrontab.old
	@echo "Old system crontab saved in systemCrontab.old"
	@echo "Setting crontab file."
	@echo	crontab -f $(CRONFILE)

install:
	@echo NOT installing crontab. In development.

uninstall:
	@echo No uninstall necessary.
