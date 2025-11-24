(use-package desktop
  :preface
  (setq desktop-path (list (locate-user-emacs-file "auto-save-list"))
        desktop-auto-save-timeout 600
        desktop-globals-to-save
        '((comint-input-ring        . 50)
          (compile-history          . 30)
          desktop-missing-file-warning
          kill-ring
          (dired-regexp-history     . 20)
          (extended-command-history . 30)
          (face-name-history        . 20)
          (file-name-history        . 100)
          (grep-find-history        . 30)
          (grep-history             . 30)
          (ivy-history              . 100)
          (magit-revision-history   . 50)
          (minibuffer-history       . 50)
          (org-clock-history        . 50)
          (org-refile-history       . 50)
          (org-tags-history         . 50)
          (query-replace-history    . 60)
          (read-expression-history  . 60)
          (regexp-history           . 60)
          (regexp-search-ring       . 20)
          register-alist
          (search-ring              . 20)
          (shell-command-history    . 50)
          tags-file-name
          tags-table-list))
  (desktop-save-mode 1))

  (use-package savehist
    :ensure nil
    :hook (after-init . savehist-mode)
    :config
    (setq savehist-additional-variables
          '(mark-ring
            global-mark-ring
            search-ring
            regexp-search-ring
            register-alist
            extended-command-history))
    :custom
    (savehist-file (locate-user-emacs-file "auto-save-list/save-history.el"))
    (enable-recursive-minibuffers t)
    (history-delete-duplicates t)
    (savehist-save-minibuffer-history t)
    (history-length 1000)
    (savehist-autosave-interval 300))

(use-package session
  :straight t
  :hook
  (after-init . session-initialize)
  :preface
  (setq session-save-file (locate-user-emacs-file "auto-save-list/session")
        session-name-disable-regexp "\\(?:\\`'/tmp\\|\\.git/[A-Z_]+\\'\\)"
        session-save-file-coding-system 'utf-8))

(provide 'init-sessions)
