;; thanks to Zane Shelby for these clever functions

(require 'package)

;; add custom package sources
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(defun autopkg-install-missing-packages (user-packages)
  (interactive)
  (let ((not-installed (remove-if 'package-installed-p user-packages)))
    (when (and not-installed
               (y-or-n-p (format "There are %d packages to be installed. Install them? "
				 (length not-installed))))
      (package-refresh-contents)
      (dolist (package user-packages)
	(when (not (package-installed-p package))
	  (package-install package))))))

(defun autopkg-initialize-packages (user-packages)
  (interactive)
  (setq autopkg-package-init-dir (concat user-emacs-directory "package-init/"))
  (message (format "initializing packages from %s" autopkg-package-init-dir))
  (dolist (package (append (mapcar 'car package--builtins) package-activated-list))
    (let* ((initfile (concat autopkg-package-init-dir (format "init-%s.el" package))))
      (when (and (package-installed-p package)
		 (file-exists-p initfile))
	(load initfile)))))

(provide 'auto-package)
