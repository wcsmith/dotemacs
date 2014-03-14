(projectile-global-mode t)

(after 'ack-and-a-half
  (defun ack-or-projectile-ack ()
    (interactive)
    (if (projectile-project-p)
	(call-interactively 'projectile-ack)
      (call-interactively 'ack-and-a-half))))
