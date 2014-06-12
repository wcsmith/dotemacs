(use-package 'js2-mode
  :install t
  :defer t

  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))
