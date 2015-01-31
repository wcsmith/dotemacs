(use-package 'yasnippet
  :install t

  :config
  (progn
    (after 'auto-complete
      (setq-default ac-sources (cons 'ac-source-yasnippet ac-sources)))

    (setq yas/root-directory (expand-file-name (concat user-emacs-directory "snippets/")))
    (yas/load-directory yas/root-directory)

    (setq yas/prompt-functions '(yas/dropdown-prompt))
    (setq yas-triggers-in-field nil)

    (define-key yas-minor-mode-map (kbd "M-/") 'yas-expand)

    (define-key yas-minor-mode-map [(tab)] nil)

    (yas-global-mode 1)))
