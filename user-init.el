;; emacs-china elpa mirrors
(setq configuration-layer-elpa-archives
      '(("gnu-cn"          . "http://elpa.emacs-china.org/gnu/")
        ;; ("melpa-stable-cn" . "http://elpa.emacs-china.org/melpa-stable/")
        ("melpa-cn"        . "http://elpa.emacs-china.org/melpa/")
        ;; ("marmalade-cn"    . "http://elpa.emacs-china.org/marmalade/")
        ("org-cn"          . "http://elpa.emacs-china.org/org/")))

;; tramp-ssh
;; (setq tramp-mode nil)
(setq tramp-ssh-controlmaster-options
      "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

(setq-default bidi-display-reordering nil)

;; purpose-mode
;; (setq purpose-mode nil)

(provide 'user-init)
