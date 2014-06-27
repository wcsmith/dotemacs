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
    (evil-add-hjkl-bindings dired-mode-map 'normal
      "." 'dired-up-directory
      "e" 'wdired-change-to-wdired-mode
      "?" 'evil-search-backward
      "n" 'evil-search-next
      "N" 'evil-search-previous
      "%" 'dired-mark-files-regexp))

  ;; other options
  (setq dired-dwim-target t))
