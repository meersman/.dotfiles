;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Set programming modes
(setq column-number-indicator-zero-based nil)
(setq auto-mode-alist (cons '("\\.F90$" . f90-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.F$" . f90-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.f$" . f90-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.f90$" . f90-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.fpp$" . f90-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.tex$" . LaTeX-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("makefile" . makefile-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.zshrc" . sh-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.cshrc" . sh-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.alias" . sh-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.glf" . tcl-mode) auto-mode-alist))
(add-to-list 'magic-mode-alist
             '("^#%Module" . tcl-mode))
(setq line-number-mode t)
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))
(dolist (elt interpreter-mode-alist)
  (when (member (car elt) (list "csh" "tcsh"))
        (setcdr elt 'sh-mode))) 

;; enable visual feedback on selections
(setq transient-mark-mode t)

;; set M-g g sequence to goto-line
(global-set-key (kbd "M-g g") 'goto-line)

;; behavior formatting
(set-default 'truncate-lines t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(setq vc-follow-symlinks t)

;; Enable mouse support in terminal
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)     ;; capture mouse events in terminal
  (defun track-mouse (e))) ;; prevent errors

;; Optional: make scrolling smoother
(setq scroll-step 1
      scroll-conservatively 10000
      scroll-margin 0)

;; Stop at top of file when scrolling upwards
(setq scroll-error-top-bottom nil)

;; split vertically when opening multiple files
(setq split-height-threshold nil)
(setq split-width-threshold 0)

;; line numbering and highlighting deprecated for newer Emacs
;; (global-linum-mode t)
;; (setq linum-format "% 4d  ")
;; (set-face-attribute 'linum nil :background "black")
;; (set-face-attribute 'linum nil :foreground "brgreen")
;; (global-hl-line-mode 1)
;; (set-face-background 'hl-line "black")
;; (set-face-attribute 'linum nil :foreground "brgreen")
;; (global-hl-line-mode 1)
;; (set-face-background 'hl-line "black")
 
;; Enable line numbering and highlighting for all buffers
(global-display-line-numbers-mode t)

;; Format line numbers with padding
(setq display-line-numbers-width 4) ;; width in characters
(setq display-line-numbers-width-start t) ;; auto-size to first line if smaller


;; Customize line number face
(set-face-attribute 'line-number nil
                    :background "black"
                    :foreground "#586e75") ;; "brgreen" isn't a standard color name

(set-face-attribute 'line-number-current-line nil
                    :background "black"
                    :foreground "springgreen")

;; Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "black")

;; turn off extra ui features
(setq inhibit-startup-message t)
(setq visible-bell t)
(menu-bar-mode -1)
(tool-bar-mode -1)
;; (scroll-bar-mode -1)

;; display line and column numbers
(setq column-number-mode t)

;; only scroll one line past bottom of screen
(setq scroll-conservatively most-positive-fixnum)

;; YASnippets
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(vi-tilde-fringe yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Make arrow navigation work like linux but with
;; (global-set-key (kbd "C-<right>") 'forward-word)
;; (global-set-key (kbd "C-<left>")  'backward-word)
;; (global-set-key (kbd "C-<down>")  'forward-paragraph)
;; (global-set-key (kbd "C-<up>")    'backward-paragraph)
