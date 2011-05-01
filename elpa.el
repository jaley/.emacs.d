;; Set up the ELPA package manager.

(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(package-initialize)

(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
