(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
	"straight/repos/straight.el/bootstrap.el"
	(or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))

(straight-use-package 'use-package)

(global-display-line-numbers-mode)

(require 'init-nerd-icons)
(require 'init-zenburn)
(require 'init-f)
(require 'init-markdown-mode)
(require 'init-yasnippet)
(require 'init-completion)
(require 'init-lsp-mode)
(require 'init-sessions)

(require 'init-smartparens)
(require 'init-ace-window)
(require 'init-avy)
(require 'init-magit)
(require 'init-crux)
(require 'init-diff-hl)
(require 'init-rust)
(require 'init-docker)
(require 'init-ibuffer)

(require 'init-consult)
(require 'init-projectile)
(require 'init-neotree)
(require 'init-verilog-ext)
(require 'init-verilog-ts-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((lsp-clients-svlangserver-includeIndexing "**/*.{v,sv,svh,vh}")
     (lsp-clients-svlangserver-includeIndexing "riscv/*.{v,sv,svh,vh}"
					       "components/*.{v,sv,svh,vh}")
     (lsp-clients-svlangserver-workspace-additional-dirs
      "/home/tom/projects/ulxws/components"
      "/home/tom/projects/ulxws/riscv" "/home/tom/projects/ulxws")
     (lsp-clients-svlangserver-excludeIndexing
      "src/test/**/*.{sv,svh}")
     (lsp-clients-svlangserver-includeIndexing "src/**/*.{sv,svh}")
     (lsp-clients-svlangserver-workspace-additional-dirs
      "/some/lib/path")
     (verilog-ext-flycheck-verilator-include-path
      "/home/tom/projects/ulxws/components"
      "/home/tom/projects/ulxws/riscv" "/home/tom/projects/ulxws")
     (verilog-ext-flycheck-slang-include-path
      "/home/tom/projects/ulxws/components"
      "/home/tom/projects/ulxws/riscv" "/home/tom/projects/ulxws"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
