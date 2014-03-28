(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)

(add-hook 'emmet-after-hook
	  '(lambda () (local-set-key (kbd "M-/") 'emmet-expand-yas)))

(after 'emmet-mode
  (setq emmet-move-cursor-between-quotes t))
