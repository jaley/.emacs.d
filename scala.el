;; Scala Mode config

(add-to-list 'load-path "~/.emacs.d/plugins/scala-mode")
(load "scala-mode-auto.el")

(add-hook 'scala-mode-hook 
          '(lambda ()
             (setq indent-tabs-mode nil)
             (yas/minor-mode-on)))

;; ENSIME
(add-to-list 'load-path "~/.emacs.d/plugins/ensime_2.8.1-0.5.0/elisp")
(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)


