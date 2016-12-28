;; emacs-china elpa mirrors
(setq configuration-layer--elpa-archives
      '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
        ("org-cn"   . "http://elpa.emacs-china.org/org/")
        ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

(defvar wow-additional-packages
  '(
    vlf                     ;; view large files
    labburn-theme
    ))

(defvar wow-frozen-packages
  '())

(defvar wow-excluded-packages
  '())

(provide 'wow-packages)
