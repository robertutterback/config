# User Configuration #


Version-controlled storage and installation of user configuration
files.

The current Makefile installation process comes from
[here](http://ostanin.org/blog/2012/01/25/managing-config-files-with-git/).

Currently seems to work for OSX and Linux (Ubuntu), though not
thoroughly tested.

## TODO ##

* Cleanup/solidfy emacs configuration.
 * Use flycheck instead of flymake.
 * latex-preview-pane, auctex packages.
 * Setup autocomplete (and in general a better programming environment).
* I'd like a weekly summary script that uses my org-mode setup
 * This is better suited for a separate project, rather than contained here.
 * Provides statistics on the previous week
 * Provides information about the upcoming week
 * Ideally, this will include:
  * All financial information
  * Agenda information
  * Task information/reports (how long I spent doing what)
  * Reminders about large goals
* Archiving commands/scripts
 * Org-mode works /okay/ for repeated commands, but it's annoying that
   it just forms a huge list of when the task was marked done.
 * It would be helpful to have a command which, run periodically,
   culls from that list tasks completed longer than a month ago.
 * The full list should still be kept, but in a separate file.
 * This way it doesn't clog anything up, but I can still run
   monthly/yearly reports.
 * Perhaps there's already an org-mode way of doing something similar,
   but I haven't found it yet.
* Support for general keyboard shortcuts, including tiling window
  managers.
 * Slate for OSX?
 * Either i3 or xmonad for Linux.
 * bug.n for Windows? This worked fine for a day, then got really buggy on my work (Win7) laptop.
* Consider using GNU Stow instead of a set of Makefiles.
 * PRO: Seems cleaner
 * PRO: Less debugging makefiles
 * CON: Have to install Stow on each machine (could have git submodule
   of Stow source)
 * CON: Less flexibility? Sometimes I may actually want to copy files,
   not just symlink.
* Increase portability
 1. Better cygwin config + powershell.
