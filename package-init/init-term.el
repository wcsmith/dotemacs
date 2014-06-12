(hook 'term-mode-hook
  (set (make-local-variable 'global-hl-line-mode) nil))

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

(defun my-ido-insert-filename ()
  (interactive)
  (let ((ido-report-no-match nil)
	(term (if (get-buffer-process (current-buffer))
		  (get-buffer-process (current-buffer))
		(if (and (boundp 'shell-pop-last-shell-buffer-index)
			 (shell-pop--shell-buffer-name shell-pop-last-shell-buffer-index))
		    (get-buffer-process (shell-pop--shell-buffer-name
						shell-pop-last-shell-buffer-index))
		  (progn (term shell-file-name))))))
    (term-send-string term
		      (file-relative-name (ido-read-file-name "Change to: " nil nil t)))))
