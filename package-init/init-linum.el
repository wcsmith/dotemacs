(require 'linum)

(setq linum-format "%3d ")
(global-linum-mode 1)

(add-hook 'term-mode-hook '(lambda () (linum-mode 0)))
