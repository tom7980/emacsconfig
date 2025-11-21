(use-package diff-hl
  :straight (diff-hl :type git :host github :repo "dgutov/diff-hl")
  :config
  (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
  (global-diff-hl-mode))

(provide 'init-diff-hl)
  
