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
(setq ac-default-sources
      '(ac-source-yasnippet
	ac-source-dictionary))
(setq-default ac-sources ac-default-sources)

;; emacs lisp
(setq ac-emacs-lisp-sources
      (append '(ac-source-functions
		ac-source-symbols
		ac-source-variables)
	      ac-default-sources))

(add-hook 'emacs-lisp-mode-hook
	  '(lambda () (setq ac-sources ac-emacs-lisp-sources)))

;; c mode
(setq ac-c-common-sources
      (append '()
	      ac-default-sources))

(add-hook 'c-mode-common-hook
	  '(lambda () (setq ac-sources ac-c-common-sources)))

;; python
(setq ac-python-sources
      (append '(ac-source-jedi-direct)
	      ac-default-sources))
(after 'jedi
  (add-to-list 'ac-python-sources 'ac-source-jedi-direct))

(add-hook 'c-mode-common-hook
	  '(lambda () (setq ac-sources ac-python-sources)))


;; GLOBAL MODE
(global-auto-complete-mode t)
