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

(setq e2wm-packages
      '(window-layout
        e2wm))

(defun e2wm/init-window-layout ()
  (use-package window-layout))

(defun e2wm/init-e2wm ()
  (use-package e2wm
    :bind (("M-=" . e2wm:start-management)
           ("M-+" . e2wm:stop-management))))
