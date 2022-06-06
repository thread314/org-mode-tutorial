;;Custom settings

(setq org-startup-folded t)
(setq org-startup-indented t)

(defun my/open-main ()
  (interactive)
  (find-file "~/orgnotes/main.org"))

(global-set-key (kbd "C-x C-m") 'my/open-main)

(cua-mode)

;; (setq nano-font-size 8)

;; (add-to-list 'load-path "~/projects/org-mode-tutorial/nano-emacs/")

;; (load-file "~/projects/org-mode-tutorial/nano-emacs/nano.el")

(load-file "~/projects/org-mode-tutorial/sensible-defaults.el/sensible-defaults.el")

(load-file "~/projects/org-mode-tutorial/daviwil-defaults.el")

(use-package doom-themes
  :ensure t
  :preface (defvar region-fg nil) 
  :init (load-theme 'doom-one t))

(unless (package-installed-p 'which-key)
   (package-install 'which-key))

(which-key-mode)


