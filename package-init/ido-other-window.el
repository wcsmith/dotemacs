(use-package 'ido-other-window
  :requires ido

  :config
  (progn
    (defadvice ido-setup-completion-map (after ido-setup-completion-map-with-other-window-keys activate)
      (mapcar (lambda (map)
		(define-key map (kbd "M-o") 'ido-invoke-in-other-window)
		(define-key map (kbd "M-2") 'ido-invoke-in-vertical-split)
		(define-key map (kbd "M-3") 'ido-invoke-in-horizontal-split)
		(define-key map (kbd "M-4") 'ido-invoke-in-other-window)
		(define-key map (kbd "M-5") 'ido-invoke-in-new-frame))
	      (list ido-buffer-completion-map
		    ido-common-completion-map
		    ido-file-completion-map
		    ido-file-dir-completion-map)))))
