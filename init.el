(setq version "2.0a")
(setq config-path "~/.emacs.d/")
(setq git-package-path "~/.emacs.d/core/git-package/")

(mapc 'load
    (directory-files (concat config-path "core") t "\\.el$"))
(mapc 'load
    (directory-files (concat config-path "core/file") t "\\.el$"))

(load (concat config-path "user-config.el"))
