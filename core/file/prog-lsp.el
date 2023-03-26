(add-to-list 'load-path (concat git-package-path "dash"))
(require 'dash)
(add-to-list 'load-path (concat git-package-path "f"))
(require 'f)
(add-to-list 'load-path (concat git-package-path "ht"))
(require 'ht)
(add-to-list 'load-path (concat git-package-path "spinner"))
(require 'spinner)

(add-to-list 'load-path (concat git-package-path "markdown-mode"))
(require 'markdown-mode)

(add-to-list 'load-path (concat git-package-path "lsp-mode"))
(require 'lsp-mode)
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l"
	lsp-file-watch-threshold 500)
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-completion-provider :none)
  (setq lsp-headerline-breadcrumb-enable t)
  :bind
  ("C-c l s" . lsp-ivy-workspace-symbol))

(add-to-list 'load-path (concat git-package-path "lsp-ui"))
(require 'lsp-ui)
(use-package lsp-ui
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  (setq lsp-ui-doc-position 'top))

(add-to-list 'load-path (concat git-package-path "lsp-ivy"))
(require 'lsp-ivy)
(use-package lsp-ivy
  :after (lsp-mode))