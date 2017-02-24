;; ==================================================================
;; File      : init-windows.el
;; Author    : Connor Smith
;; Date      : Apr 11 2012
;;
;; Provides utilities for window management.
;; ==================================================================

;; DELETE-OTHER-WINDOWS
;; ===========================================
(defun delete-other-windows-vertically-first ()
  "deletes other windows vertically if they exist; otherwise deletes
all other windows"
  (interactive)
  (let ((num-windows (length (window-list))))
    (progn (delete-other-windows-vertically)
	   (if (= num-windows (length (window-list)))
	       (delete-other-windows)))))

;; SWAPPING WINDOWS
;; ===========================================
(defun swap-buffer-to-primary-window ()
  "swaps the currently selected buffer with the buffer in the primary
  (first) window"
  (interactive)
  (let ((old-primary-buffer nil)
	(new-primary-buffer nil)
	(primary-window nil)
	(secondary-window nil))
    (progn (if (= (window-numbering-get-number) 1)
	       (progn (setq old-primary-buffer (current-buffer))
		      (setq primary-window (car (window-list)))
		      (select-window-by-number
		       (string-to-number
			(char-to-string (read-char-choice "Window number: "
							  '(?2 ?3)))))
	   	      (setq new-primary-buffer (current-buffer))
		      (setq secondary-window (car (window-list))))
	     (progn (setq new-primary-buffer (current-buffer))
		    (setq secondary-window (car (window-list)))
		    (select-window-by-number 1)
		    (setq old-primary-buffer (current-buffer))
		    (setq primary-window (car (window-list)))))
	   (set-window-buffer secondary-window old-primary-buffer)
	   (set-window-buffer primary-window new-primary-buffer)
	   (select-window-by-number 1))
    (recenter)))

(defun server-edit-or-kill-buffer ()
  "does server-edit or kill-this-buffer."
  (interactive)
  (if server-buffer-clients
      (server-edit)
    (kill-this-buffer)))

(defun server-edit-or-kill-buffer-after-save ()
  "does server-edit or kill-this-buffer after saving."
  (interactive)
  (save-buffer)
  (server-edit-or-kill-buffer))
