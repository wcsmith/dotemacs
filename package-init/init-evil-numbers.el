(use-package 'evil-numbers
  :install t
  :requires 'evil

  :config
  (progn
    (define-key evil-normal-state-map (kbd "+") 'evil-numbers/inc-at-pt)
    (define-key evil-normal-state-map (kbd "-") 'evil-numbers/dec-at-pt)))
