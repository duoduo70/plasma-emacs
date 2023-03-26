(icomplete-mode 1)                  ;快速迷你缓冲区
(fset 'yes-or-no-p 'y-or-n-p)       ;将yes/no改成y/n

(add-to-list 'load-path (concat git-package-path "s"))
(require 's)
(add-to-list 'load-path (concat git-package-path "amx"))
(require 'amx)
(amx-mode)