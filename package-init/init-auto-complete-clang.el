(require 'auto-complete-clang)

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

(defun setup-ac-clang ()
  (setq ac-sources '(ac-source-clang))
  (setq-local ac-auto-start t)
  (setq-local ac-auto-show-menu t))

(add-hook 'c++-mode-hook 'setup-ac-clang)
(add-hook 'c-mode-hook 'setup-ac-clang)
