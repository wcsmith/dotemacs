(require 'ggtags)

(dolist (hook '(c-mode-common-hook
		python-mode-hook
		cperl-mode-hook))
  (add-hook hook '(lambda () (ggtags-mode t))))
