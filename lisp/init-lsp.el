(use-package lsp-mode
  :requires hydra helm helm-lsp
  :hook ((c++-mode
	 c-mode
	 objc-mode) . lsp)

  :commands lsp
  :config
  (progn
    (require 'lsp-clients)
    (setq lsp-message-project-root-warning t
	    lsp-prefer-flymake nil
	    lsp-restart 'ignore
	    lsp-eldoc-hook nil
	    lsp-eldoc-enable-hover nil
	    lsp-auto-configure nil
	    lsp-enable-symbol-highlighting nil)))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook ((c++-mode
	 c-mode
	 objc-mode) . lsp-ui-mode)
:config
  (setq lsp-ui-doc-enable t
	lsp-ui-doc-use-childframe t
	lsp-ui-doc-position 'top
	lsp-ui-doc-include-signature t
	lsp-ui-sideline-enable nil
	lsp-ui-flycheck-enable t
	lsp-ui-flycheck-list-position 'right
	lsp-ui-flycheck-live-reporting t
	lsp-ui-peek-enable t
	;; lsp-ui-peek-always-show t
	lsp-ui-peek-list-width 60
	lsp-ui-peek-peek-height 25))
   ;; (add-hook 'lsp-mode-hook 'lsp-ui-mode)
;; (use-package 'lsp-imenu
;;   :ensure t
;;   :config
;;   (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
;;   )

;; (use-package lsp-ivy
;;   :ensure t)



  



(use-package lsp-treemacs
  :ensure t
  :commands lsp-treemacs-errors-list)
;; optionally if you want to use debugger






(defvar lsp-language-id-configuration
  '(...
    (python-mode . "python")
   ...))
;; if you are adding the support for your language server in separate repo use
;; (add-to-list 'lsp-language-id-configuration '(python-mode . "python"))

(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "pyls")
                  :major-modes '(python-mode)
                  :server-id 'pyls))
















(provide 'init-lsp)
