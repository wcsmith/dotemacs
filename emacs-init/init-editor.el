;; no blink
(blink-cursor-mode -1)

;; no tabs
(setq tab-width 4
      indent-tabs-mode nil)

;; no backups
(setq make-backup-files nil)

;; tmp files
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; show column number
(setq column-number-mode t)

;; y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; delete selection
(delete-selection-mode t)

;; show parens
(show-paren-mode t)
