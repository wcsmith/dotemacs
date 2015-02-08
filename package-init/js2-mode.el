(use-package 'js2-mode
  :install t

  :init
  (progn
    (setq js2-mode-version emacs-major-version)
    (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))))
