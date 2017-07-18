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

(setq cscope-custom-packages
      '(
        (helm-cscope :toggle (configuration-layer/package-usedp 'helm))
        xcscope
        ))

(defun cscope-custom/init-xcscope ()
  (use-package xcscope
    ;; :commands (cscope-index-files cscope/run-pycscope)
    :init
    (progn
      ;; for python projects, we don't want xcscope to rebuild the databse,
      ;; because it uses cscope instead of pycscope
      (setq cscope-option-do-not-update-database nil
            cscope-display-cscope-buffer t
            cscope-program "gtags-cscope")

      (defun cscope//safe-project-root ()
        "Return project's root, or nil if not in a project."
        (and (fboundp 'projectile-project-root)
             (projectile-project-p)
             (projectile-project-root)))

      (defun cscope/run-pycscope (directory)
        (interactive (list (file-name-as-directory
                            (read-directory-name "Run pycscope in directory: "
                                                 (cscope//safe-project-root)))))
        (let ((default-directory directory))
          (shell-command
           (format "pycscope -R -f '%s'"
                   (expand-file-name "cscope.out" directory))))))))

(defun cscope-custom/init-helm-cscope ()
  (use-package helm-cscope
    :defer t
    :init
    (defun spacemacs/setup-helm-cscope (mode)
      "Setup `helm-cscope' for MODE"
      (spacemacs/set-leader-keys-for-major-mode mode
        "c=" 'helm-cscope-find-assignments-to-this-symbol
        "cc" 'helm-cscope-find-called-function
        "cC" 'helm-cscope-find-calling-this-function
        "cd" 'helm-cscope-find-global-definition
        "ce" 'helm-cscope-find-egrep-pattern
        "cf" 'helm-cscope-find-this-file
        "cF" 'helm-cscope-find-files-including-file
        "ci" 'cscope-index-files
        "cr" 'helm-cscope-find-this-symbol
        "cx" 'helm-cscope-find-this-text-string))
    :config
    (defadvice helm-cscope-find-this-symbol (before cscope/goto activate)
      (evil--jumps-push))))