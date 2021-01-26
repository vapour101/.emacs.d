;; Autogen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(moe-theme projectile haskell-mode arduino-mode csharp-mode rjsx-mode bison-mode gitignore-mode gitconfig-mode gitattributes-mode rainbow-delimiters paredit lsp-mode helpful org-bullets org-plus-contrib undo-tree company magit deadgrep move-text diff-hl minions moody rustic yasnippet-snippets yasnippet flycheck counsel swiper ivy auto-compile use-package))
 '(safe-local-variable-values '((create-lockfiles))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Ensure we have all the package archives we need
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; Ensure we have use-package at our disposal
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

;; Load up our config
(org-babel-load-file "~/.emacs.d/configuration.org")
