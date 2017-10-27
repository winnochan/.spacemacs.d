;; Personal Information Configuration
(setq user-full-name "wowchan")
(setq user-email-address "wow4chan@gmail.com")

;; 多行移动
;; (global-set-key (kbd "C-M-n")
;;                 (lambda () (interactive) (next-line 7)))
;; (global-set-key (kbd "C-M-p")
;;                 (lambda () (interactive) (previous-line 7)))
(global-set-key (kbd "M-n")
                (lambda () (interactive) (next-line 7)))
(global-set-key (kbd "M-p")
                (lambda () (interactive) (previous-line 7)))

;; refresh-file
(defun refresh-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))
(global-set-key (kbd "<f5>") 'refresh-file)

;; c-c++ code style
(setq c-default-style "java")
(setq-default c-basic-offset 4)
(setq default-tab-width 4)

(global-spacemacs-whitespace-cleanup-mode t)

;; 设置单行的复制以剪切
(defadvice kill-ring-save (before slickcopy activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))
(defadvice kill-region (before slickcut activate compile)
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; graphviz-dot-mode config

(provide 'spacemacs-user-config)
