(use-package ivy
	     :ensure t
	     :diminish (ivy-mode)
;;	     :bind (("C-x b" . ivy-switch-buffer))
	     :config
	     (setq ivy-use-virtual-buffers t
                   ivy-dynamic-exhibit-delay-ms 150		   
		   ivy-re-builders-alist '((t . ivy--regex-ignore-order))
		   ivy-initial-inputs-alist nil
		   ivy-count-format "(%d/%d) "
		   ivy-display-style 'fancy))
	     
;; ;;This is ido mode
;; (setq ido-enable-flex-matching t)
;; (setq ido-use-filename-at-point 'guess)
;; (setq ido-everywhere t)
;; (ido-mode 1)





(provide 'init-ivy)
