(use-package 'package
  :config
  (after 'evil
	 (delq 'package-menu-mode evil-emacs-state-modes)
	 (evil-define-key 'normal package-menu-mode-map "U"
	   'package-menu-mark-upgrades)
	 (evil-define-key 'normal package-menu-mode-map "u"
	   'package-menu-mark-unmark)
	 (evil-define-key 'normal package-menu-mode-map "d"
	   'package-menu-mark-delete)
	 (evil-define-key 'normal package-menu-mode-map "i"
	   'package-menu-mark-install)
	 (evil-define-key 'normal package-menu-mode-map "x"
	   'package-menu-execute)))
