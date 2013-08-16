;; init.el
;; Initial load file

;;(toggle-debug-on-error t)

;; wait until all packages are loaded
(add-hook 'after-init-hook
 `(lambda ()
    ;; remember this directory
    (setq config-dir
          ,(file-name-directory (or load-file-name (buffer-file-name))))
    (require 'org)
    (org-babel-load-file (expand-file-name "main.org" config-dir))))
(put 'downcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
