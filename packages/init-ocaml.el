(use-package tuareg
  :straight t
  :mode (("\\.ocamlinit\\'" . tuareg-mode)))

(use-package dune
  :straight t)

(use-package merlin
  :straight t
  :config
  (add-hook 'tuareg-mode-hook #'merlin-mode)
  (setq merlin-error-after-save nil)
  )

(use-package merlin-eldoc
  :straight t
  :hook ((tuareg-mode . merlin-eldoc-setup)))

(use-package flycheck-ocaml
  :straight t
  :config
  (flycheck-ocaml-setup))

(use-package utop
  :straight t
  :config
  (add-hook 'tuareg-mode-hook #'utop-minor-mode))

(provide 'init-ocaml)
