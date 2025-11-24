(use-package neotree
  :straight t
  :after (projectile)
  :init
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (defun my/neotree-project-dir()
    (interactive)
    (let ((project-dir (projectile-project-root))
	  (file-name (buffer-file-name)))
      (neotree-show)
      (if project-dir
	  (if (neo-global--window-exists-p)
	      (progn
		(neotree-dir project-dir)
		(neotree-find file-name)))
	(message "Could not find projectile root directory."))))
  :bind ([f8] . my/neotree-project-dir)
  :config
  (add-hook 'neo-after-create-hook (lambda (x) (display-line-numbers-mode -1)))) ;;Neotree passes an arg to the hook so ignore it

(provide 'init-neotree)
