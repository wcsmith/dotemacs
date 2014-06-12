(use-package 'auto-complete-clang-async
  :requires 'auto-complete
  :defer t

  :config
  (progn
    (setq ac-clang-complete-executable
	  "~/.emacs.d/vendor/emacs-clang-complete-async/clang-complete")
    (setq clang-completion-supress-error 't)
    (setq ac-clang-flags
	  (mapcar (lambda (item)(concat "-I" item))
		  (split-string
		   "
/usr/lib/gcc/x86_64-redhat-linux/4.8.2/../../../../include/c++/4.8.2
/usr/lib/gcc/x86_64-redhat-linux/4.8.2/../../../../include/c++/4.8.2/x86_64-redhat-linux
/usr/lib/gcc/x86_64-redhat-linux/4.8.2/../../../../include/c++/4.8.2/backward
/usr/lib/gcc/x86_64-redhat-linux/4.8.2/include
/usr/local/include
/usr/include
"
		   )))

    (hook '(c-mode-hook
	    c++-mode-hook)
      (setq ac-sources '(ac-source-clang-async))
      (ac-clang-launch-completion-process))))
