#My .emacs.d

##Setup
Get it with:

    git clone --recursive https://github.com/wcsmith/dotemacs.git


## Organization
- `init.el` - sets user environmental variables and loads all user initializations and packages.
- `emacs-init/` - contains emacs initialization files.
- `user-packages.el` - defines a list of packages to be auto-installed by `ELPA`.
- `package-init/` - contains package initialization files.
- `vendor/` - contains manually installed third party packages.
- `vendor-init/` - contains vendor initialization files.
- `.emacs-custom` - contains emacs customizations.
- `snippets/` - contains user snippets for `yasnippet`