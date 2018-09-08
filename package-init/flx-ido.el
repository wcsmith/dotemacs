(use-package 'flx-ido
  :requires '(flx ido)

  :config
  (progn
    (flx-ido-mode 1)
    (setq ido-enable-flex-matching t)
    (setq ido-use-faces nil)))
