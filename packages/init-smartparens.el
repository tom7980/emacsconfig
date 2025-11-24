(use-package smartparens
  :straight t
  :hook (prog-mode text-mode markdown-mode)
  :config
  (require 'smartparens-config))

(provide 'init-smartparens)
