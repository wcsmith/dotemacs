(require 'flycheck)

(add-hook 'c-mode-common-hook '(lambda () (flycheck-mode)))
(add-hook 'python-mode-hook '(lambda () (flycheck-mode)))
(add-hook 'cperl-mode-hook '(lambda () (flycheck-mode)))
