;; key-bindings.el

;; GLOBAL

;; aborts
(global-set-key (kbd "M-g") 'abort-recursive-edit)

;; scrolling
(global-set-key (kbd "M-;") 'recenter-top-bottom)
(global-set-key (kbd "M-K") 'scroll-down)
(global-set-key (kbd "M-J") 'scroll-up)

;; compilation
(global-set-key (kbd "M-k") 'previous-error)
(global-set-key (kbd "M-j") 'next-error)

;; quit
(global-set-key (kbd "M-q") 'abort-recursive-edit)

;; newline
(global-set-key (kbd "RET") 'newline-and-indent)

;; tab
(global-set-key (kbd "TAB") 'my-jump-line)

;; shell-pop
(after 'shell-pop
  (global-set-key (kbd "<f12>") 'shell-pop)
  (global-set-key (kbd "<f11>") '(lambda () (interactive) (shell-pop 11))))

;; smex
(after 'smex
  (global-set-key (kbd "M-x") 'smex))


;; FAST-MAP

;; def
(define-prefix-command 'fast-map)
(global-set-key (kbd "M-c") 'fast-map)

;; windows
(define-key fast-map "!" 'delete-other-windows)
(define-key fast-map "0" 'delete-window)
(define-key fast-map "1" 'delete-other-windows-vertically)
(define-key fast-map "2" 'split-window-vertically)
(define-key fast-map "3" 'split-window-horizontally)
(define-key fast-map (kbd "M-0") 'delete-window)
(define-key fast-map (kbd "M-1") 'delete-other-windows-vertically)
(define-key fast-map (kbd "M-2") 'split-window-vertically)
(define-key fast-map (kbd "M-3") 'split-window-horizontally)

;; files and buffers
(define-key fast-map "F" 'find-file)
(define-key fast-map "f" 'find-file)
(define-key fast-map "B" 'switch-to-buffer)
(define-key fast-map "b" 'switch-to-buffer)
(define-key fast-map "K" 'kill-buffer)
(define-key fast-map "k" 'kill-this-buffer)
(define-key fast-map "s" 'save-buffer)
(define-key fast-map "d" 'dired)

;; projectile
(after 'projectile
  (define-key fast-map "p" 'projectile-switch-project)
  (define-key fast-map "B" 'projectile-switch-to-buffer)
  (define-key fast-map "f" '(lambda () (interactive)
			     (if (projectile-project-p)
				 (projectile-find-file)
			       (ido-find-file)))))

;; aborts
(define-key fast-map "g" 'abort-recursive-edit)
(define-key fast-map "q" 'abort-recursive-edit)

;; lisp
(define-key fast-map "e" 'eval-last-sexp)

;; winner
(after 'winner
  (define-key fast-map (kbd "M-j") 'winner-undo)
  (define-key fast-map "j" 'winner-undo)
  (define-key fast-map (kbd "M-l") 'winner-redo)
  (define-key fast-map "l" 'winner-redo))


;; KEY-CHORD
(after 'key-chord

  ;; extended commands/smex
  (key-chord-define-global "90" 'execute-extended-command)
  (after 'smex (key-chord-define-global "90" 'smex))

  ;; fast map
  (key-chord-define-global "mk" 'fast-map)

  ;; delete by word
  (key-chord-define-global "jk" 'backward-kill-word))


(provide 'keybindings)



(defun my-jump-line ()
  "If point is behind a quote, parenth, bracket, brace, or angle
 bracket, point jumps over it. Otherwise, point moves to the end of the line"
  (interactive)
  (if (eq nil (ignore-errors (yas-next-field)))
      (progn
	(indent-according-to-mode)
	(if (or 
	     (string= (string (following-char)) "\"")
	     (string= (string (following-char)) "'")
	     (string= (string (following-char)) ")")
	     (string= (string (following-char)) "]")
	     (string= (string (following-char)) ">")
	     (string= (string (following-char)) "}"))
	    (goto-char (+ 1 (point)))
	  (end-of-line)))))
