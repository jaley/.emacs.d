;; Main emacs init script, call other sub-scripts from here.


;; Directory where sub scripts are kept
(defvar *emacs-cfg-dir* "~/.emacs.d")

;; List of sub-scripts to be loaded on initialization
(defvar *scripts*
  '("general"))

(mapcar (lambda (el)
	  (load (concat (file-name-as-directory *emacs-cfg-dir*) el))) 
	*scripts*)
