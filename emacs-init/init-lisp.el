;; lisp mode setup

(defun enable-newline-and-indent ()
  (local-set-key (kbd "RET") 'newline-and-indent)
  (local-set-key (kbd "M-.") 'find-function))
(add-hook 'emacs-lisp-mode-hook 'enable-newline-and-indent)
(add-hook 'lisp-mode-hook 'enable-newline-and-indent)
