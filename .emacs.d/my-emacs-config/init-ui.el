
;;关闭工具栏
(tool-bar-mode -1)
;;关闭侧边滚动条
(scroll-bar-mode -1)
;;开启行号
(global-linum-mode t)

;;定义字体集
(set-fontset-font "fontset-default"
      'gb18030 '("Microsoft YaHei" . "unicode-bmp"))
;;高亮当前行
(global-hl-line-mode t)
;;打开自动全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;读取主题
(load-theme 'monokai t)



(provide 'init-ui)
