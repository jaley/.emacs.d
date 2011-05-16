;; Set up SLIME, Clojure Mode, etc.

(setq inferior-lisp-program "/usr/bin/clj")

(require 'clojure-mode)
(require 'slime)

;; Syntax highlighting in REPL.
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)

;; Startup a global swank server for playing at the REPL
(defvar *cake-bin* "/var/lib/gems/1.8/bin/cake")
(save-excursion
  (start-process "cake" nil *cake-bin* "swank" "4006" "-r" "--global"))

(defun quick-clojure-repl ()
  (interactive)
  (slime-connect "127.0.0.1" 4006))
(global-set-key [f5] 'quick-clojure-repl)

