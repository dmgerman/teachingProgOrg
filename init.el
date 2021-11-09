;;; init.el --- -*- lexical-binding: t; -*-


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(good-scroll smooth-scroll yasnippet org-bullets use-package))
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bold ((t (:foreground "red" :weight bold))))
 '(code ((t (:foreground "red" :weight bold))))
 '(code-block ((t (:background "whitesmoke" :extend t))))
 '(hl-line ((t (:background "darkseagreen1"))))
 '(italic ((t (:foreground "red" :weight bold))))
 '(org-block ((t (:inherit fixed-pitch :height 1.0 :background "#FFFFE2" :extend t))))
 '(org-block-background ((t (:background "lightgray" :extend t))))
 '(org-block-begin-line ((t (:extend t :foreground "darkgrey"))))
 '(org-block-end-line ((t (:extend t :foreground "darkgrey"))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-column-title ((t (:foreground "darkgreen" :weight bold))))
 '(org-document-title ((t (:height 1.0 :underline nil))))
 '(org-example ((t (:foreground "darkgreen" :weight bold))))
 '(org-level-1 ((t (:inherit default :weight bold :height 1.5))))
 '(org-level-2 ((t (:inherit default :weight bold :height 1.3))))
 '(org-level-3 ((t (:inherit default :weight bold :height 1.15))))
 '(org-level-4 ((t (:inherit default :weight bold :height 1.1))))
 '(org-table-header ((t (:foreground "darkgreen" :weight bold))))
 '(org-verbatim ((t (:foreground "darkblue" :weight bold))))
 '(underline ((t (:foreground "orange" :weight bold))))
 '(verbatim ((t (:foreground "darkblue" :weight bold)))))

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
	     )

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(require 'org)
;; load it from org file

(org-babel-load-file (concat (file-name-directory load-file-name) "prog_teaching_org.org"))
