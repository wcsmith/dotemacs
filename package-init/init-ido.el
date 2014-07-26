(use-package 'ido
  :config
  (progn
    (setq ido-enable-flex-matching t)
    (setq ido-everywhere t)
    (setq ido-use-virtual-buffers t)
    (setq ido-auto-merge-delay-time nil)
    (setq ido-auto-merge-work-directories-length -1)
    (setq ido-show-dot-for-dired t)

    (hook 'ido-setup-hook
      (define-key ido-file-completion-map "+" 'ido-make-directory)
      (define-key ido-file-completion-map "\M-k" 'ido-prev-match)
      (define-key ido-file-completion-map "\M-d" 'ido-delete-file-at-head)
      (define-key ido-buffer-completion-map "\M-d" 'ido-kill-buffer-at-head)
      (define-key ido-common-completion-map "\M-j" 'ido-next-match)
      (define-key ido-common-completion-map "\M-k" 'ido-prev-match)
      (define-key ido-common-completion-map (kbd "<M-return>") 'ido-select-text)
      (define-key minibuffer-local-map "\M-j" 'ido-next-match)
      (define-key minibuffer-local-map "\M-k" 'ido-prev-match)
      (define-key minibuffer-local-map (kbd "<M-return>") 'ido-select-text))

    (ido-mode t)))
