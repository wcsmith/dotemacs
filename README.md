#My .emacs.d

##Setup
Get it with:

    git clone --recursive https://github.com/wcsmith/dotemacs.git


## Organization

### Emacs initialization
- `init.el` - sets user environmental variables and `load-path`, defines load
  macros, and loads all other initializations and packages.
- `emacs-init/` - contains emacs initialization files to be loaded prior to
  package initialization.
- `.emacs-custom.el` - contains emacs customizations.
  
### Packages
Packages are stored in two directories:
- `vendor/` - contains manually installed third party packages.
- `elpa/` - contains packages installed automatically via the Emacs package
  manager.

Packages are configured
- `package-init/` - contains package initialization files.



- `snippets/` - contains user snippets for `yasnippet`

