(autopair-global-mode 1)

(add-hook 'term-mode-hook
	  (lambda () (autopair-mode 0)))
