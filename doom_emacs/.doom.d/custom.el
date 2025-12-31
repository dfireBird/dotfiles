(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2" default))
 '(ignored-local-variable-values
   '((lsp-rust-analyzer-rustc-source . "./Cargo.toml")
     (lsp-rust-analyzer-cargo-sysroot-src . "./library")
     (lsp-rust-analyzer-cargo-run-build-scripts quote t)))
 '(safe-local-variable-directories
   '("/home/firebird/Projects/oss/rustc/"
     "/home/firebird/Projects/oss/rust-analyzer.test/"
     "/home/firebird/Projects/oss/rust-analyzer/" "/home/firebird/.doom.d/"
     "~/emacsconfigs/doom-emacs/"))
 '(safe-local-variable-values
   '((lsp-rust-analyzer-cargo-extra-env quote (("RUSTC_BOOTSTRAP" . 1)))
     (lsp-rust-analyzer-proc-macro-server
      . "build/host/stage0/libexec/rust-analyzer-proc-macro-srv")
     (lsp-rust-analyzer-proc-macro-enable quote t)
     (lsp-rust-analyzer-linked-projects
      . ["Cargo.toml" "compiler/rustc_codegen_cranelift/Cargo.toml"
         "compiler/rustc_codegen_gcc/Cargo.toml" "library/Cargo.toml"
         "src/bootstrap/Cargo.toml" "src/tools/rust-analyzer/Cargo.toml"])
     (lsp-rust-analyzer-cargo-extra-env . ["RUSTC_BOOTSTRAP=1"])
     (lsp-rust-analyzer-rustc-source . "Cargo.toml")
     (lsp-rust-analyzer-cargo-sysroot-src . "library")
     (lsp-rust-analyzer-cargo-build-scripts-invocation-strategy . "once")
     (lsp-rust-analyzer-cargo-build-scripts-invocation-location . "root")
     (lsp-rust-analyzer-proc-macro-server
      . "/home/firebird/Projects/oss/rustc/build/host/stage0/libexec/rust-analyzer-proc-macro-srv")
     (lsp-rust-analyzer-linked-projects
      . ["Cargo.toml" "src/tools/x/Cargo.toml" "src/bootstrap/Cargo.toml"
         "src/tools/rust-analyzer/Cargo.toml"
         "compiler/rustc_codegen_cranelift/Cargo.toml"
         "compiler/rustc_codegen_gcc/Cargo.toml"])
     (lsp-rust-analyzer-check-invocation-strategy . "once")
     (lsp-rust-analyzer-check-invocation-location . "root"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ts-fold-replacement-face ((t (:foreground unspecified :box nil :inherit font-lock-comment-face :weight light)))))
(put 'upcase-region 'disabled nil)
