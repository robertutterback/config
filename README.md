User Configuration
==================

Version-controlled storage and installation of user configuration files, mostly dotfiles.

The current Makefile installation process comes from [here](http://ostanin.org/blog/2012/01/25/managing-config-files-with-git/).

Currently seems to work for OSX and Linux (Ubuntu), though not thoroughly tested.

TODO
----

* Consider using GNU Stow instead of a set of Makefiles.
 * PRO: Seems cleaner
 * PRO: Less debugging makefiles
 * CON: Have to install Stow on each machine (could have git submodule of Stow source)
 * CON: Less flexibility? Sometimes I may actually want to copy files, not just symlink.
* Increase portability
 1. Support for Cygwin would be nice.
