(use-package 'evil-leader
  :install t
  :requires 'evil

  :config
  (progn
    (global-evil-leader-mode t)

    ;; override vanilla evil
    (setq evil-leader/in-all-states t)
    (setq evil-leader/non-normal-prefix "")

    ;; insert 
    (evil-leader/set-key "\\" (lambda () (interactive) (insert-char ?\\)))

    ;; compile (c)
    (evil-leader/set-key "c c" 'recompile)
    (evil-leader/set-key "c C" 'compile)

    ;; gdb (d)
    (evil-leader/set-key "d g" 'gdb)
    (evil-leader/set-key "d w" 'gdb-restore-windows)
    (evil-leader/set-key "d c" '(lambda () (interactive) (gdb-select-window 'comint)))
    (evil-leader/set-key "d l" '(lambda () (interactive) (gdb-select-window 'locals)))
    (evil-leader/set-key "d r" '(lambda () (interactive) (gdb-select-window 'registers)))
    (evil-leader/set-key "d s" '(lambda () (interactive) (gdb-select-window 'source)))
    (evil-leader/set-key "d f" '(lambda () (interactive) (gdb-select-window 'stack)))
    (evil-leader/set-key "d b" '(lambda () (interactive) (gdb-select-window 'breakpoints)))
    (evil-leader/set-key "d t" '(lambda () (interactive) (gdb-select-window 'threads)))
    (evil-leader/set-key "d x" '(lambda () (interactive) (gdb-select-window 'source)
				  (delete-other-windows)))

    ;; find stuff (f)
    (after 'ack-and-a-half
      (evil-leader/set-key "f a" 'ack-and-a-half)
      (evil-leader/set-key "f A" 'ack-and-a-half)
      (after 'projectile (evil-leader/set-key "f a" 'ack-or-projectile-ack)))
    (evil-leader/set-key "f r" 'rgrep)
    (evil-leader/set-key "f n" 'find-name-dired)
    (evil-leader/set-key "f c" 'find-grep-dired)
    (evil-leader/set-key "f b" 'grep-buffers)

    ;; navigating source code (g)
    (evil-leader/set-key "g h" 'ff-find-other-file)
    (evil-leader/set-key "g t" 'find-tag)))
