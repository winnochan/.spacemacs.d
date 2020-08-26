;; (setq url-proxy-services
;;       '(("http" . "127.0.0.1:1087")
;;         ("https" . "127.0.0.1:1087")))

;; tsinghua elpa mirrors
;; (setq configuration-layer-elpa-archives
;;       '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;         ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;;         ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

;;
(setq configuration-layer-elpa-archives
      '(("melpa-cn" . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
        ("org-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")
        ("gnu-cn"   . "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")))

(setq quelpa-melpa-repo-url "https://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")

;; tramp-ssh
(setq tramp-ssh-controlmaster-options
      "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

;; (setq-default bidi-display-reordering nil)

;; (setq-default max-specpdl-size 5000)
;; (setq max-lisp-eval-depth 4000)

;; purpose-mode
;; (setq purpose-mode nil)

(provide 'user-init)
