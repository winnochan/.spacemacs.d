;; Personal Information Configuration
(setq user-full-name "wowchan")
(setq user-email-address "wow4chan@gmail.com")

;; 自动在文件最后加一个空行
(setq require-final-newline t)
;; 设置不自动保存
(setq auto-save-mode nil)
;; 设置不生成#filename#临时文件
(setq auto-save-default nil)
;; 设置不生成备份文件
(setq make-backup-files nil)

;; 多行移动
  (global-set-key (kbd "C-M-n")
                  (lambda () (interactive) (next-line 5)))
  (global-set-key (kbd "C-M-p")
                  (lambda () (interactive) (previous-line 5)))

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

  ;; 快捷注释
  (defun optimized-comment-dwim-line (&optional arg)
    (interactive "*P")
    (comment-normalize-vars)
    (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
        (comment-or-uncomment-region (line-beginning-position) (line-end-position))
      (comment-dwim arg)))
  (global-set-key "\M-;" 'optimized-comment-dwim-line)

  ;; 刷新文件
  (defun refresh-file ()
    (interactive)
    (revert-buffer t (not (buffer-modified-p)) t))

  (global-set-key (kbd "M-m m o r") 'refresh-file)
  (global-set-key (kbd "<f5>") 'refresh-file)

  ;; add keybinding for evil
  (global-set-key (kbd "<C-f1>") 'turn-on-evil-mode)
  (global-set-key (kbd "<C-f2>") 'turn-off-evil-mode)

  ;; Bind clang-format-region to C-M-tab in all modes:
  (global-set-key [C-M-tab] 'clang-format-region)
  ;; Bind clang-format-buffer to tab on the c++-mode only:
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))

(provide 'wow-base)
