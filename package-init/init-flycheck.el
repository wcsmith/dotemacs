(require 'flycheck)

(setq flycheck-check-syntax-automatically '(save mode-enabled))

(add-hook 'c-mode-common-hook '(lambda () (flycheck-mode)))
(add-hook 'python-mode-hook '(lambda () (flycheck-mode)))
(add-hook 'cperl-mode-hook '(lambda () (flycheck-mode)))
