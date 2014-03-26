(add-hook 'term-mode-hook '(lambda() (set (make-local-variable 'global-hl-line-mode) nil)))

(defun my-term-cd (term dir)
  (term-send-string term (format "\C-ucd %s\n" dir)))

(defun my-ido-cd ()
  (interactive)
  (let ((ido-report-no-match nil)
	(term (if (get-buffer-process (current-buffer))
		  (get-buffer-process (current-buffer))
		(if (and (boundp 'shell-pop-last-shell-buffer-index)
			 (shell-pop--shell-buffer-name shell-pop-last-shell-buffer-index))
		    (get-buffer-process (shell-pop--shell-buffer-name
						shell-pop-last-shell-buffer-index))
		  (progn (term shell-file-name))))))
    (my-term-cd term (ido-read-directory-name "Change to: " nil nil t))))
