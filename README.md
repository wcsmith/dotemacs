#My .emacs.d

##Setup
Get it with:

    git clone --recursive https://github.com/wcsmith/dotemacs.git


## Organization

### Emacs initialization
- `init.el` - sets user environmental variables and `load-path`, defines load
  macros, and loads all other initializations and packages.
- `../local-init/` - contains local initialization files to be loaded prior to
  emacs initialization.
- `emacs-init/` - contains emacs initialization files to be loaded prior to
  package initialization.
- `.emacs-custom.el` - contains emacs customizations.

### Packages
- `vendor/` - contains manually installed third party packages.
- `elpa/` - contains packages automatically installed via the Emacs package
  manager.
- `package-init/` - contains all package initialization files.

### Snippets
- `snippets/` - contains user snippets for `yasnippet`