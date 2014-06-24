Paracas
==========

bootstraps your developer arsenal

- if OSX:
  - [homebrew](http://brew.sh/) with [cask](http://caskroom.io/)
  - fundamental OSX apps: alfred, iTerm2, etc. check [/brew/Brewfile](brew/Brewfile))
- [ansible](http://www.ansible.com)
- [atom](http://atom.io/), with some fundamental packages (check [/atom/AtomPackageFile](atom/AtomPackageFile))
- [oh my zsh](http://ohmyz.sh/)

First-time setup:
``` sh
  # first-time setup
  git clone https://github.com/benjamine/paracas.git
  cd paracas
  make

  # or get only specific sections (check Makefile):
  make git
```
And to get updates:
``` sh
  git pull && make
```

Note: scripts are idempotent and "re-run efficient", so feel free to run this as often as desired.
