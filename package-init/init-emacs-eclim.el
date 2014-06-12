(use-package 'emacs-eclim
  :install t
  :defer t

  :init
  (hook 'java-mode-hook
    (require 'eclim)
    (require 'eclimd)
    (require 'ac-emacs-eclim-source)
    (setq eclim-autoupdate-problems nil)
    (global-eclim-mode 1)))
