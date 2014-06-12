(use-package 'flycheck
  :install t
  :defer t

  :init
  (progn
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (hook '(c-mode-common-hook
	    python-mode-hook
	    cperl-mode-hook)
      (flycheck-mode))))
