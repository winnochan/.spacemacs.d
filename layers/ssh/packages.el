;;; packages.el --- cscope Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq ssh-packages
      '(
        ssh-config-mode
        ))

(defun ssh/init-ssh-config-mode ()
  (use-package ssh-config-mode
    :init
    :config
    (progn
      (autoload 'ssh-config-mode "ssh-config-mode" t)
      (add-to-list 'auto-mode-alist '("/\\.ssh/config"   . ssh-config-mode))
      (add-to-list 'auto-mode-alist '("/sshd?_config"    . ssh-config-mode))
      (add-to-list 'auto-mode-alist '("/known_hosts"     . ssh-known-hosts-mode))
      (add-to-list 'auto-mode-alist '("/authorized_keys" . ssh-authorized-keys-mode))
      (add-hook 'ssh-config-mode-hook 'turn-on-font-lock))))
