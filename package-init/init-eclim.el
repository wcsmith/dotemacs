(defun eclim-setup ()
  (global-eclim-mode)
  (after 'evil
    (evil-define-key 'normal eclim-problems-mode-map (kbd "<RET>") 'eclim-problems-open-current)

(add-hook 'java-mode-hook '(lambda () (global-eclim-mode)))
