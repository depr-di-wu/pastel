;; Initial (blank) screen.
(setq inhibit-startup-message t) ; Removes startup message.
(scroll-bar-mode -1)             ; Removes toolbars.
(tool-bar-mode -1)
(menu-bar-mode -1)

;; A (placeholder) dark theme. 
(load-theme 'deeper-blue)
;; TODO: Replace with custom theme.
;; Type `M-x load-theme` to see a list of available themes.

;; Package sources.
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
; Checks whether a package archive are already installed.
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))      ; Refreshes the contents.
; Installs use-package if not already exists.
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)             ; Loads use-package.
(setq use-package-always-ensure t) ; Ensure all packages are installed.

;; Ivy (completion)
;; Manual: https://oremacs.com/swiper
(use-package ivy)
(ivy-mode 1)

;; Cancel prompt with ESC
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
