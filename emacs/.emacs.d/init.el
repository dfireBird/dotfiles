(setq vc-follow-symlinks t)

(org-babel-load-file (concat user-emacs-directory "config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elcord-use-major-mode-as-main-icon t)
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (rtags wakatime-mode treemacs-icons-dired treemacs-magit treemacs-projectile which-key vue-mode use-package tide rjsx-mode react-snippets magit lsp-ui emmet-mode elcord doom-modeline dap-mode company-lsp cmake-mode ccls add-node-modules-path)))
 '(safe-local-variable-values
   (quote
    ((c-file-offsets
      (innamespace . 0)
      (inline-open . 0)
      (case-label . +))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
