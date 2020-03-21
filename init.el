;;(setq max-lisp-sc 10000)
;;(setq max-specpdl-size 10000)


;; (setq url-proxy-services   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
;; 			     ("http" . "127.0.0.1:1080")
;; 			     ("https" . "127.0.0.1:1080")))


(setq package-enable-at-startup nil)
(require 'package)

(setq package-archives '(

                         ("gnu"   . "https://elpa.emacs-china.org/gnu/")

                         ("melpa" . "https://elpa.emacs-china.org/melpa/")

                         ))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))



(use-package diminish
  :ensure t)
(require 'diminish)
(setq use-package-verbose t)







(push (expand-file-name "~/.emacs.d/lisp") load-path)
(defconst *is-a-linux* (eq system-type 'gnu/linux))


;;load path

(setenv "PATH"
        (concat
         "/usr/local/texlive/2019/bin/x86_64-linux" ":"
	 "/usr/bin" ":"
	 "/usr/local/bin" ":"
	 "/usr/lib/jvm/jdk-13.0.2/bin" ":"
	 "/home/alan/.local/bin" ":"
         (getenv  "PATH")
         )
    )
(let (
        (mypaths
         '(
           "/usr/local/texlive/2019/bin/x86_64-linux"
	   	 "/usr/bin"
		 "/usr/local/bin"
		 
           ))
        )
    (setq exec-path (append exec-path mypaths) )
    )




(require 'init-cc-mode)
(require 'init-company)
(require 'init-lsp)

(require 'init-counsel)

(require 'init-debug)
(require 'init-dired)

(require 'init-face)
(require 'init-flycheck)

(require 'init-general)
(require 'init-git)
(require 'init-grep)

(require 'init-helm)
(require 'init-hydra)

(require 'init-inputway)
(require 'init-irony)
(require 'init-ivy)

(require 'init-java)
(require 'init-jump)



(require 'init-nasm)

(require 'init-org)

(require 'init-pdf)
(require 'init-projectile)
(require 'init-python)

(require 'init-scheme)
(require 'init-spell)
(require 'init-swiper)

(require 'init-terminal)
(require 'init-tex)
(require 'init-treemacs)

(require 'init-yasnippet)


(use-package company-lsp
  :ensure t)
(require 'company-lsp)
 (setq 	   company-lsp-enable-recompletion t
      	   company-lsp-async t
       	   company-lsp-cache-candidates 'auto
           company-lsp-match-candidate-predicate 'company-lsp-match-candidate-prefix)

(push 'company-lsp company-backends)



;;(require 'init-leetcode)

















(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monaco" :foundry "APPL" :slant normal :weight normal :height 158 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.0)))))
(use-package molokai-theme
  :ensure t
  :config
  (load-theme 'molokai t))
;; (use-package zenburn-theme
;;   :ensure t
;;   :config
;;   (load-theme 'zenburn t))

(server-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-ivy-buffer-commands '(ivy-switch-buffer-other-window ivy-switch-buffer))
 '(ccls-executable "/snap/bin/ccls")
 '(ccls-sem-highlight-method 'font-lock)
 '(counsel-grep-base-command
   "rg -i -M 120 --no-heading --line-number --color never %s %s" t)
 '(package-selected-packages
   '(color-theme geiser company-anaconda anaconda-mode molokai-theme dap-mode hydra lsp-java lsp-treemacs yasnippet-snippets use-package treemacs-projectile treemacs-magit treemacs-icons-dired synosaurus stickyfunc-enhance rainbow-delimiters org-pdfview multiple-cursors lsp-ui irony-eldoc hungry-delete highlight-symbol highlight-parentheses highlight-numbers function-args flycheck-irony flycheck-color-mode-line expand-region dumb-jump dired-subtree dired-narrow dictionary counsel company-tabnine company-lsp company-irony-c-headers company-irony company-c-headers company-auctex beacon all-the-icons-ivy all-the-icons-dired))
 '(sp-escape-quotes-after-insert nil))
