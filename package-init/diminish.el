(use-package 'diminish
  :install t

  :config
  (progn
    (defmacro diminish-after (feature mode to-what)
      `(eval-after-load ,feature
	 '(diminish ,mode ,to-what)))

    (diminish-after 'abbrev 'abbrev-mode nil)
    (diminish-after 'auto-complete 'auto-complete-mode "ac")
    (diminish-after 'autopair 'autopair-mode nil)
    (diminish-after 'emmet-mode 'emmet-mode "zen")))
    (diminish-after 'flycheck 'flycheck-mode "fc")
    (diminish-after 'ggtags 'ggtags-mode "gg")
    (diminish-after 'magit 'magit-auto-revert-mode nil)
    (diminish-after 'projectile 'projectile-mode nil)
    (diminish-after 'undo-tree 'undo-tree-mode nil)
