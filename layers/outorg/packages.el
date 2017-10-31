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

(setq outorg-packages
      '(outorg))

(defun outorg/init-outorg ()
  (use-package outorg
    :defer t
    :init (defvar outline-minor-mode-prefix "\M-#")))
