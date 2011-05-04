;;;; Set up themes, expects color-theme emacs library.

(require 'color-theme)

(add-to-list 'load-path "~/.emacs.d/plugins/emacs-color-theme-solarized")
(require 'color-theme-solarized)
(color-theme-solarized-light)
