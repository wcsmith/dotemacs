(use-package 'autopair
  :install t

  :config
  (progn
    (autopair-global-mode 1)
    (hook 'term-mode-hook
      (autopair-mode 0))))
