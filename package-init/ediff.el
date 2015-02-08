(use-package 'ediff
  :config
  (progn
    (setq ediff-merge-split-window-function 'split-window-horizontally)
    (setq ediff-split-window-function 'split-window-horizontally)
    (setq ediff-window-setup-function 'ediff-setup-windows-plain)
    (hook 'ediff-keymap-setup-hook
      (define-key ediff-mode-map (kbd "j") 'ediff-next-difference)
      (define-key ediff-mode-map (kbd "k") 'ediff-previous-difference))))
