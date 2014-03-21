(defun my-jedi-mode-hook ()
  (jedi:setup)
  (setq jedi:tooltip-method nil)
  (setq jedi:get-in-function-call-delay 0)
  (define-key python-mode-map (kbd "M-.") 'jedi:goto-definition)
  (define-key python-mode-map (kbd "M-*") 'jedi:goto-definition-pop-marker)

  (setq ac-sources '(ac-source-jedi-direct))
  (setq-local ac-auto-show-menu t)
  (setq-local ac-auto-start t))

(add-hook 'python-mode-hook 'my-jedi-mode-hook)
