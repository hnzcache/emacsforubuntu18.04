(use-package company-tabnine
  :ensure t)


(use-package company
  :ensure t
  :bind (("C-c i" . company-ispell))
  :config
;;  (setq tab-always-indent 'complete)
  ;;(add-hook 'after-init-hook 'company-quickhelp-mode)
  (global-company-mode 1)
  
  (add-to-list 'completion-styles 'initials t)
;;  (add-to-list 'company-backends #'company-tabnine)

;;(define-key company-active-map (kbd "C-n") 'company-select-next)

;;(define-key company-active-map (kbd "C-p") 'company-select-previous)

(setq company-idle-delay 0

          company-minimum-prefix-length 3

          company-require-match nil

          company-dabbrev-ignore-case nil

          company-show-numbers t

          company-transformers '(company-sort-by-backend-importance)

          company-continue-commands '(not helm-dabbrev)

          company-dabbrev-downcase nil)
)


(use-package company-auctex
  :ensure t
  :mode (".tex\\'" . LaTeX-mode)
  :init
  (add-hook 'LanTeX-mode-hook
	      (lambda ()
		(add-to-list (make-local-variable 'company-backends)
			     '(company-auctex-labels
			       company-auctex-bibs
			       company-auctex-macros
			       company-auctex-symbols
			       company-auctex-environments)))))





(use-package company-c-headers
  :ensure t
  :config
  (progn
    (setq company-c-headers-path-system '(
                                          "/usr/include/c++/7.4.0"
                                          "/usr/include/x86_64-linux-gnu/c++/7.4.0"
                                          "/usr/include/c++/7.4.0/backward"
                                          "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/include"
                                          "/usr/local/include"
                                          "/usr/lib/gcc/x86_64-pc-linux-gnu/7.4.0/include-fixed"
                                          "/usr/include"
                                          ))
    (add-to-list 'company-backends 'company-c-headers)
    )
  )




(use-package company-irony
  :ensure t
  :after(company)
  :config
  (progn
    (add-to-list 'company-backends 'company-irony)
    )
  )

(use-package company-irony-c-headers
  :ensure t
  :after(company)
  :config
  (progn
    (add-to-list
     'company-backends '(company-irony-c-headers company-irony))
    )
  )




(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(provide 'init-company)
