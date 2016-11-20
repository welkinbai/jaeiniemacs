
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
    )

(require 'cl)

;;add whatever packages you want here
(defvar welkinbai/packages '(
				 company
				 monokai-theme				   
				   )  "Default packages")

(setq package-selected-packages zilongshanren/packages)

(defun welkinbai/packages-installed-p ()
    (loop for pkg in welkinbai/packages
          when (not (package-installed-p pkg)) do (return nil)
          finally (return t)))

(unless (welkinbai/packages-installed-p)
    (message "%s" "Refreshing package database...")
    (package-refresh-contents)
    (dolist (pkg welkinbai/packages)
      (when (not (package-installed-p pkg))
        (package-install pkg))))

;;关闭工具栏
(tool-bar-mode -1)
;;关闭侧边滚动条
(scroll-bar-mode -1)
;;开启行号
(linum-mode t)
;;关闭开始欢迎页
(setq inhibit-splash-screen t)
;;选中一块东西然后敲其他东西会覆盖的模式
(delete-selection-mode t)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;定义打开我的配置文件函数
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;;绑定快捷键到上面定义的函数
(global-set-key (kbd "<f4>") 'open-my-init-file)

;;开启company自动补全
(global-company-mode t)

;;关闭自动备份文件
(setq make-backup-files nil)

;;定义字体集
(set-fontset-font "fontset-default"
'gb18030 '("Microsoft YaHei" . "unicode-bmp"))

;;钩子-给lisp主模式增加括号匹配子模式
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;高亮当前行
(global-hl-line-mode t)

;;我也不知道干啥的
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" default)))
 '(package-selected-packages (quote (company)) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;打开自动全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(load-theme 'monokai t)
