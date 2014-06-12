(use-package 'ggtags
  :install t

  :init
  (hook '(c-mode-common-hook
	  python-mode-hook
	  cperl-mode-hook)
    (ggtags-mode t))

  :config
  (setq ggtags-global-ignore-case t))
