;; (spacemacs/toggle-debug-on-error-on)

;; Personal Information Configuration
(setq user-full-name "WinnoChan")
(setq user-email-address "winnochan@icloud.com")

;; 多行移动
;; (global-set-key (kbd "C-M-n")
;;                 (lambda () (interactive) (next-line 5)))
;; (global-set-key (kbd "C-M-p")
;;                 (lambda () (interactive) (previous-line 5)))
(global-set-key (kbd "M-n")
                (lambda () (interactive) (next-line 5)))
(global-set-key (kbd "M-p")
                (lambda () (interactive) (previous-line 5)))

;; refresh-file
(defun refresh-file ()
  (interactive)
  (revert-buffer t (not (buffer-modified-p)) t))
(global-set-key (kbd "<f5>") 'refresh-file)

;; c-c++ code style
;; (setq c-default-style "java")
;; (setq c-default-style "linux")
;; (setq c-default-style "k&r")
;; (setq c-default-style "stroustrup")
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


;; java config
;; (setq ensime-startup-notification nil)
;; (add-hook 'java-mode-hook 'ensime-java-mode-hook)
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; (add-hook 'ensime-mode-hook 'ensime)

;; winum
(setq winum-scope 'frame-local)

;; hungry-mode
;; (global-hungry-delete-mode t)

;; newline-and-indent is too slow.
;; (defun newline-and-indent ()
;;   (interactive "*")
;;   (c-indent-new-comment-line))

(when (require 'so-long nil :noerror)
  (so-long-enable))

(setq company-minimum-prefix-length 4)

;; (spacemacs/toggle-indent-guide-globally-on)
;; (setq indent-guide-delay 0.001)
(setq indent-guide-recursive t)
(setq indent-guide-char "|")
;; (set-face-background 'indent-guide-face "dimgray")

;; turn off highlight current line
(spacemacs/toggle-highlight-current-line-globally-on)
(spacemacs/toggle-automatic-symbol-highlight-on)

(provide 'user-config)
