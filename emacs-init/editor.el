;; no blink
(blink-cursor-mode -1)

;; no tabs
(setq tab-width 4)
(setq-default indent-tabs-mode nil)

;; no backups
(setq make-backup-files nil)

;; tmp files
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; show column number
(setq column-number-mode t)

;; fill at 80 chars with single spaces
(setq-default fill-column 80)
(setq sentence-end-double-space nil)

;; y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; delete selection
(delete-selection-mode t)

;; show parens
(show-paren-mode t)

;; unique buffer names
(toggle-uniquify-buffer-names)

;; revert buffers automatically
(global-auto-revert-mode)

;; ignore some alerts
(setq ring-bell-function
      (lambda ()
        (unless (memq this-command
                      '(isearch-abort
                        minibuffer-keyboard-quit
                        abort-recursive-edit
                        exit-minibuffer
                        evil-forward-char
                        evil-backward-char
                        keyboard-quit))
          (ding))))

;; always split windows vertically
(setq split-height-threshold nil)
(setq split-width-threshold 160)
