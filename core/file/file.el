;自动保存
(add-to-list 'load-path (concat git-package-path "auto-save"))
(require 'auto-save)
(auto-save-enable)
(setq auto-save-silent t)   ; quietly save
(setq auto-save-delete-trailing-whitespace t)  ; automatically delete spaces at the end of the line when saving

(global-auto-revert-mode 1) ;自动加载外部修改过的文件

(delete-selection-mode 1)   ;选中一段文字，输入一个字符，替换掉选中文字