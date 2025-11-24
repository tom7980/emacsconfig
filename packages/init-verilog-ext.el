(use-package verilog-ext
  :straight t
  :hook ((verilog-mode . verilog-ext-mode))
  :init
  ;; Can also be set through `M-x RET customize-group RET verilog-ext':
  ;; Comment out/remove the ones you do not need
  (setq verilog-ext-feature-list
        '(font-lock
          xref
          capf
          hierarchy
          ;;eglot
          lsp
          ;;lsp-bridge
          ;;lspce
          flycheck
          beautify
          navigation
          template
          formatter
          compilation
          imenu
          which-func
          hideshow
          typedefs
          time-stamp
          block-end-comments
          ports))
  :config
  (verilog-ext-mode-setup)
  (verilog-ext-lsp-set-server 've-svlangserver)
  (add-hook 'verilog-ext-mode-hook 'flycheck-mode))

(provide 'init-verilog-ext)
