;;设置默认的agenda目录
(setq org-agenda-files '("~/agenda"))
;;设置开启agenda模式的快捷键
(global-set-key (kbd "C-c a") 'org-agenda)
;;为Org-mode中的代码块增加语法高亮
(require 'org)
(setq org-src-fontify-natively t)
;;设置一个代办事项的模板
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/agenda/gtd.org" "工作安排")
	 "* TODO [#B] %?\n  %i\n"
	 :empty-lines 1)))
;;设置代办事项的快捷键
(global-set-key (kbd "C-c r") 'org-capture)
;;番茄时间工作法插件
(require 'org-pomodoro)

(provide 'init-org-mode)
