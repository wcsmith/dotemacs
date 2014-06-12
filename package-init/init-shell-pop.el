(use-package 'shell-pop
  :install t

  :config
  (progn
    (setq shell-pop-internal-mode "ansi-term")
    (setq shell-pop-internal-mode-func
	  (lambda () (ansi-term (getenv "SHELL"))))
    (setq shell-pop-internal-mode-buffer "*ansi-term*")
    (setq shell-pop-window-height 40)
    (setq shell-pop-autocd-to-working-dir nil)

    ;; ipython
    (defun shell-pop-special (shell-cmd)
      (interactive)
      (let ((shell-pop-internal-mode-func (lambda () (ansi-term shell-cmd))))
	(shell-pop 11)))))
