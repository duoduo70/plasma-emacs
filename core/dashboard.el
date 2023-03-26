(add-to-list 'load-path (concat git-package-path "hydra"))
(require 'hydra)
(add-to-list 'load-path (concat git-package-path "emacs-dashboard"))
(require 'dashboard)

(use-package dashboard
  :config
  (setq dashboard-banner-logo-title "Plasma Emacs 2")
  (setq dashboard-projects-backend 'projectile)
  (setq dashboard-startup-banner 'official)
  (setq dashboard-items '((recents  . 5)
			  (bookmarks . 5)
			  (projects . 10)
  ))
  (setq projectile-completion-system 'ivy)
  (dashboard-setup-startup-hook)
  (setq dashboard-set-navigator t)
  (setq dashboard-footer-messages '("by plasma70")))