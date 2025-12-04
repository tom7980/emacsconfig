(use-package nix-ts-mode
  :straight (nix-ts-mode :type git
			 :host github
			 :repo "nix-community/nix-ts-mode")
  :config
  (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-ts-mode))
  (add-to-list
   'treesit-language-source-alist
   '(nix "https://github.com/nix-community/tree-sitter-nix" "tree-sitter-0.25")
   t))

(with-eval-after-load 'lsp-mode
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection "nixd")
		    :major-modes '(nix-ts-mode)
		    :priority 0
		    :server-id 'nixd)))

(provide 'init-nix)
