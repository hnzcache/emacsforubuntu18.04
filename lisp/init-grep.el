(setq-default grep-highlight-matches t
              grep-scroll-output t)
(use-package wgrep
  :ensure t
  :commands (wgrep-setup wgrep-change-to-wgrep-mode)
  :config
  (setq wgrep-auto-save-buffer t))







(provide 'init-grep)
