(use-package 'multi-term
  :install t

  :config
  (setq multi-term-program (case system-type (('gnu/linux (getenv "SHELL"))
					      ('windows-nt "/bin/bash")))))
