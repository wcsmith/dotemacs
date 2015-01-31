;; don't prompt on server kill
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)
