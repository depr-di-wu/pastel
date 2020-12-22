;; Initial (blank) screen.
(setq inhibit-startup-message t) ; Remove startup message.
(scroll-bar-mode -1)             ; Remove toolbars.
(tool-bar-mode -1)
(menu-bar-mode -1)

;; A (placeholder) dark theme. 
;; TODO: replace with custom theme.
(load-theme 'deeper-blue)

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
