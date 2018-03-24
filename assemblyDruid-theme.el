(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(deftheme assemblyDruid
  "")

(custom-theme-set-faces
 'assemblyDruid
 '(cursor ((t (:background "DarkSlateGray4"))))
 '(fixed-pitch ((t (:family "Hack"))))
 '(variable-pitch ((t (:family "Hack"))))
 '(escape-glyph ((t (:foreground "DarkSlateGray4"))))
 '(minibuffer-prompt ((t (:background "gray15" :foreground "DarkSlateGray4" :box nil :family "Hack"))))
 '(highlight ((t (:background "gray95" :foreground "gray15"))))
 '(region ((t (:background "gray10" :foreground "DarkSlateGray4" :family "Hack"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 16) (background light)) (:background "yellow")) (((class color) (min-colors 16) (background dark)) (:background "SkyBlue4")) (((class color) (min-colors 8)) (:foreground "black" :background "cyan")) (t (:inverse-video t))))
 '(trailing-whitespace ((t (:inherit show-paren-mismatch-face :underline t))))
 '(font-lock-builtin-face ((t (:background "gray15" :foreground "medium purple"))))
 '(font-lock-comment-delimiter-face ((t (:background "gray15" :foreground "DarkSlateGray4"))))
 '(font-lock-comment-face ((t (:background "gray15" :foreground "DarkSlateGray4"))))
 '(font-lock-constant-face ((t (:foreground "gray95" :weight bold :italic t))))
 '(font-lock-doc-face ((t (:foreground "gray95" :italic t))))
 '(font-lock-function-name-face ((t (:foreground "gray95"))))
 '(font-lock-keyword-face ((t (:foreground "gray95" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "gray95" :weight bold))))
 '(font-lock-preprocessor-face ((t (:background "gray15" :foreground "medium purple"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "gray95"))))
 '(font-lock-type-face ((t (:foreground "gray95" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "gray95"))))
 '(font-lock-warning-face ((t (:inherit error :background "gray15"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:foreground "#9dbbd3" :weight bold :underline t))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#6799CC"))))
 '(fringe ((t (:background "gray15"))))
 '(header-line ((t (:background "gray15" :foreground "#ffffff" :weight bold))))
 '(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
 '(mode-line ((t (:background "gray18" :foreground "DarkSlateGray4" :box (:line-width -1 :color "DarkSlateGray4")))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((t (:box (:line-width 2 :color "DarkSlateGray4")))))
 '(mode-line-inactive ((t (:background "gray15" :foreground "#696e92" :box (:line-width 1 :color "gray0")))))
 '(isearch ((t (:box (:line-width 1 :color "DarkSlateGray4" :style nil) :foreground "DarkSlateGray4" :background "gray15"))))
 '(isearch-fail ((((class color) (min-colors 88) (background light)) (:background "RosyBrown1")) (((class color) (min-colors 88) (background dark)) (:background "red4")) (((class color) (min-colors 16)) (:background "red")) (((class color) (min-colors 8)) (:background "red")) (((class color grayscale)) (:foreground "grey")) (t (:inverse-video t))))
 '(lazy-highlight ((t (:background "gray15" :foreground "#f9b529" :bold t))))
 '(match ((t (:box (:line-width 1 :color "DarkSlateGray4" :style nil) :foreground "DarkSlateGray4" :background "gray15"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:box (:line-width 1 :color "DarkSlateGray4" :style nil) :foreground "DarkSlateGray4" :background "gray15"))))
 '(vertical-border ((t (:foreground "#2a2c3e"))))
 '(diff-file-header ((t (:background "gray15" :foreground "gray95" :weight bold))))
 '(diff-header ((t (:inherit default :foreground "gray95"))))
 '(diff-indicator-changed ((t (:foreground "gray95" :weight bold))))
 '(diff-changed ((t (:foreground "gray95"))))
 '(diff-indicator-removed ((t (:foreground "gray95" :weight bold))))
 '(diff-removed ((t (:foreground "gray95"))))
 '(diff-indicator-added ((t (:foreground "gray95" :weight bold))))
 '(diff-added ((t (:foreground "gray95"))))
 '(diff-hunk-header ((t (:foreground "gray95"))))
 '(diff-refine-removed ((t (:background "gray15" :foreground "gray95" :weight bold))))
 '(diff-refine-added ((t (:background "gray15" :foreground "gray95" :weight bold))))
 '(diff-refine-changed ((t (:background "gray15" :foreground "gray95" :weight bold))))
 '(default ((t (:inherit nil :stipple nil :background "gray15" :foreground "gray95" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Hack")))))

(provide-theme 'assemblyDruid)

(custom-set-variables
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (go-autocomplete go-complete go-direx go-dlv go-eldoc go-errcheck go-fill-struct go-gen-test go-gopath go-guru go-impl go-imports go-mode subatomic-theme color-theme-solarized cargo)))
 '(ring-bell-function (quote ignore))
 '(tool-bar-mode nil))
(custom-set-faces
 )


;;
;;
;; Go Indent
;;
;;
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))