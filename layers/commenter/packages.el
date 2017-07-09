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

(setq commenter-packages
      '(
        ;; evil-nerd-commenter
        smart-comment
        ))

;; (defun commenter/init-evil-nerd-commenter ()
;;   (use-package evil-nerd-commenter
;;     :commands evilnc-comment-operator
;;     :init
;;     (progn
;;       (evilnc-default-hotkeys t)
;;       ;; Emacs key bindings
;;       ;; (global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
;;       ;; (global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
;;       ;; (global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
;;       ;; (global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
;;       ;; (spacemacs/set-leader-keys ";" 'evilnc-comment-or-uncomment-lines)
;;       )
;;     :config (spacemacs|hide-lighter 'evil-nerd-commenter-mode)))

(defun commenter/init-smart-comment ()
  (use-package smart-comment
    :init
    (progn
      (add-hook 'c-mode-common-hook
                (lambda ()
                  ;; Preferred comment style
                  (setq comment-start "// "
                        comment-end "")))
      )
    :bind ("M-;" . smart-comment)))
