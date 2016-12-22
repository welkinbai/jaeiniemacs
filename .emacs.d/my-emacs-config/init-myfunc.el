
;;定义打开我的配置文件函数
(defun open-my-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;自动缩进buffer的函数
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))


(provide 'init-myfunc)
