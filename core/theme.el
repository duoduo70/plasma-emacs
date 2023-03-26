(tool-bar-mode 0)                   ;关闭 Tool Bar
(scroll-bar-mode 0)                 ;关闭滚动条
(menu-bar-mode -1)                 ;关闭菜单栏
(setq-default cursor-type 'bar)     ;更改光标

(add-to-list 'load-path (concat git-package-path "dracula-theme"))
(require 'dracula-theme)
(setq dracula-alternate-mode-line-and-minibuffer t)
(load-theme 'dracula t)
(custom-set-faces
 '(ivy-minibuffer-match-face-2 ((t (:extend t :background "dim gray" :foreground "spring green"))))
 '(cursor ((t (:background "#778899" :width ultra-condensed))))
 '(hl-line ((t (:extend t :background "color-235"))))
 '(keycast-key ((t (:background "#5f5f87" :foreground "#ffffff" :weight bold))))
 '(line-number ((t (:foreground "#a8a8a8" :slant italic))))
 '(line-number-current-line ((t (:inherit line-number :foreground "#87af5f"))))
 '(mouse-drag-and-drop-region ((t (:inherit region :background "black"))))
 '(next-error ((t (:underline (:color "#af0000" :style wave)))))
 '(region ((t (:extend t :background "#c0c0c0" :inherit))))
 '(rime-preedit-face ((t (:underline "#faf0e6" :foreground "#ffffff"))))
 '(tool-bar ((t (:foreground "grey100"))))
 '(treemacs-root-face ((t (:inherit font-lock-constant-face :weight bold :height 1.2))))
 '(treemacs-term-node-face ((t (:foreground "#5f5f87"))))
 '(tty-menu-disabled-face ((t (:background "#5f5f87"))))
 '(tty-menu-enabled-face ((t (:background "#5f5f87"))))
 '(tty-menu-selected-face ((t (:background "#5f5f5f"))))
 '(w3m-anchor ((t (:foreground "blue" :weight bold))))
 '(w3m-arrived-anchor ((t (:foreground "navy" :weight bold))))
 '(w3m-header-line-background ((t (:background "color-235"))))
 '(w3m-header-line-content ((t (:background "color-235" :foreground "DarkGoldenrod"))))
 '(w3m-header-line-title ((t (:background "Color-235" :foreground "Blue"))))
 '(w3m-tab-background ((t (:background "color-234" :foreground "black"))))
 '(w3m-tab-selected ((t (:background "#5f5f87" :foreground "brightwhite"))))
)