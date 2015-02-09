;; init package repositories
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)

;; install packages
(defvar my-packages '(projectile
		      clojure-mode
		      cider
		      color-theme-solarized
		      rainbow-delimiters
		      rainbow-mode
		      theme-changer
		      scss-mode))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; disable menu bar, tool bar and scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; enable delimiters highlight
(show-paren-mode 1)
(global-rainbow-delimiters-mode)

;; show line numbers
(global-linum-mode t)

;; key mappings
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-c i") 'indent-region)

;; no startup msg
(setq inhibit-startup-message t)

;; turn on automatic bracket insertion by pairs.
(electric-pair-mode 1)

;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; setup theme changer
(setq calendar-location-name "Stuttgart, BW")
(setq calendar-latitude 48.7833)
(setq calendar-longitude 9.1833)

(require 'theme-changer)
(change-theme 'solarized-light 'solarized-dark)

;; disable auto compile for scss
(setq scss-compile-at-save nil)
