(defun my-jedi-mode-hook ()
  ;; TODO: add check for ipython and dependencies
  (jedi:setup)
  (setq jedi:tooltip-method nil)
  (setq jedi:get-in-function-call-delay 0)
  (define-key python-mode-map (kbd "M-.") 'jedi:goto-definition)
  (define-key python-mode-map (kbd "M-*") 'jedi:goto-definition-pop-marker))

(add-hook 'python-mode-hook 'my-jedi-mode-hook)
