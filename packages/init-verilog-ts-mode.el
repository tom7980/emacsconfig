(use-package verilog-ts-mode
  :straight t)

(add-to-list 'auto-mode-alist '("\\.s?vh?\\'" . verilog-ts-mode))

(provide 'init-verilog-ts-mode)
