(defalias 'g 'grep)
(defalias 'gf 'grep-find)
(defalias 'c 'compile)
(defalias 'd 'dired)
(defalias 'o 'occur)
(defalias 'eb 'eval-buffer)
(defalias 'ed 'eval-defun)

(after 'magit
  (defalias 'ms 'magit-status)
  (defalias 'ml 'magit-log))
