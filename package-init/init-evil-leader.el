(require 'evil-leader)
(global-evil-leader-mode t)

;; override vanilla evil
(setq evil-leader/in-all-states t)
(setq evil-leader/non-normal-prefix "")

;; insert 
(evil-leader/set-key "\\" (lambda () (interactive) (insert-char ?\\)))

;; compile (c)
(evil-leader/set-key "c c" 'recompile)
(evil-leader/set-key "c C" 'compile)
(evil-leader/set-key "c n" 'next-error)
(evil-leader/set-key "c p" 'previous-error)

(after 'eclim
  (evil-leader/set-key-for-mode 'java-mode "c c" 'eclim-problems-compilation-buffer)
  (evil-leader/set-key-for-mode 'java-mode "c f" 'eclim-problems-correct))

;; gdb (g)
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

;; navigating source code (t)
(evil-leader/set-key "g h" 'ff-find-other-file)
(evil-leader/set-key "g t" 'find-tag)

(after 'eclim
  (evil-leader/set-key-for-mode 'java-mode "j d" 'eclim-java-find-references)
  (evil-leader/set-key-for-mode 'java-mode "g d" 'eclim-java-show-documentation-for-current-element))

;; java/eclim
(after 'eclim
  (evil-leader/set-key-for-mode 'java-mode "j o" 'eclim-java-import-organize)
  (evil-leader/set-key-for-mode 'java-mode "j i" 'eclim-java-implement)
  (evil-leader/set-key-for-mode 'java-mode "j h" 'eclim-java-hierarchy)
  (evil-leader/set-key-for-mode 'java-mode "j t" 'eclim-java-call-hierarchy)
  (evil-leader/set-key-for-mode 'java-mode "j c" 'eclim-java-constructor)
  (evil-leader/set-key-for-mode 'java-mode "j g" 'eclim-java-generate-getter-and-setter)
  (evil-leader/set-key-for-mode 'java-mode "j r" 'eclim-java-refactor-rename-symbol-at-point)
  (evil-leader/set-key-for-mode 'java-mode "j d" 'eclim-java-doc-comment))
