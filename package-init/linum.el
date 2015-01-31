(use-package 'linum
  :config
  (progn
    (setq linum-format "%3d ")
    (global-linum-mode 1)
    (hook 'term-mode-hook (linum-mode 0))))
