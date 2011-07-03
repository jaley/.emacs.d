;; Some modes simply need loading and no further config,
;; this file is just for those.

(require 'android-mode)

;; Lua mode
(add-to-list 'load-path (file-name-as-directory "/home/jaley/.emacs.d/plugins/lua-mode"))
(require 'lua-mode)

; get lua-mode to handle lua files
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
