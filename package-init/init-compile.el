(after 'compile
  (define-key compilation-mode-map "j" 'compilation-next-error)
  (define-key compilation-mode-map "k" 'compilation-previous-error))
