(require 'ido)

(defun my-ido-setup ()
  (define-key ido-file-completion-map "+" 'ido-make-directory))
(add-hook 'ido-setup-hook 'my-ido-setup)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-virtual-buffers t)

(ido-mode t)
