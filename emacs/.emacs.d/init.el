(setq vc-follow-symlinks t)

(org-babel-load-file (concat user-emacs-directory "config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cmake-tab-width 4 t)
 '(company-minimum-prefix-length 0)
 '(company-tooltip-align-annotation t t)
 '(css-indent-offset 2)
 '(custom-idle-delay 0 t)
 '(custom-safe-themes
   '("912cac216b96560654f4f15a3a4d8ba47d9c604cbc3b04801e465fb67a0234f0" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "8a379e7ac3a57e64de672dd744d4730b3bdb88ae328e8106f95cd81cbd44e0b6" default))
 '(dashboard-center-content t)
 '(dashboard-set-file-icons t)
 '(dashboard-set-heading-icons t)
 '(dashboard-startup-banner 'logo)
 '(doom-modeline--battery-status t t)
 '(doom-modeline-buffer-encoding nil)
 '(doom-modeline-buffer-file-name-style 'relative-from-project)
 '(doom-modeline-github t)
 '(doom-modeline-icon t)
 '(doom-modeline-lsp t)
 '(doom-modeline-major-mode-icon t)
 '(elcord-client-id "714056771391717468")
 '(elcord-use-major-mode-as-main-icon t)
 '(enable-recursive-mini-buffers t t)
 '(flycheck-check-syntax-automatically '(save mode-enabled))
 '(ivy-use-virtual-buffers t)
 '(lsp-auto-guess-root t)
 '(lsp-logo-io t t)
 '(lsp-prefer-flymake nil t)
 '(lsp-ui-doc-delay 2.0)
 '(lsp-ui-flycheck-enable t t)
 '(lsp-ui-peek-always-show t)
 '(org-pretty-entities t)
 '(package-selected-packages
   '(2048-game typit forge xterm-color wakatime-mode treemacs-icons-dired treemacs-magit treemacs-projectile which-key vue-mode use-package rjsx-mode react-snippets magit emmet-mode elcord doom-modeline company-lsp cmake-mode add-node-modules-path))
 '(projectile-enable-caching t)
 '(projectile-project-search-path '("~/Projects/" "~/Projects/OSS"))
 '(projectile-require-project-root t)
 '(projectile-sort-order 'access-time)
 '(python-fill-docstring-style 'pep-257 t)
 '(python-indent 4 t)
 '(python-indent-guess-indent-offset nil t)
 '(rustic-format-on-save t t)
 '(rustic-indent-method-chain t)
 '(rustic-lsp-server 'rust-analyzer)
 '(safe-local-variable-values
   '((cmake-ide-build-dir . "./build")
     (c-file-offsets
      (innamespace . 0)
      (inline-open . 0)
      (case-label . +))))
 '(sp-escape-quotes-after-insert nil)
 '(treemacs-resize-icons 4 t)
 '(wakatime-cli-path "/usr/bin/wakatime")
 '(wakatime-python-bin nil)
 '(web-mode-code-indent-offset 4)
 '(web-mode-markup-indent-offset 2)
 '(zoom-mode t nil (zoom)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-error ((t (:underline (:style line)))))
 '(flycheck-info ((t (:underline (:style line)))))
 '(flycheck-warning ((t (:underline (:style line))))))
