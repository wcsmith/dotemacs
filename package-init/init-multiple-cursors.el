(use-package 'multiple-cursors
  :install t

  :config
  (progn
    (defvar my-mc-evil-previous-state nil)

    (defun my-mc-evil-switch-to-emacs-state ()
      (when (and (bound-and-true-p evil-mode)
		 (not (memq evil-state '(emacs))))
	(setq my-mc-evil-previous-state evil-state)
	(evil-emacs-state 1)))

    (defun my-mc-evil-back-to-previous-state ()
      (when my-mc-evil-previous-state
	(unwind-protect
	    (case my-mc-evil-previous-state
	      ((normal visual) (evil-force-normal-state))
	      (t (message "Don't know how to handle previous state: %S"
			  my-mc-evil-previous-state)))
	  (setq my-mc-evil-previous-state nil))))

    (add-hook 'multiple-cursors-mode-enabled-hook
	      'my-mc-evil-switch-to-emacs-state)
    (add-hook 'multiple-cursors-mode-disabled-hook
	      'my-mc-evil-back-to-previous-state)

    (evil-global-set-key 'normal (kbd "M-n") 'mc/mark-next-like-this)
    (evil-global-set-key 'visual (kbd "M-n") 'mc/mark-next-like-this)
    (evil-global-set-key 'visual (kbd "M-p") 'mc/mark-previous-like-this)
    (evil-global-set-key 'visual (kbd "M-m") 'mc/mark-all-dwim)
    (define-key mc/keymap (kbd "M-n") 'mc/mark-next-like-this)
    (define-key mc/keymap (kbd "M-p") 'mc/mark-previous-like-this)
    (define-key mc/keymap (kbd "M-m") 'mc/mark-all-dwim)
    (define-key mc/keymap [escape] 'mc/keyboard-quit)))
