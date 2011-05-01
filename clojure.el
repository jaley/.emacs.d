;; Set up SLIME, Clojure Mode, etc.

(setq inferior-lisp-program "/usr/bin/clj")

(require 'clojure-mode)
(require 'slime)

;; Syntax highlighting in REPL.
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)
