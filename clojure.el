;; Set up SLIME, Clojure Mode, etc.

(setq inferior-lisp-program "/usr/bin/clj")
(require 'slime)
(require 'clojure-mode)

(slime-setup
 '(slime-repl))

;; Syntax highlighting in REPL.
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)