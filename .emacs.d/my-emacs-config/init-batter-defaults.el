
;;关掉鼠标滚轮到文件开始结尾处的提示音
(setq ring-bell-function 'ignore)

;;选中一块东西然后敲其他东西会覆盖的模式
(delete-selection-mode t)
;;好像是自动加载文件修改
(global-auto-revert-mode t)

;;最近文件模式打开
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)


;;关闭自动备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)

;;钩子-给lisp主模式增加括号匹配子模式
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;不要问我yes or no 而是y or n
(fset 'yes-or-no-p 'y-or-n-p)

;;增强补全
(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
;;两个窗口都打开时，dir mode中的操作会自动提示另一个窗口的路径
(setq dired-dwim-target t)

(provide 'init-batter-defaults)
