(add-to-list 'load-path (concat git-package-path "projectile"))
(require 'projectile)
(use-package projectile
  :bind (("C-c p" . projectile-command-map))
  :config
  (setq projectile-mode-line "Projectile")
  (setq projectile-track-known-projects-automatically nil))

(add-to-list 'load-path (concat git-package-path "counsel-projectile"))
(require 'counsel-projectile)
(use-package counsel-projectile
  :after (projectile)
  :init (counsel-projectile-mode))