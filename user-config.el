;; org-mode config
(with-eval-after-load 'org
  ;; here goes your Org config
  )
(with-eval-after-load 'org-agenda
  (require 'org-projectile)
  (mapcar '(lambda (file)
             (when (file-exists-p file)
               (push file org-agenda-files)))
          (org-projectile-todo-files)))

;; (spacemacs/toggle-debug-on-error-on)

;; Personal Information Configuration
(setq user-full-name "Winno Chan")
(setq user-email-address "winnochan@icloud.com")

;; projectile
(setq projectile-enable-caching t)
;; (setq projectile-indexing-method 'hybrid)

;; 多行移动
(global-set-key (kbd "C-M-n")
                (lambda () (interactive) (next-line 7)))
(global-set-key (kbd "C-M-p")
                (lambda () (interactive) (previous-line 7)))
(global-set-key (kbd "M-n")
                (lambda () (interactive) (next-line 7)))
(global-set-key (kbd "M-p")
                (lambda () (interactive) (previous-line 7)))

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

;; winum
(setq winum-scope 'frame-local)

;; hungry-mode
(spacemacs/toggle-hungry-delete-on)
(spacemacs/toggle-whitespace-cleanup-on)

;; (when (require 'so-long nil :noerror)
;;   (so-long-enable))

(setq company-minimum-prefix-length 3)

(spacemacs/toggle-indent-guide-globally-on)
(setq indent-guide-delay 0.01)
(setq indent-guide-recursive nil)
(setq indent-guide-char "|")
(set-face-background 'indent-guide-face "dimgray")

;; turn off highlight current line
(spacemacs/toggle-highlight-current-line-globally-on)
(spacemacs/toggle-automatic-symbol-highlight-on)

(spacemacs/toggle-smartparens-globally-on)

(provide 'user-config)
