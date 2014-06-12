(require 'dired)

(after 'dired
  ;; refresh buffers
  (setq-default dired-auto-revert-buffer t)
  (setq global-auto-revert-non-file-buffers t)
  (setq auto-revert-verbose nil)

  ;; listing options
  (setq dired-use-ls-dired nil)
  (setq dired-listing-switches "-alh")

  (after 'evil
    (evil-define-key 'normal dired-mode-map "." 'dired-up-directory)
    (evil-define-key 'normal dired-mode-map "%" 'dired-mark-files-regexp)
    (evil-define-key 'normal dired-mode-map "e" 'wdired-change-to-wdired-mode)
    (evil-define-key 'normal dired-mode-map "?" 'evil-search-backward)
    (evil-define-key 'normal dired-mode-map "n" 'evil-search-next)
    (evil-define-key 'normal dired-mode-map "N" 'evil-search-previous))

  ;; other options
  (setq dired-dwim-target t))
