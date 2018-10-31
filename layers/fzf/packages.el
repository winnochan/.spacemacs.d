;;; packages.el --- fzf Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq fzf-packages
      '(fzf))

(defun fzf-fzf ()
  (interactive)
  (fzf))

(defun fzf-fzf-git ()
  (interactive)
  (fzf-git))

(defun fzf-fzf-directory ()
  (interactive)
  (fzf-directory))

(defun fzf-fzf-projectile ()
  (interactive)
  (fzf-projectile))

(defun fzf-fzf-counsel ()
  (interactive)
  (counsel-fzf))

(defun fzf/init-fzf ()
  "initializes fzf-emacs and adds a key binding to `SPC f z'"
  (use-package fasd
    :init
    (progn
      (spacemacs/declare-prefix "fz" "fzf-find")
      (spacemacs/set-leader-keys "fzc" 'counsel-fzf)
      (spacemacs/set-leader-keys "fzd" 'fzf-directory)
      (spacemacs/set-leader-keys "fzf" 'fzf)
      (spacemacs/set-leader-keys "fzG" 'fzf-git)
      (spacemacs/set-leader-keys "fzgf" 'fzf-git-files)
      (spacemacs/set-leader-keys "fzgg" 'fzf-git-grep)
      (spacemacs/set-leader-keys "fzh" 'fzf-hg)
      (spacemacs/set-leader-keys "fzp" 'fzf-projectile)
      )
    )
  )
