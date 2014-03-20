(defun c++-mode-setup ()
  (after 'key-chord
    (key-chord-define c++-mode-map "--" "->")
    (key-chord-define c-mode-map "--" "->")))

(add-hook 'c++-mode-hook 'c++-mode-setup)
(add-hook 'c-mode-hook 'c++-mode-setup)
