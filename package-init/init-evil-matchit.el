(use-package 'evil-matchit
  :install t
  :requires 'evil

  :config
  (progn
    (global-evil-matchit-mode 1)
    (define-key evil-normal-state-map (kbd "go") 'evilmi-jump-items)))
