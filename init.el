;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
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
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------

     ;; spacemacs distributions
     spacemacs-completion
     spacemacs-editing
     spacemacs-editing-visual
     ;; spacemacs-evil
     ;; spacemacs-language
     spacemacs-layouts
     ;; spacemacs-misc
     spacemacs-modeline
     spacemacs-navigation
     spacemacs-org
     ;; spacemacs-purpose ;; develop only
     spacemacs-visual

     ;; !!! Chat
     ;; slack

     ;; !!! Checkers
     spell-checking
     (syntax-checking :variables
                      syntax-checking-enable-tooltips t
                      syntax-checking-enable-by-default nil
                      syntax-checking-use-original-bitmaps nil)

     ;; !!! Completion layer
     helm
     (auto-completion :variables
                      ;; `complete' or `nil'
                      auto-completion-return-key-behavior nil
                      ;; `complete', `cycle' or `nil'
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence-delay 0.04
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-sort-by-usage t)

     ;; !!! Emacs layer
     (better-defaults :variables
                      better-defaults-move-to-beginning-of-code-first nil
                      better-defaults-move-to-end-of-code-first nil)
     (org :variables
          org-enable-bootstrap-support t
          org-enable-github-support t
          org-enable-reveal-js-support nil
          org-projectile-file "TODOs.org"
          org-enable-org-journal-support t)

     ;; !!! International support
     (chinese :variables
              chinese-enable-youdao-dict t)

     ;; !!! Programming and markup languages
     (c-c++ :variables c-c++-enable-clang-support nil
            c-c++-default-mode-for-headers 'c-mode)
     ;; emacs-lisp
     (go :variables
         go-use-gocheck-for-testing nil
         go-tab-width 4
         go-use-gometalinter nil)
     html
     java
     (javascript :variables
                 javascript-disable-tern-port-files nil)
     lua
     (markdown :variables
               ;; `eww' or `vmd'
               markdown-live-preview-engine 'eww)
     (python :variables
             python-enable-yapf-format-on-save nil
             ;; `nose' or `pytest'
             python-test-runner 'nose
             python-fill-column 79
             python-tab-width 4
             ;; `on-visit', `on-project-switch' or `nil'
             python-auto-set-local-pyenv-version nil
             ;; `on-visit', `on-project-switch' or `nil'
             python-auto-set-local-pyvenv-virtualenv nil
             python-sort-imports-on-save t)
     ;; shell-scripts
     ;; swift
     (typescript :variables
                 typescript-fmt-on-save t
                 ;; `tide' or `typescript-formatter'
                 typescript-fmt-tool 'tide)
     yaml

     ;; !!! Operating systems
     (osx :variables
          osx-use-option-as-meta t
          osx-use-dictionary-app nil)

     ;; !!! Pair Programming
     floobits

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
     ;; (gtags :variables gtags-enable-by-default t)

     ;; !!! Themes layer
     ;; themes-megapack

     ;; !!! Tools
     dash
     nginx
     speed-reading
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      eslintd-fix
                                      quickrun
                                      vlf
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    spacemacs-evil
                                    spacemacs-language
                                    spacemacs-misc
                                    spacemacs-purpose
                                    )
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading t
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-light
                         spacemacs-dark)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
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
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
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
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
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
   dotspacemacs-loading-progress-bar t
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
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   exec-path-from-shell-check-startup-files nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; emacs-china elpa mirrors
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
          ("org-cn"   . "http://elpa.emacs-china.org/org/")
          ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; Personal Information Configuration
  (setq user-full-name "wowchan")
  (setq user-email-address "wow4chan@gmail.com")

  ;; 自动在文件最后加一个空行
  (setq require-final-newline t)
  ;; 设置不自动保存
  ;; (setq auto-save-mode nil)
  ;; 设置不生成#filename#临时文件
  ;; (setq auto-save-default nil)
  ;; 设置不生成备份文件
  ;; (setq make-backup-files nil)

  ;; 多行移动
  (global-set-key (kbd "C-M-n")
                  (lambda () (interactive) (next-line 5)))
  (global-set-key (kbd "C-M-p")
                  (lambda () (interactive) (previous-line 5)))

  ;; 设置单行的复制以剪切
  (defadvice kill-ring-save (before slickcopy activate compile)
    (interactive
     (if mark-active (list (region-beginning) (region-end))
       (list (line-beginning-position)
             (line-beginning-position 2)))))
  (defadvice kill-region (before slickcut activate compile)
    (interactive
     (if mark-active (list (region-beginning) (region-end))
       (list (line-beginning-position)
             (line-beginning-position 2)))))

  ;; 快捷注释
  (defun optimized-comment-dwim-line (&optional arg)
    (interactive "*P")
    (comment-normalize-vars)
    (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
        (comment-or-uncomment-region (line-beginning-position) (line-end-position))
      (comment-dwim arg)))
  (global-set-key "\M-;" 'optimized-comment-dwim-line)

  ;; 刷新文件
  (defun refresh-file ()
    (interactive)
    (revert-buffer t (not (buffer-modified-p)) t))

  ;; (global-set-key (kbd "M-m m o r") 'refresh-file)
  (global-set-key (kbd "<f5>") 'refresh-file)

  ;; Bind clang-format-region to C-M-tab in all modes:
  (global-set-key [C-M-tab] 'clang-format-region)
  ;; Bind clang-format-buffer to tab on the c++-mode only:
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [tab] 'clang-format-buffer))

  ;; c-c++ code style
  ;; (setq c-default-style "linux")
  (setq c-default-style "java")
  (setq-default c-basic-offset 4)
  (setq default-tab-width 4)

  ;; quickrun config
  (require 'quickrun)
  (global-set-key (kbd "M-m m r r") 'quickrun)
  (global-set-key (kbd "M-m m r s") 'quickrun-shell)
  (global-set-key (kbd "M-m m r a") 'quickrun-with-arg)

  ;; vlf
;;   (require 'vlf-setup)
;;   (defcustom vlf-application 'always
;;     "Determines when `vlf' will be offered on opening files.
;; Possible values are: nil to never use it;
;; `ask' offer `vlf' when file size is beyond `large-file-warning-threshold';
;; `dont-ask' automatically use `vlf' for large files;
;; `always' use `vlf' for all files."
;;     :group 'vlf :type '(radio (const :format "%v " nil)
;;                               (const :format "%v " ask)
;;                               (const :format "%v " dont-ask)
;;                               (const :format "%v" always)))

  ;; html, css and code indent config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  ;; js-mode config
  (setq js-indent-level 2)
  (add-hook 'js2-mode-hook 'eslintd-fix-mode)

  ;; astyle this buffer
  (defun astyle-this-buffer (pmin pmax)
    (interactive "r")
    (shell-command-on-region pmin pmax
                             "astyle" ;; add options here...
                             (current-buffer) t
                             (get-buffer-create "*Astyle Errors*") t))
  (global-set-key (kbd "C-M-S-f") 'astyle-this-buffer)

  ;; highlight-chars
  ;; (add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
  (setq whitespace-style '(spaces tabs newline tab-mark))
  (setq whitespace-display-mappings
        ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
        '(
          ;; (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
          (space-mark 32 [9059] [46])  ; ⍣
          ;; (newline-mark 10 [182 10]) ; 10 LINE FEED
          (newline-mark 10 [10558 10])  ; ⤾
          ;; (tab-mark 9 [128073 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
          (tab-mark 9 [10609 9] [92 9])  ; ⥱
          ;; (tab-mark 9 [128073 9] [92 9])  ; 👉
          ))
  ;; (setq-default whitespace-line-column 80)
  (global-whitespace-mode 1)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(setq custom-file (expand-file-name
                   "custom.el"
                   dotspacemacs-directory))
(load custom-file 'no-error 'no-message)
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
