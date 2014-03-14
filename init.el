;; COMMON LISP

(require 'cl)


;; ENVIRONMENT VARIABLES

(setq user-full-name "Connor Smith")
(setq user-mail-address "wconnorsmith@gmail.com")

(defvar user-home-directory
  (expand-file-name (concat user-emacs-directory "../"))
  "The user's home directory.")

(defvar user-workspace-directory
  (expand-file-name (concat user-home-directory "workspace/"))
  "The user's workspace directory.")


;; AFTER MACRO

(defmacro after (mode &rest body)
  "`eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))


;; INITIALIZE EMACS AND PACKAGES

(add-to-list 'load-path user-emacs-directory)

;; load emacs init files
(progn
  (setq user-emacs-init-dir (concat user-emacs-directory "emacs-init/"))
  (when (file-exists-p user-emacs-init-dir)
    (dolist (l (directory-files user-emacs-init-dir nil "^[^#].*el$"))
      (load (concat user-emacs-init-dir l)))))

;; install and initialize user packages
(require 'auto-package)
(load "user-packages")
(if (not (fboundp 'user-packages)) (defvar user-packages '()))
(autopkg-install-missing-packages user-packages)
(autopkg-initialize-packages user-packages)

;; load vendor packages
(let ((default-directory (concat user-emacs-directory "vendor/")))
  (normal-top-level-add-subdirs-to-load-path))
(progn
  (setq user-vendor-init-dir (concat user-emacs-directory "vendor-init/"))
  (when (file-exists-p user-vendor-init-dir)
    (dolist (l (directory-files user-vendor-init-dir nil "^[^#].*el$"))
      (load (concat user-vendor-init-dir l)))))

;; load custom file
(setq custom-file "~/.emacs.d/.emacs-custom.el")
(load custom-file)
