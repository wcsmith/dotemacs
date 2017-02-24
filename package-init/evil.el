(use-package 'evil
  :install t

  :config
  (progn
    (evil-mode 1)

    (setq evil-search-module 'evil-search)

    ;; default state for modes
    (add-to-list 'evil-insert-state-modes 'git-commit-mode)
    (setq evil-insert-state-modes (remove 'gud-mode evil-insert-state-modes))
    (add-to-list 'evil-emacs-state-modes 'gud-mode)
    (setq evil-emacs-state-modes (remove 'Custom-mode evil-emacs-state-modes))
    (add-to-list 'evil-normal-state-modes 'Custom-mode)
    (setq evil-insert-state-modes (remove 'term-mode evil-insert-state-modes))
    (add-to-list 'evil-emacs-state-modes 'term-mode)
    (add-to-list 'evil-normal-state-modes 'wdired-mode)

    ;; move by visual line
    (define-key evil-normal-state-map "j" 'evil-next-visual-line)
    (define-key evil-normal-state-map "k" 'evil-previous-visual-line)

    ;; single press escape
    (define-key evil-normal-state-map [escape] 'keyboard-quit)
    (define-key evil-visual-state-map [escape] 'keyboard-quit)
    (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
    (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

    ;; unbind
    (define-key evil-insert-state-map [remap newline] 'nil)
    (define-key evil-insert-state-map [remap newline-and-indent] 'nil)
    (define-key evil-insert-state-map (kbd "RET") 'nil)
    (define-key evil-insert-state-map (kbd "M-.") 'nil)
    (define-key evil-normal-state-map (kbd "M-.") 'nil)

    ;; :wq and :q
    (evil-ex-define-cmd "q[uit]" 'server-edit-or-kill-buffer)
    (evil-ex-define-cmd "wq" 'server-edit-or-kill-buffer-after-save)

    ;; jump
    (define-key evil-motion-state-map (kbd "go") 'evil-jump-item)))
