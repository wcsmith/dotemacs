;; disable mouse interface
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

;; no startup messages
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; text size
(set-face-attribute 'default nil :height 115)

;; highlight line
(global-hl-line-mode 1)

;; no fringe
(fringe-mode 0)

;; ansi colors
(ansi-color-for-comint-mode-on)

;; window title
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b"))))

;; echoes and alerts
(setq echo-keystrokes 0.1
      use-dialog-box nil
      visible-bell t)
