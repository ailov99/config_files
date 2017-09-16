;; general looks
(custom-set-variables
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify))))

;; scroll one line at a time
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; Melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu", "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Misc
(setq visible-bell 1)
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;; Set ALL files to UNIX line endings
(add-hook 'find-file-hook 'find-file-check-line-endings)
(defun dos-file-endings-p ()
  (string-match "dos" (symbol-name buffer-file-coding-system)))
(defun find-file-check-line-endings ()
  (when (dos-file-endings-p)
    (set-buffer-file-coding-system 'iso-latin-1-unix t)
    (set-buffer-modified-p nil)))

;; disable menu and tool bars
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Buffer navigation MET+ARROW
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(global-linum-mode 1)
(global-hl-line-mode 1)
(set-face-underline-p 'highlight nil)
(set-face-foreground 'highlight nil)

(setq inhibit-startup-message t)


(custom-set-faces
 '(font-lock-comment-delimiter-face ((t (:foreground "forest green"))))
 '(font-lock-comment-face ((t (:foreground "forest green"))))
 '(font-lock-constant-face ((t (:foreground "medium orchid"))))
 '(font-lock-function-name-face ((t (:foreground "medium turquoise"))))
 '(font-lock-keyword-face ((t (:foreground "steel blue" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "dark gray"))))
 '(font-lock-string-face ((t (:foreground "dark salmon"))))
 '(font-lock-variable-name-face ((t (:foreground "dim gray")))))

(set-face-attribute 'default nil :height 180)

;; Verilog
(custom-set-variables
 '(verilog-align-ifelse t)
 '(verilog-auto-delete-trailing-whitespace t)
 '(verilog-auto-inst-param-value t)
 '(verilog-auto-inst-vector nil)
 '(verilog-auto-lineup (quote all))
 '(verilog-auto-newline nil)
 '(verilog-auto-save-policy nil)
 '(verilog-auto-template-warn-unused t)
 '(verilog-case-indent 2)
 '(verilog-cexp-indent 2)
 '(verilog-highlight-grouping-keywords t)
 '(verilog-highlight-modules t)
 '(verilog-indent-level 2)
 '(verilog-indent-level-behavioral 2)
 '(verilog-indent-level-declaration 2)
 '(verilog-indent-level-module 2)
 '(verilog-tab-to-comment t))
