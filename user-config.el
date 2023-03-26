(defun open-user-config()
  (interactive)
  (find-file (concat config-path "user-config.el")))
(global-set-key (kbd "C-,") #'open-user-config)

(setq use-dialog-box nil)
