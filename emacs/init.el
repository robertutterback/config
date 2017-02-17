;; init.el
;; Initial load file

;;(toggle-debug-on-error t)

;; wait until all packages are loaded

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-hook 'after-init-hook
 `(lambda ()
    ;; remember this directory
    (setq config-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))
    (require 'org)
    (org-babel-load-file (expand-file-name "main.org" config-dir))))
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

