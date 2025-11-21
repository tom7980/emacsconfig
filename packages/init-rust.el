(use-package rust-mode
  :straight t
  :config
  (add-hook 'rust-mode-hook 'flycheck-mode)
  (add-hook 'rust-mode-hook
	    (lambda () (setq indent-tabs-mode nil)))
  (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
  (setq rust-format-on-save t)
  (add-hook 'rust-mode-hook #'lsp)
  (setq rust-mode-treesitter-derive t))

(provide 'init-rust)
