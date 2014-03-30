(require 'ggtags)

(setq ggtags-global-ignore-case t)

(dolist (hook '(c-mode-common-hook
		cperl-mode-hook))
  (add-hook hook '(lambda () (ggtags-mode t))))
