;;;; Global window and editor settings for all modes.

;; Remove window clutter
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Global editor settings
(show-paren-mode 1)
(transient-mark-mode 1)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))

;; Move the emacs droppings into a litter tray
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Startup tweaking
(setq inhibit-startup-screen t)

;; Enable X clipboard interop
(setq x-select-enable-clipboard t)

;; Start server for emacsclient, if it's not
;; running already.
(require 'server)
(unless (server-running-p)
  (server-start))

