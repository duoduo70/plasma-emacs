(defun document()
  (interactive)
  (find-file-read-only (concat config-path "DOCUMENT")))