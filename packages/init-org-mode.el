(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :inherit 'nerd-icons-lred :weight bold)
              ("NEXT" :inherit 'nerd-icons-lblue :weight bold)
              ("DONE" :inherit 'nerd-icons-lgreen :weight bold)
              ("WAITING" :inherit 'nerd-icons-lorange :weight bold)
              ("HOLD" :inherit 'nerd-icons-maroon :weight bold)
              ("CANCELLED" :inherit 'nerd-icons-lgreen :weight bold)
              ("MEETING" :inherit 'nerd-icons-lgreen :weight bold)
              ("PHONE" :inherit 'nerd-icons-lgreen :weight bold))))

;; This was originally going to set a parent task to NEXT if a subtask was set to NEXT but I
;; decided that it wasn't worth having the parent tasks show up in the agenda
;; (defun my/org-update-parent-next ()
;;   (if (string-equal org-state "NEXT")
;;       (save-excursion
;; 	(unless (not (org-up-heading-safe))
;; 	  (let ((parent-todo (org-get-todo-state)))
;; 	    (message "State changed to NEXT, parent state: `%s'" parent-todo))))))

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let ((org-log-done org-todo-log-states) ;turn off logging
	(current-state (org-get-todo-state)))
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook #'org-summary-todo)
;; (add-hook 'org-after-todo-state-change-hook #'my/org-update-parent-next)

(setq org-agenda-files '("~/org/"))

(provide 'init-org-mode)
