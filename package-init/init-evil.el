(evil-mode 1)

;; move by visual line
(define-key evil-normal-state-map "j" 'evil-next-visual-line)
(define-key evil-normal-state-map "k" 'evil-previous-visual-line)

;; unbind
(define-key evil-insert-state-map [remap newline] 'nil)
(define-key evil-insert-state-map [remap newline-and-indent] 'nil)
(define-key evil-insert-state-map (kbd "RET") 'nil)
(define-key evil-insert-state-map (kbd "M-.") 'nil)
(define-key evil-normal-state-map (kbd "M-.") 'nil)

;; jump
(define-key evil-motion-state-map (kbd "go") 'evil-jump-item)

;; move in insert
(define-key evil-insert-state-map (kbd "M-l") 'forward-char)
(define-key evil-insert-state-map (kbd "M-j") 'backward-char)
