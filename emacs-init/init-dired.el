(after 'dired
  ;; refresh buffers
  (setq-default dired-auto-revert-buffer t)
  (setq global-auto-revert-non-file-buffers t)
  (setq auto-revert-verbose nil)

  ;; listing options
  (setq dired-use-ls-dired nil)
  (setq dired-listing-switches "-alh"))
