;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs-base

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation nil

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation nil

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     ;; spacemacs
     spacemacs-completion
     spacemacs-defaults
     ;; spacemacs-docker
     spacemacs-editing
     spacemacs-editing-visual
     ;; spacemacs-evil
     ;; spacemacs-language
     spacemacs-layouts
     ;; spacemacs-misc
     ;; spacemacs-modeline
     (spacemacs-navigation :variables
                           ;; ahs-default-range 'ahs-range-beginning-of-defun
                           ahs-default-range 'ahs-range-display
                           ahs-idle-interval 0.5
                           )
     ;; spacemacs-org
     spacemacs-project
     spacemacs-purpose
     spacemacs-visual

     ;; checker
     ;; (spell-checking :variables
     ;;                 spell-checking-enable-by-default nil
     ;;                 spell-checking-enable-auto-dictionary nil
     ;;                 enable-flyspell-auto-completion nil)
     (syntax-checking :variables
                      syntax-checking-enable-tooltips t
                      syntax-checking-enable-by-default t
                      syntax-checking-use-original-bitmaps nil)

     ;; completion
     helm
     (auto-completion :variables
                      auto-completion-idle-delay 0
                      ;; auto-completion-enable-snippets-in-popup nil
                      auto-completion-enable-sort-by-usage t
                      ;; auto-completion-enable-help-tooltip nil
                      ;; auto-completion-use-company-box nil
                      ;; auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
                      company-minimum-prefix-length 1
                      )
     ;; (templates :variables
     ;;            templates-private-directory (concat dotspacemacs-directory "templates")
     ;;            templates-use-default-templates t)

     ;; emacs
     (better-defaults :variables
                      better-defaults-move-to-beginning-of-code-first nil
                      better-defaults-move-to-end-of-code-first nil)
     (ibuffer :variables
              ibuffer-group-buffers-by 'projects)
     ;; helpful
     ;; (org :variables
     ;;      org-directory "~/.spacemacs.d/org"

     ;;      ;; org-want-todo-bindings t
     ;;      ;; org-enable-bootstrap-support t
     ;;      org-enable-github-support t

     ;;      ;; org-enable-reveal-js-support t
     ;;      ;; org-re-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js@3.8.0"

     ;;      org-projectile-file "TODOs.org"
     ;;      ;; spaceline-org-clock-p t

     ;;      ;; org-enable-org-journal-support t
     ;;      ;; org-journal-dir "~/.spacemacs.d/org/journal/"
     ;;      ;; org-journal-file-format "%Y-%m-%d"
     ;;      ;; org-journal-date-prefix "#+TITLE: "
     ;;      ;; org-journal-date-format "%A, %B %d %Y"
     ;;      ;; org-journal-time-prefix "* "
     ;;      ;; org-journal-time-format ""

     ;;      ;; org-enable-sticky-header t

     ;;      ;; org-enable-hugo-support t
     ;;      ;; org-enable-trello-support t
     ;;      ;; org-bullets-bullet-list '("♠" "♥" "♦" "♣")
     ;;      ;; org-bullets-bullet-list '("☞")

     ;;      ;; org-enable-epub-support t
     ;;      ;; org-enable-jira-support t
     ;;      )

     ;; filetree
     ;; treemacs

     ;; frameworks
     ;; (vue :variables
     ;;      vue-backend 'lsp
     ;;      web-mode-markup-indent-offset 2
     ;;      web-mode-css-indent-offset 2
     ;;      web-mode-code-indent-offset 2
     ;;      web-mode-attr-indent-offset 2)

     ;; lang
     ;; bibtex
     (c-c++ :variables
            c-c++-backend 'lsp-ccls
            c-c++-lsp-enable-semantic-highlight 'rainbow
            ;; c-c++-lsp-semantic-highlight-method 'font-lock

            ;; c-c++-enable-rtags-completion nil
            c-c++-enable-clang-format-on-save t
            c++-enable-organize-includes-on-save t

            ;; c-c++-enable-auto-newline nil
            ;; c-c++-enable-google-style nil
            ;; c-c++-enable-google-newline nil

            ;; c-c++-default-mode-for-headers (when (not (functionp 'c-or-c++-mode)) 'c-mode)

            c-c++-adopt-subprojects t)

     ;; csharp
     ;; csv

     ;; (dart :variables
     ;;       ;; lsp-dart-sdk-dir "~/.zsh/.cache/flutter/bin/cache/dart-sdk/"
     ;;       ;; lsp-enable-on-type-formatting t
     ;;       )
     (emacs-lisp :variables
                 emacs-lisp-hide-namespace-prefix nil)
     ;; (go :variables
     ;;     ;; go-backend 'lsp
     ;;     ;; go-use-gocheck-for-testing t
     ;;     ;; go-use-testify-for-testing t
     ;;     go-format-before-save t
     ;;     go-tab-width 4
     ;;     go-use-golangci-lint t
     ;;     ;; go-test-buffer-name "*go test*"
     ;;     ;; go-use-test-args ""
     ;;     ;; go-test-verbose nil
     ;;     ;; go-run-args ""
     ;;     ;; go-run-command "go run"
     ;;     ;; go-test-command "go test"
     ;;     )
     ;; (html :variables
     ;;       web-fmt-tool 'prettier
     ;;       css-enable-lsp t
     ;;       less-enable-lsp t
     ;;       scss-enable-lsp t
     ;;       web-mode-markup-indent-offset 2
     ;;       web-mode-css-indent-offset 2
     ;;       web-mode-code-indent-offset 2
     ;;       web-mode-enable-auto-pairing t
     ;;       web-mode-enable-css-colorization t
     ;;       web-mode-enable-block-face t
     ;;       web-mode-enable-part-face t
     ;;       web-mode-enable-comment-interpolation t
     ;;       web-mode-enable-heredoc-fontification t
     ;;       web-mode-enable-current-element-highlight t
     ;;       web-mode-enable-current-column-highlight t)
     ;; ipython-notebook
     ;; (java :variables
     ;;       java-backend 'lsp
     ;;       java--ensime-modes '(java-mode))
     (javascript :variables
                 javascript-backend 'tide
                 javascript-fmt-tool 'prettier
                 javascript-import-tool 'import-js
                 javascript-fmt-on-save nil
                 javascript-repl 'nodejs
                 ;; javascript-lsp-linter nil
                 js2-basic-offset 2
                 js-indent-level 2
                 js2-include-node-externs t)
     (json :variables
           json-fmt-tool 'prettier
           json-fmt-on-save nil
           js-indent-level 2)
     ;; (lua)
     (markdown :variables
               markdown-live-preview-engine 'eww)
     ;; (plantuml :variables
     ;;           plantuml-default-exec-mode 'jar
     ;;           plantuml-jar-path "~/.spacemacs.d/3rd/plantuml.jar"
     ;;           org-plantuml-jar-path "~/.spacemacs.d/3rd/plantuml.jar")
     ;; protobuf
     ;; (python :variables
     ;;         ;; python-backend 'anaconda
     ;;         ;; python-lsp-server 'pyls
     ;;         ;; python-lsp-git-root nil
     ;;         ;; python-pipenv-activate nil
     ;;         python-formatter 'yapf
     ;;         ;; python-format-on-save t
     ;;         python-test-runner '(pytest nose)
     ;;         ;; python-save-before-test t
     ;;         python-fill-column 99
     ;;         ;; python-tab-width 4
     ;;         ;; python-spacemacs-indent-guess t
     ;;         ;; python-auto-set-local-pyenv-version 'on-project-switch
     ;;         ;; python-auto-set-local-pyvenv-virtualenv 'on-project-switch
     ;;         ;; python-sort-imports-on-save t
     ;;         ;; spacemacs--python-pyenv-modes nil
     ;;         ;; spacemacs--python-pyvenv-modes nil
     ;;         ;; spacemacs--python-pipenv-modes nil
     ;;         ;; python-shell--interpreter nil
     ;;         ;; python-shell--interpreter-args nil
     ;;         )
     ;; (rust :variables
     ;;       rust-backend 'lsp
     ;;       ;; lsp-rust-server 'rust-analyzer
     ;;       rust-format-on-save t)
     ;; (scala :variables
     ;;        scala-enable-eldoc t
     ;;        scala-auto-insert-asterisk-in-comments t
     ;;        scala-use-unicode-arrows t
     ;;        scala-auto-start-ensime t
     ;;        scala-indent:use-javadoc-style t
     ;;        flycheck-scalastyle-jar "/usr/local/Cellar/scalastyle/1.0.0/libexec/scalastyle_2.12-1.0.0-batch.jar"
     ;;        flycheck-scalastylerc "/usr/local/etc/scalastyle_config.xml")

     (shell-scripts :variables
                    ;; shell-scripts-backend 'lsp
                    sh-basic-offset 2
                    sh-indentation 2
                    smie-indent-basic 2
                    )
     ;; (sql :variables
     ;;      sql-capitalize-keywords t
     ;;      sql-capitalize-keywords-disable-interactive t
     ;;      sql-capitalize-keywords-blacklist '("name")
     ;;      sql-auto-indent t)
     ;; swift
     (typescript :variables
                 ;; typescript-fmt-on-save nil
                 typescript-fmt-tool 'prettier
                 typescript-backend 'tide
                 typescript-linter 'eslint
                 ;; typescript-lsp-linter nil
                 typescript-indent-level 2)
     (yaml :variables
           yaml-enable-lsp t)

     ;; misc
     ;; (multiple-cursors :variables
     ;;                   multiple-cursors-backend 'mc)

     ;; readers
     ;; (dash :variables
     ;;       dash-autoload-common-docsets t
     ;;       helm-dash-docset-newpath "~/Library/Application Support/Dash/DocSets")
     ;; speed-reading

     ;; source-control
     ;; (git :variables
     ;;      ;; git-enable-magit-svn-plugin t
     ;;      ;; git-magit-status-fullscreen t
     ;;      )
     ;; github
     (version-control :variables
                      ;; spacemacs--smerge-ts-full-hint-toggle t
                      ;; version-control-global-margin t
                      ;; version-control-diff-tool 'git-gutter+
                      ;; version-control-diff-side 'right
                      )

     ;; tools
     ;; command-log
     ;; conda
     (dap :variables
          ;; spacemacs--dap-supported-modes nil
          dap-enable-mouse-support nil
          dap-enable-ui-controls nil
          )
     ;; (docker :variables
     ;;         docker-dockerfile-backend 'lsp)
     ;; fasd
     (lsp :variables
          ;; lsp-remap-xref-keybindings t
          ;; lsp-navigation 'both
           ;; lsp-ui-doc-enable t
          ;; lsp-ui-doc-include-signature t
          ;; lsp-ui-sideline-enable nil
          ;; lsp-ui-sideline-show-symbol nil
          ;; lsp-ui-sideline-ignore-duplicate nil
          ;; lsp-layer--active-mode-list nil
          )
     (node :variables
           node-add-modules-path t)
     prettier

     ;; custom
     commenter
     fzf
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      color-theme-sanityinc-tomorrow
                                      ;; exec-path-from-shell
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    company-tern

                                    ;; exec-path-from-shell
                                    zeal-at-point
                                    writeroom-mode
                                    web-beautify
                                    uuidgen
                                    plantuml-mode
                                    password-generator
                                    omnisharp
                                    google-translate
                                    google-c-style
                                    gnuplot
                                    fish-mode
                                    fancy-battery
                                    evil-visualstar
                                    evil-visual-mark-mode
                                    evil-unimpaired
                                    evil-tutor
                                    evil-textobj-line
                                    evil-surround
                                    evil-org
                                    evil-numbers
                                    evil-nerd-commenter
                                    evil-mc
                                    evil-matchit
                                    evil-magit
                                    evil-lisp-state
                                    evil-lion
                                    evil-indent-plus
                                    evil-iedit-state
                                    evil-goggles
                                    evil-exchange
                                    evil-escape
                                    evil-ediff
                                    evil-cleverparens
                                    evil-args
                                    evil-anzu
                                    eval-sexp-fu
                                    ;; elisp-slime-nav
                                    devdocs
                                    ;; browse-at-remote
                                    )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default spacemacs-27.1.pdmp)
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         sanityinc-tomorrow-night
                         spacemacs-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Go Mono"
                               :size 14.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar nil

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers t

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'origami

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir "~/.emacs.d/.cache/server"

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'all

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t
   ))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (load-file (concat dotspacemacs-directory "user-init.el")))

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  (load-file (concat dotspacemacs-directory "user-load.el")))

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (load-file (concat dotspacemacs-directory "user-config.el")))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(setq custom-file (expand-file-name
                   "custom.el"
                   dotspacemacs-directory))
(load custom-file 'no-error 'no-message)
