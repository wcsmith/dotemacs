(require 'multi-term)

(setq multi-term-program (case system-type (('gnu/linux (getenv "SHELL"))
					    ('windows-nt "/bin/bash"))))
