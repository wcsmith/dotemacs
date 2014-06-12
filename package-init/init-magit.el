(use-package 'magit
  :install t

  :config
  (progn
    (define-key magit-diff-mode-map (kbd "k") 'magit-goto-previous-section)
    (define-key magit-diff-mode-map (kbd "j") 'magit-goto-next-section)
    (define-key magit-status-mode-map (kbd "k") 'magit-goto-previous-section)
    (define-key magit-status-mode-map (kbd "j") 'magit-goto-next-section)
    (define-key magit-mode-map (kbd "K") 'magit-discard-item)
    (define-key magit-mode-map (kbd ":") 'evil-ex)
    (define-key magit-mode-map (kbd ";") 'magit-git-command)))
