;;; packages.el --- evil-commentary Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq code-style-packages
      '(window-layout
        e2wm
        ws-butler))

(defun code-style/init-window-layout ()
  (use-package window-layout))

(defun code-style/init-e2wm ()
  (use-package e2wm
    :bind (("M-=" . e2wm:start-management)
           ("M-+" . e2wm:stop-management))))
