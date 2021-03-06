;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "dfireBird"
      user-original-name "Aadhish Sriram S"
      user-mail-address "aadhishrm11@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Jetbrains Mono" :size 13))
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package! elcord
  :config
  (setq elcord-use-major-mode-as-main-icon t)
  :init (elcord-mode))

(use-package! omnisharp
  :hook ((csharp-mode . omnisharp-mode)
         (csharp-mode . company-mode)
         (csharp-mode . flycheck-mode)))

(use-package! pkgbuild-mode
  :config
  (autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
  (setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                                auto-mode-alist)))

(use-package! ace-window
  :bind
  ("M-o"  . ace-window))

(use-package! mmm-mode
  :config
  (setq mmm-global-mode 'maybe)
  (setq mmm-submode-decoration-level 0))

(use-package! graphql-mode
  :config
  (mmm-add-classes
    '((js-graphql
          :submode graphql-mode
          :face mmm-declaration-submode-face
          :front "[^a-zA-Z]gql`" ;; regex to find the opening tag
          :back "`")))
  (mmm-add-mode-ext-class 'js2-mode nil 'js-graphql))

(display-battery-mode t)

(use-package! nyan-mode
  :init (nyan-mode t)
  :config
  (setq nyan-animate-nyancat t)
  (setq nyan-wavy-trail t)
  (setq nyan-bar-length 25)
  (nyan-start-animation))

(use-package! prettier-js
  :bind ("C-c f")
  :hook
  ((js2-mode . prettier-js-mode)
   (typescript-mode . prettier-js-mode)
   (rjsx-mode . prettier-js-mode)))
