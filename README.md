# User Configuration

Version-controlled storage and installation of user configuration
files.

The current Makefile installation process comes from
[here](http://ostanin.org/blog/2012/01/25/managing-config-files-with-git/).

Currently seems to work for OSX and Linux (Ubuntu), though not
thoroughly tested.

## TODO
* Fix my shell configuration
 * Currently, .zshrc and .bashrc load .profile
 * But .profile should be for login terminals, for things that need to happen just once.
 * Most of the user config per shell should be in the .rc files
 * .profile should instead source the correct .rc file (?)
 * Terminals will automatically call .bashrc/.zshrc if the shell is interactive but not login.
* Cleanup/solidfy emacs configuration.
 * Use flycheck instead of flymake.
 * latex-preview-pane, auctex packages.
 * Setup autocomplete (and in general a better programming environment).
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
* Unify my window configuration shortcuts
  * i3 for Linux, ? for OSX
