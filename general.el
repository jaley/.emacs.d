;;;; Global window and editor settings for all modes.

;; Remove window clutter
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Global editor settings
(show-paren-mode 1)
(transient-mark-mode 1)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))

;; Startup tweaking
(setq inhibit-startup-screen t)

;; Enable X clipboard interop
(setq x-select-enable-clipboard t)

;; Start server for emacsclient
(server-start)

