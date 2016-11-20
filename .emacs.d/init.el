;;关闭开始欢迎页
(setq inhibit-splash-screen t)

(add-to-list 'load-path "~/.emacs.d/my-emacs-config")

(require 'init-package)
(require 'init-ui)
(require 'init-batter-defaults)
(require 'init-myfunc)
(require 'init-keybinding)

(setq custom-file (expand-file-name "my-emacs-config/custom.el" user-emacs-directory))

(load-file custom-file)















