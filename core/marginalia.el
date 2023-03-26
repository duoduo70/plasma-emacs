(add-to-list 'load-path (concat git-package-path "compat"))
(require 'compat)
(add-to-list 'load-path (concat git-package-path "marginalia"))
(require 'marginalia)
(use-package marginalia
  :init (marginalia-mode)
  :bind (:map minibuffer-local-map
			  ("M-A" . marginalia-cycle)))