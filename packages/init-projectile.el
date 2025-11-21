(use-package projectile
  :straight (projectile :type git :host github :repo "bbatsov/projectile")
  :config (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(provide 'init-projectile)
