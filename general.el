;;;; Global window and editor settings for all modes.

;; Remove window clutter
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Global editor settings
(show-paren-mode 1)
(transient-mark-mode 1)
(add-hook 'find-file-hook (lambda () (linum-mode 1)))

(setq-default indent-tabs-mode nil)

;; Move the emacs droppings into a litter tray
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Startup tweaking
(setq inhibit-startup-screen t)

;; Enable X clipboard interop
(setq x-select-enable-clipboard t)

;; Fullscreen mode, bound to F11
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))
(global-set-key [f11] 'toggle-fullscreen)

;; Start server for emacsclient, if it's not
;; running already.
(require 'server)
(unless (server-running-p)
  (server-start))

