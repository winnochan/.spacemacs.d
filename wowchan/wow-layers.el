(defvar wow-configuration-layer-path
  '(
    )
  )

(defvar wow-configuration-layers
  '(
    ;; ----------------------------------------------------------------
    ;; Example of useful layers you may want to use right away.
    ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
    ;; <M-m f e R> (Emacs style) to install them.
    ;; ----------------------------------------------------------------

    ;; !!! Checkers
    (spell-checking :variables
                    =enable-flyspell-auto-completion= t
                    spell-checking-enable-auto-dictionary t)
    syntax-checking

    ;; !!! Completion layer
    helm
    auto-completion

    ;; !!! Emacs layer
    better-defaults
    ;; ibuffer
    org

    ;; !!! International support
    ;; (chinese :variables
    ;;          chinese-enable-youdao-dict t)

    ;; !!! Programming and markup languages
    ;; (c-c++ :variables
    ;;        c-c++-default-mode-for-headers 'c++-mode
    ;;        )
    ;; csv
    ;; emacs-lisp
    ;; (go :variables
    ;;     ;; go-use-gometalinter t
    ;;     go-tab-width 4)
    ;; html
    ;; javascript
    ;; markdown
    ;; (python :variables
    ;;         python-test-runner '(pytest node)
    ;;         python-enable-yapf-format-on-save t
    ;;         python-sort-imports-on-save t)
    ;; scala
    ;; shell-script
    ;; vimscript

    ;; !!! Operating systems
    ;; osx

    ;; !!! Source control layer
    ;; git
    ;; github
    ;; version-control

    ;; !!! Spacemacs distribution layers

    ;; !!! Tags layer
    cscope
    ;; (gtags :variables gtags-enable-by-default nil)
    ;; gtags

    ;; Themes layer
    ;; themes-megapack

    ;; !!! Tool layer
    ;; command-log
    ;; imenu-list
    ;; systemd
    ;; (shell :variables
    ;;        shell-default-height 30
    ;;        shell-default-position 'bottom)
    )
  )

(provide 'wow-layers)
