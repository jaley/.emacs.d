;;;; Custom key bindings

;; TouchType helpers
(defvar *touchtype-home* "~/devel/source/TouchType-Build/")
(defun tt-vc-status ()
  (interactive)
  (vc-dir *touchtype-home*))

(global-set-key [f8] 'tt-vc-status)

