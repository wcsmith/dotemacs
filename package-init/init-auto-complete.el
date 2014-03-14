(require 'auto-complete)
(require 'auto-complete-config)

;; behavior
(setq ac-show-menu-immediately-on-auto-complete t)
(setq ac-auto-show-menu nil)
(setq ac-auto-start nil)
(setq ac-dwim t)
(setq ac-delay 0)
(setq ac-disable-inline t)
(setq ac-candidate-menu-min 0)

;; fuzzy
(setq ac-use-fuzzy nil)
(after 'fuzzy (setq ac-use-fuzzy t))

;; maps
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-j" 'ac-next)
(define-key ac-menu-map "\C-k" 'ac-previous)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)
(define-key ac-menu-map "\t" 'ac-complete)
(define-key ac-menu-map "\r" 'ac-complete)
(define-key ac-mode-map (kbd "<backtab>") 'auto-complete)


;; SOURCES

;; default
(setq-default ac-sources '())

;; set function
(defun set-ac-sources (hook sources)
  (add-hook hook `(lambda () (setq ac-sources ,(append ac-sources sources)))))

(setq ac-emacs-lisp-mode-sources
      '(ac-source-functions
        ac-source-symbols
        ac-source-variables))

(set-ac-sources 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-sources)

(set-ac-sources 'c-mode-hook
		'(ac-source-my-semantic
                  ac-source-dictionary))

(set-ac-sources 'LaTeX-mode-hook
		'(ac-source-auctex-macros
                  ac-source-auctex-labels
                  ac-source-auctex-symbols
                  ac-source-auctex-environments))


;; mode
(global-auto-complete-mode t)
