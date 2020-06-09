(setq vc-follow-symlinks t)

(org-babel-load-file (concat user-emacs-directory "config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elcord-client-id "714056771391717468")
 '(elcord-use-major-mode-as-main-icon t)
 '(org-agenda-files nil)
 '(package-selected-packages
   '(2048-game typit forge xterm-color wakatime-mode treemacs-icons-dired treemacs-magit treemacs-projectile which-key vue-mode use-package rjsx-mode react-snippets magit emmet-mode elcord doom-modeline company-lsp cmake-mode add-node-modules-path))
 '(safe-local-variable-values
   '((cmake-ide-build-dir . "./build")
     (c-file-offsets
      (innamespace . 0)
      (inline-open . 0)
      (case-label . +)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-error ((t (:underline (:style line)))))
 '(flycheck-info ((t (:underline (:style line)))))
 '(flycheck-warning ((t (:underline (:style line))))))
