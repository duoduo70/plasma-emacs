(defun open-shell()
  (interactive)
  (progn
    (split-window (selected-window) (/ (window-height) 3) 'above)
    (shell)
    (display-buffer (current-buffer))))
(global-set-key (kbd "C-`") #'open-shell)