(after 'tramp
  (setq tramp-default-method "ssh")
  (setq tramp-mode t)
  (tramp-set-completion-function
   "ssh"
   '((tramp-parse-sconfig "/etc/ssh_config")
     (tramp-parse-sconfig "~/.ssh/config"))))
