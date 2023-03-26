(add-hook 'prog-mode-hook
    #'display-line-numbers-mode)    ;行号显示
(add-hook 'prog-mode-hook
    #'hl-line-mode)                 ;高亮当前行

(add-to-list 'load-path (concat git-package-path "rainbow-delimiters"))
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook
    #'rainbow-delimiters-mode)

(add-to-list 'load-path (concat git-package-path "company-mode"))
(require 'company)
(use-package company
  :hook
  (prog-mode . company-mode)
  :config
  (setq company-minimum-prefix-length 1) ; 只需敲 1 个字母就开始进行自动补全
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))

(add-to-list 'load-path (concat git-package-path "yasnippet"))
(require 'yasnippet)
(use-package yasnippet
  :hook
  (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all)
  ;; add company-yasnippet to company-backends
  (defun company-mode/backend-with-yas (backend)
    (if (and (listp backend) (member 'company-yasnippet backend))
	backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet))))
  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))
  ;; unbind <TAB> completion
  (define-key yas-minor-mode-map [(tab)]        nil)
  (define-key yas-minor-mode-map (kbd "TAB")    nil)
  (define-key yas-minor-mode-map (kbd "<tab>")  nil)
  :bind
  (:map yas-minor-mode-map ("S-<tab>" . yas-expand)))

(add-to-list 'load-path (concat git-package-path "yasnippet-snippets"))
(require 'yasnippet-snippets)
(use-package yasnippet-snippets
  :after yasnippet)

(add-hook 'prog-mode-hook
    (lambda ()(global-set-key (kbd "M-/") 'hippie-expand))
)

(add-hook 'prog-mode-hook
    (lambda ()(global-set-key (kbd "C-c C-,") 'flycheck-list-errors))
)

(add-to-list 'load-path (concat git-package-path "flycheck"))
(require 'flycheck)
(use-package flycheck
  :config
  (setq truncate-lines nil)
  (setq flycheck-idle-change-delay 1.0)
  :hook
  (prog-mode . flycheck-mode))

(add-hook 'prog-mode-hook 'electric-pair-mode)