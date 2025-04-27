(setq vc-follow-symlinks t)

(org-babel-load-file (concat user-emacs-directory "config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((lsp-rust-analyzer-cargo-extra-env .
                                        ["RUSTC_BOOTSTRAP=1"])
     (lsp-rust-analyzer-rustc-source . "./Cargo.toml")
     (lsp-rust-analyzer-cargo-sysroot-src . "./library")
     (lsp-rust-analyzer-cargo-build-scripts-invocation-strategy . "once")
     (lsp-rust-analyzer-cargo-build-scripts-invocation-location . "root")
     (lsp-rust-analyzer-proc-macro-server . "/home/firebird/Projects/oss/rustc/build/host/stage0/libexec/rust-analyzer-proc-macro-srv")
     (lsp-rust-analyzer-linked-projects .
                                        ["Cargo.toml" "src/tools/x/Cargo.toml" "src/bootstrap/Cargo.toml" "src/tools/rust-analyzer/Cargo.toml" "compiler/rustc_codegen_cranelift/Cargo.toml" "compiler/rustc_codegen_gcc/Cargo.toml"])
     (lsp-rust-analyzer-check-invocation-strategy . "once")
     (lsp-rust-analyzer-check-invocation-location . "root")
     (current-input-method . japanese-mozc))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-error ((t (:underline (:style line)))))
 '(flycheck-info ((t (:underline (:style line)))))
 '(flycheck-warning ((t (:underline (:style line))))))
