;;绑定最近打开的文件列表到快捷键上
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;绑定快捷键到打开我的配置文件上
(global-set-key (kbd "<f4>") 'open-my-init-file)
;;绑定快捷键到打开我的学习文档上
(global-set-key (kbd "<f5>") 'open-my-study-file)
;;绑定快捷键到自动缩进函数上
(global-set-key (kbd "C-S-l") 'indent-region-or-buffer)
;;绑定增强的自动补全
(global-set-key (kbd "s-/") 'hippie-expand)

;;一些swiper和counsel的按键设置
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

;;company自动补全可以使用快捷键来选择备选项
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;;循环透明快捷键
(global-set-key [(f11)] 'loop-alpha)

;;全局搜索快捷键
(global-set-key [f8] 'deft)

(provide 'init-keybinding)
