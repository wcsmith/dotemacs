;; no blink
(blink-cursor-mode -1)

;; no tabs
(setq tab-width 4)
(setq-default indent-tabs-mode nil)

;; cleanup whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

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

;; unique buffer names
(toggle-uniquify-buffer-names)

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
