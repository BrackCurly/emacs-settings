;; init package repositories
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)

;; install packages
(defvar my-packages '(projectile
		      clojure-mode
		      cider
		      color-theme-solarized))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

;; disable menu bar and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; load color scheme
(load-theme 'solarized-dark t)

;; show line numbers
(global-linum-mode t)
