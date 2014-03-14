(eval-after-load "evil"
  '(progn (require 'evil-numbers)
	  (define-key evil-normal-state-map (kbd "+") 'evil-numbers/inc-at-pt)
	  (define-key evil-normal-state-map (kbd "-") 'evil-numbers/dec-at-pt)))
