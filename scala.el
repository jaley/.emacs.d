;; Scala Mode config

(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode")
(load "scala-mode-auto.el")

(add-hook 'scala-mode-hook 
          '(lambda ()
             (setq indent-tabs-mode nil)
             (yas/minor-mode-on)))

