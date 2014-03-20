(require 'auto-complete-clang)

(defun setup-ac-clang ()
  (setq ac-sources '(ac-source-clang))
  (setq-local ac-auto-start t)
  (setq-local ac-auto-show-menu t))

(add-hook 'c++-mode-hook 'setup-ac-clang)
(add-hook 'c-mode-hook 'setup-ac-clang)
