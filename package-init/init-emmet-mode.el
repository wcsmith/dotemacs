(use-package 'emmet-mode
  :install t
  :defer t

  :init
  (hook '(sgml-mode-hook
	  css-mode-hook)
    (emmet-mode 1))

  :config
  (progn
    (setq emmet-move-cursor-between-quotes t)
    (hook 'emmet-after-hook
      (local-set-key (kbd "M-/") 'emmet-expand-yas))))
