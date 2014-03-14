(defun my-ediff-keymap-setup-hook ()
  (define-key 'ediff-mode-map (kbd "k") 'ediff-previous-difference)
  (define-key 'ediff-mode-map (kbd "j") 'ediff-next-difference))
(add-hook 'ediff-keymap-setup-hook 'my-ediff-keymap-setup-hook)
