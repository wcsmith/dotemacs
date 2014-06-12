(use-package 'ac-js2
  :install t
  :defer t

  :init
  (hook 'js2-mode-hook
    (ac-js2-mode)))
