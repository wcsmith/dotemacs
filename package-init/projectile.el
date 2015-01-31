(use-package 'projectile
  :install t

  :config
  (progn
    (projectile-global-mode 1)
    ;; eclipse projects
    (add-to-list 'projectile-project-root-files ".project")

    (after 'ack-and-a-half
      (defun ack-or-projectile-ack ()
	(interactive)
	(if (projectile-project-p)
	    (call-interactively 'projectile-ack)
	  (call-interactively 'ack-and-a-half))))))