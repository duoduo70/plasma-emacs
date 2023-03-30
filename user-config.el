(defun open-user-config()
  (interactive)
  (find-file (concat config-path "user-config.el")))
(global-set-key (kbd "C-,") #'open-user-config)

(setq use-dialog-box nil)

(add-to-list 'load-path (concat git-package-path "yascroll"))
(require 'yascroll)
(add-hook 'prog-mode-hook #'yascroll-bar-mode)
