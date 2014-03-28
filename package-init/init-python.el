(defun my-python-mode-hook ()
  ;; compile
  (setq python-check-command "pyflakes")
  (setq compile-command "pyflakes *")

  ;; bindings
  (define-key python-mode-map "\r" 'newline-and-indent)
  (define-key python-mode-map "\M-i" 'indent-according-to-mode)
  (after 'shell-pop (define-key python-mode-map (kbd "<f11>")
		      '(lambda () (interactive) (shell-pop-special "ipython")))))
(add-hook 'python-mode-hook 'my-python-mode-hook)
