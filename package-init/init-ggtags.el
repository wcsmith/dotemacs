(use-package 'ggtags
  :install t

  :init
  (hook '(c-mode-common-hook
	  cperl-mode-hook)
    (ggtags-mode t))

  :config
  (setq ggtags-global-ignore-case t))
