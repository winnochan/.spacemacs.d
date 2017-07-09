;; Personal Information Configuration
(setq user-full-name "wowchan")
(setq user-email-address "wow4chan@gmail.com")

;; refresh-file
(defun refresh-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))
(global-set-key (kbd "<f5>") 'refresh-file)

;; c-c++ code style
(setq c-default-style "linux")
(setq-default c-basic-offset 4)
(setq default-tab-width 4)

(global-spacemacs-whitespace-cleanup-mode t)

(provide 'spacemacs-user-config)
