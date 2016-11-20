
;;定义打开我的配置文件函数
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(provide 'init-myfunc)
