;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "dfireBird"
      user-original-name "Aadhish Sriram S"
      user-mail-address "me@dfirebird.dev")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
(setq doom-font (font-spec :family "Jetbrains Mono" :size 13))
(setq doom-unicode-font (font-spec :family "Jetbrains Mono" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
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
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(defun doom/ediff-init-and-example ()
  "ediff the current `init.el' with the example in doom-emacs-dir"
  (interactive)
  (ediff-files (expand-file-name "init.el" doom-user-dir)
               (expand-file-name "init.example.el" (concat doom-emacs-dir "static"))))

(setq projectile-project-search-path '("~/Projects/"))

(use-package! pkgbuild-mode
  :config
  (autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
  (setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode))
                                auto-mode-alist)))

(use-package! ace-window
  :bind ("M-o"  . ace-window))

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
  :hook
  '((js2-mode . prettier-js-mode)
    (typescript-mode . prettier-js-mode)
    (rjsx-mode . prettier-js-mode)))

(use-package! doom-modeline
  :config
  (setq doom-modeline-percent-position nil))

(after! magit
  (setq git-commit-summary-max-length 70))

(map! :leader :map prog-mode-map "C-<tab>" #'+fold/toggle)

(map! "C-s" #'swiper-isearch)

(map! "C-r" #'swiper-isearch-backward)

(after! corfu
  (setq corfu-preselect 'valid))

(map! :when (modulep! :completion corfu)
      :after corfu
      :map corfu-mode-map
      "C-;" #'completion-at-point)

(after! rustic
  (setq rustic-format-on-save nil))

(map! :localleader :map rustic-mode-map "r" #'lsp-rust-analyzer-run)

(after! lsp-mode
  ;; https://github.com/emacs-lsp/lsp-mode/issues/3577#issuecomment-1709232622
  (delete 'lsp-terraform lsp-client-packages)
  (setq lsp-semantic-tokens-enable 't)
  (setq lsp-inlay-hint-enable 't)

  (setq lsp-rust-analyzer-server-command '("/usr/bin/rust-analyzer"))

  ;; go related
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t)
     ("gopls.staticcheck" t t)
     ("gopls.semanticTokens" t t))))

(after! ccls
  (setq ccls-initialization-options '(:index (:comments 2) :completion (:detailedLabel t)))
  (set-lsp-priority! 'ccls 1))


(setq warning-minimum-level :error)

(use-package! flycheck-cask
  :when (modulep! :checkers syntax -flymake)
  :defer t
  :init
  (add-hook! 'emacs-lisp-mode-hook
    (add-hook 'flycheck-mode-hook #'flycheck-cask-setup nil t)))

;; (after! emmet-mode
;;   (add-to-list 'emmet-jsx-major-modes tsx-ts-mode))
;; (add-hook! '(typescript-ts-mode-hook tsx-ts-mode-hook) #'lsp!)
;; (add-hook! '(tsx-ts-mode-hook) #'rjsx-minor-mode #'emmet-mode)


;; (map!
;;  (:map tsx-ts-mode-map
;;        "<" #'rjsx-electric-lt
;;        ">" #'rjsx-electric-gt))

(use-package! lsp-tailwindcss
  :after lsp-mode
  :init
  (setq lsp-tailwindcss-add-on-mode t
        lsp-tailwindcss-server-version "0.14.15"
        lsp-tailwindcss-skip-config-check t))

(after! go-ts-mode
  (setq go-ts-mode-indent-offset 4))

;; Astro
(define-derived-mode astro-mode web-mode "astro")
(setq auto-mode-alist
      (append '((".*\\.astro\\'" . astro-mode))
              auto-mode-alist))
(add-hook #'astro-mode-hook #'lsp)

;; LLM
(after! gptel
  (setq gptel-backend (gptel-make-gh-copilot "Copilot"))
  (gptel-make-anthropic "Claude"
    :stream t))
