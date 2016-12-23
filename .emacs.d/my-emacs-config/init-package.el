
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
				 popwin
				 swiper
				 counsel
				 org-pomodoro
				 markdown-mode
				 magit
				   )  "Default packages")

(setq package-selected-packages welkinbai/packages)

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


;;开启company自动补全
(global-company-mode t)

;;自动跳光标到新打开的窗口里
(require 'popwin)
(popwin-mode t)

;;启动C-x C-j快捷键来打开当前buffer的路径的dir mode
(require 'dired-x)


(provide 'init-package)
