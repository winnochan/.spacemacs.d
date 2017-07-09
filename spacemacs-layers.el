;; ----------------------------------------------------------------
;; Example of useful layers you may want to use right away.
;; Uncomment some layer names and press `SPC f e R' (Vim style) or
;; `M-m f e R' (Emacs style) to install them.
;; ----------------------------------------------------------------

spacemacs-completion
spacemacs-editing
spacemacs-editing-visual
;; spacemacs-evil
;; spacemacs-language
spacemacs-layouts
spacemacs-misc
spacemacs-modeline
spacemacs-navigation
spacemacs-org
spacemacs-purpose ;; develop only
spacemacs-visual

;; !!! Checkers
;; spell-checking
;; (syntax-checking :variables
;;                  syntax-checking-enable-tooltips t
;;                  syntax-checking-enable-by-default nil
;;                  syntax-checking-use-original-bitmaps nil)

;; !!! Completion layer
;; ivy
helm
(auto-completion :variables
                 ;; `complete' or `nil'
                 auto-completion-return-key-behavior 'complete
                 ;; `complete', `cycle' or `nil'
                 auto-completion-tab-key-behavior nil
                 auto-completion-complete-with-key-sequence-delay 0.01
                 auto-completion-enable-snippets-in-popup nil
                 auto-completion-enable-sort-by-usage t)

;; !!! Emacs layer
(better-defaults :variables
                 better-defaults-move-to-beginning-of-code-first nil
                 better-defaults-move-to-end-of-code-first nil)

;; (org :variables
;;      org-enable-bootstrap-support t
;;      org-enable-github-support t
;;      org-enable-reveal-js-support nil
;;      org-projectile-file "TODOs.org"
;;      org-enable-org-journal-support t)

;; !!! Programming and markup languages
(c-c++ :variables
       c-c++-enable-clang-support t
       c-c++-enable-clang-format-on-save t
       c-c++-default-mode-for-headers 'c-mode)
emacs-lisp
(go :variables
    go-use-gocheck-for-testing nil
    go-tab-width 4
    go-use-gometalinter nil)
;; html
;; java
;; (javascript :variables
;;             javascript-disable-tern-port-files t)
;; lua
(markdown :variables
          ;; `eww' or `vmd'
          markdown-live-preview-engine 'eww)
(python :variables
        python-enable-yapf-format-on-save t
        ;; `nose' or `pytest'
        python-test-runner 'nose
        python-fill-column 79
        python-tab-width 4
        ;; `on-visit', `on-project-switch' or `nil'
        python-auto-set-local-pyenv-version nil
        ;; `on-visit', `on-project-switch' or `nil'
        python-auto-set-local-pyvenv-virtualenv nil
        python-sort-imports-on-save t)
rust
shell-scripts
;; swift
;; (typescript :variables
;;             typescript-fmt-on-save t
;;             ;; `tide' or `typescript-formatter'
;;             typescript-fmt-tool 'tide)
;; yaml

;; !!! Operating systems
;; (osx :variables
;;      osx-use-option-as-meta t
;;      osx-use-dictionary-app nil)

;; !!! Pair Programming
;; floobits

;; !!! Source control layer
git
github
(version-control :variables
                 version-control-global-margin t
                 ;; `git-gutter', `git-gutter+', and `diff-hl'
                 version-control-diff-tool 'git-gutter+
                 version-control-diff-side 'right)


;; !!! Tags layer
cscope
(gtags :variables gtags-enable-by-default t)

;; !!! Custom
;; more smarter commenter
commenter
e2wm
