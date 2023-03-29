(global-set-key(kbd "TAB") 'self-insert-command)
(setq-default tab-width 4)
(setq backward-delete-char-untabify-method nil)
(pixel-scroll-precision-mode)
(cua-mode)

(add-to-list 'load-path (concat git-package-path "exec-path-from-shell"))
(require 'exec-path-from-shell)
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :init
  (setq exec-path-from-shell-arguments nil)
  (exec-path-from-shell-initialize))

(global-set-key(kbd "<f5>") 'projectile-run-project)
