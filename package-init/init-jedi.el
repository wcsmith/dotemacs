(use-package 'jedi
  :install t
  :defer t
  
  :init
  (hook 'python-mode-hook
    (jedi:setup)
    (setq jedi:tooltip-method nil)
    (setq jedi:get-in-function-call-delay 0)
    (setq jedi:complete-on-dot t)
    (define-key python-mode-map (kbd "M-.") 'jedi:goto-definition)
    (define-key python-mode-map (kbd "M-*") 'jedi:goto-definition-pop-marker)

    (setq-local ac-auto-show-menu t)
    (setq-local ac-auto-start t)))
