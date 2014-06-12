(use-package 'cc-mode
  :defer t

  :init
  (hook 'c-mode-common-hook
    (after 'key-chord
      (key-chord-define c-mode-map "--" "->")
      (key-chord-define c++-mode-map "--" "->")
      (key-chord-define c-mode-base-map ";;" "\C-e;")
      (key-chord-define c-mode-base-map "{{" "\C-e {"))))
