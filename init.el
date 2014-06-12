;;; init.el

;; REQUIRES

(require 'cl)
(require 'package)


;; ENVIRONMENT

(setq user-full-name "Connor Smith")
(setq user-mail-address "wconnorsmith@gmail.com")

(defvar user-home-directory
  (expand-file-name (concat user-emacs-directory "../"))
  "The user's home directory.")


;; LOADING MACROS/DEFUNS

(defun ensure-installed (package &optional load-immediately)
  "Ensures that FEATURE is installed."
  (unless (locate-library (symbol-name package))
    (when (not (package-installed-p package))
      (package-install package)))
  (when load-immediately
    (require package)))

(defmacro after (features &rest body)
  "Evaluates BODY after all FEATURES have loaded."
  (when (and (listp features)
	     (eq (car features) 'quote))
    (setq features (nth 1 features)))
  (when (not (listp features))
    (setq features (list features)))
  (if (= (length features) 1)
      `(eval-after-load ',(car features) '(progn ,@body))
    `(eval-after-load ',(car features) '(after ,(cdr features) ,@body))))

(defmacro* use-package (package &optional &key install requires defer init
				config)
  "Use a package."
  ;; allow either 'package or package
  (when (and (listp package)
	     (eq (car package) 'quote))
    (setq package (nth 1 package)))
  ;; install
  `(progn
     ,(when install
	`(ensure-installed (quote ,package)))
     ;; init and config
     ,(if (not requires)
	  `(progn 
	     ,init
	     ,(if defer
		  `(after ,package ,config)
		`(progn (require ',package) ,config)))
	`(after ,requires
	   ,init
	   ,(if defer
		`(after ,package ,config)
	      `(progn (require ',package) ,config))))))

(defmacro when-fbound (function &rest body)
  "Evaluates BODY if FUNCTION is bound."
  (declare (indent defun))
  `(when (fboundp ,function)
     ,@body))

(defmacro hook (hooks &rest body)
  "Hooks BODY onto HOOKS."
  (declare (indent defun))
  `(dolist (hook (if (not (listp ,hooks))
		     (list ,hooks)
		   ,hooks))
     (add-hook hook (lambda () ,@body))))

(defmacro ilambda (&rest body)
  "Generates an interactive lambda function with no arguments that evaluates
   BODY"
  (declare (indent defun))
  `(lambda () (interactive) ,@body))


;; INITIALIZE EMACS AND PACKAGES

;; load path
(add-to-list 'load-path user-emacs-directory)
(let ((default-directory (concat user-emacs-directory "vendor/")))
  (normal-top-level-add-subdirs-to-load-path))

;; add custom package sources
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; initialize package and refresh archive if necessary
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; load emacs init files
(progn
  (setq user-emacs-init-dir (concat user-emacs-directory "emacs-init/"))
  (when (file-exists-p user-emacs-init-dir)
    (dolist (l (directory-files user-emacs-init-dir nil "^[^#].*el$"))
      (load (concat user-emacs-init-dir l)))))

;; load package init files
(progn
  (setq user-package-init-dir (concat user-emacs-directory "package-init/"))
  (when (file-exists-p user-package-init-dir)
    (dolist (l (directory-files user-package-init-dir nil "^[^#].*el$"))
      (load (concat user-package-init-dir l)))))

;; load custom file
 (setq custom-file "~/.emacs.d/.emacs-custom.el")
 (load custom-file)
