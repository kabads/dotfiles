(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(deeper-blue))
 '(org-agenda-files '("~/Documents/org/projects.org"))
 '(org-clock-display-default-range 'thisyear))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "outline" :slant normal :weight normal :height 160 :width normal)))))
;; This is for org-mode agenda view activation
 (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
 ;; This is for key bindings to invoke agenda mode (see line-2)
 (global-set-key "\C-cl" 'org-store-link)
 (global-set-key "\C-ca" 'org-agenda)
 (global-set-key "\C-cc" 'org-capture)
 (global-set-key "\C-cb" 'org-iswitchb)
(setq org-todo-keywords
      '((sequence "TODO" "STARTED" "VERIFY" "|" "DONE" "WAITING")))
;; set specific browser to open links
(setq browse-url-firefox-program "/System/Volumes/Data/Applications/Firefox.app/Contents/MacOS/firefox")
(setq browse-url-generic-program "/System/Volumes/Data/Applications/Firefox.app/Contents/MacOS/firefox"
      browse-url-browser-function 'browse-url-generic)

(add-to-list 'load-path "/path/to/elisp")
(eval-after-load "org" '(require 'ox-moinmoin nil t))
(put 'upcase-region 'disabled nil)

(put 'set-goal-column 'disabled nil)
