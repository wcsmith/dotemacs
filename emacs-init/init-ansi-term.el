(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(setq system-uses-terminfo nil)

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'term-mode-hook 'ansi-color-for-comint-mode-on)
