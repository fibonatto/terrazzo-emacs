;;; terrazzo-light.el --- Terrazzo light theme -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Sergio Bonatto
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Terrazzo light theme.

;;; Code:

(deftheme terrazzo-light
  "Terrazzo light theme.")

(defconst terrazzo-light-palette
  '((fg          . "#4A4C52")
    (fg-soft     . "#6B6E73")
    (bg          . "#F2F1EE")
    (bg-alt      . "#EAE8E4")
    (bg-soft     . "#E5E3DF")
    (border      . "#D3D0CA")
    (comment     . "#A3A39E")
    (keyword     . "#9A6F96")
    (string      . "#6E9B73")
    (func        . "#5B8FA8")
    (variable    . "#C96A61")
    (number      . "#B08B4F")
    (type        . "#8C9236")
    (property    . "#4A9690")
    (parameter   . "#7C86BC")
    (constant    . "#C0794A")
    (builtin     . "#3F7CA3")
    (macro       . "#C0658A")
    (visual      . "#DCD8D2")
    (gutter      . "#B2AFA8")
    (cursorline  . "#E7E5E1")
    (selection   . "#DCD8D2")
    (search      . "#E9DEB8")
    (ui          . "#E8E6E2")
    (diff-add    . "#DDE8DA")
    (diff-change . "#E9E2C9")
    (diff-delete . "#EAD8D6"))
  "Terrazzo light palette.")

(let ((fg          (cdr (assq 'fg terrazzo-light-palette)))
      (fg-soft     (cdr (assq 'fg-soft terrazzo-light-palette)))
      (bg          (cdr (assq 'bg terrazzo-light-palette)))
      (bg-alt      (cdr (assq 'bg-alt terrazzo-light-palette)))
      (bg-soft     (cdr (assq 'bg-soft terrazzo-light-palette)))
      (border      (cdr (assq 'border terrazzo-light-palette)))
      (comment     (cdr (assq 'comment terrazzo-light-palette)))
      (keyword     (cdr (assq 'keyword terrazzo-light-palette)))
      (string      (cdr (assq 'string terrazzo-light-palette)))
      (func        (cdr (assq 'func terrazzo-light-palette)))
      (variable    (cdr (assq 'variable terrazzo-light-palette)))
      (number      (cdr (assq 'number terrazzo-light-palette)))
      (type        (cdr (assq 'type terrazzo-light-palette)))
      (property    (cdr (assq 'property terrazzo-light-palette)))
      (parameter   (cdr (assq 'parameter terrazzo-light-palette)))
      (constant    (cdr (assq 'constant terrazzo-light-palette)))
      (builtin     (cdr (assq 'builtin terrazzo-light-palette)))
      (macro       (cdr (assq 'macro terrazzo-light-palette)))
      (visual      (cdr (assq 'visual terrazzo-light-palette)))
      (gutter      (cdr (assq 'gutter terrazzo-light-palette)))
      (cursorline  (cdr (assq 'cursorline terrazzo-light-palette)))
      (selection   (cdr (assq 'selection terrazzo-light-palette)))
      (search      (cdr (assq 'search terrazzo-light-palette)))
      (ui          (cdr (assq 'ui terrazzo-light-palette)))
      (diff-add    (cdr (assq 'diff-add terrazzo-light-palette)))
      (diff-change (cdr (assq 'diff-change terrazzo-light-palette)))
      (diff-delete (cdr (assq 'diff-delete terrazzo-light-palette))))

  (custom-theme-set-faces
   'terrazzo-light

   `(default
     ((t (:foreground ,fg :background ,bg))))

   `(cursor
     ((t (:foreground ,bg :background ,fg))))

   `(region
     ((t (:background ,selection))))

   `(hl-line
     ((t (:background ,cursorline))))

   `(fringe
     ((t (:foreground ,gutter :background ,bg))))

   `(vertical-border
     ((t (:foreground ,border))))

   `(window-divider
     ((t (:foreground ,border))))

   `(window-divider-first-pixel
     ((t (:foreground ,border))))

   `(window-divider-last-pixel
     ((t (:foreground ,border))))

   `(fill-column-indicator
     ((t (:foreground ,visual))))

   `(line-number
     ((t (:foreground ,gutter :background ,bg))))

   `(line-number-current-line
     ((t (:foreground ,func :background ,bg :weight bold))))

   `(mode-line
     ((t (:foreground ,fg :background ,bg-alt))))

   `(mode-line-inactive
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(header-line
     ((t (:foreground ,fg :background ,bg-alt))))

   `(minibuffer-prompt
     ((t (:foreground ,func :weight bold))))

   `(link
     ((t (:foreground ,func :underline t))))

   `(shadow
     ((t (:foreground ,fg-soft))))

   `(isearch
     ((t (:foreground ,fg :background ,search :weight bold))))

   `(isearch-fail
     ((t (:foreground ,bg :background ,variable :weight bold))))

   `(lazy-highlight
     ((t (:foreground ,fg :background ,search))))

   `(match
     ((t (:foreground ,fg :background ,search))))

   `(completions-common-part
     ((t (:foreground ,func))))

   `(completions-first-difference
     ((t (:foreground ,keyword :weight bold))))

   `(completions-highlight
     ((t (:background ,cursorline))))

   `(font-lock-comment-face
     ((t (:foreground ,comment :slant italic))))

   `(font-lock-string-face
     ((t (:foreground ,string))))

   `(font-lock-constant-face
     ((t (:foreground ,constant))))

   `(font-lock-variable-name-face
     ((t (:foreground ,variable))))

   `(font-lock-function-name-face
     ((t (:foreground ,func :weight bold))))

   `(font-lock-keyword-face
     ((t (:foreground ,keyword :weight bold))))

   `(font-lock-type-face
     ((t (:foreground ,type))))

   `(font-lock-builtin-face
     ((t (:foreground ,builtin))))

   `(font-lock-warning-face
     ((t (:foreground ,number :weight bold))))

   `(font-lock-preprocessor-face
     ((t (:foreground ,macro))))

   `(font-lock-doc-face
     ((t (:foreground ,comment))))

   `(font-lock-regexp-grouping-backslash
     ((t (:foreground ,property))))

   `(font-lock-regexp-grouping-construct
     ((t (:foreground ,macro))))

   `(error
     ((t (:foreground ,variable :weight bold))))

   `(warning
     ((t (:foreground ,number :weight bold))))

   `(success
     ((t (:foreground ,string :weight bold))))

   `(flymake-error
     ((t (:underline (:style wave :color ,variable)))))

   `(flymake-warning
     ((t (:underline (:style wave :color ,number)))))

   `(flymake-note
     ((t (:underline (:style wave :color ,property)))))

   `(diff-added
     ((t (:foreground ,string :background ,diff-add))))

   `(diff-removed
     ((t (:foreground ,variable :background ,diff-delete))))

   `(diff-changed
     ((t (:foreground ,number :background ,diff-change))))

   `(diff-refine-added
     ((t (:foreground ,fg :background ,diff-add :weight bold))))

   `(diff-refine-removed
     ((t (:foreground ,fg :background ,diff-delete :weight bold))))

   `(diff-refine-changed
     ((t (:foreground ,fg :background ,diff-change :weight bold))))

   `(diff-indicator-added
     ((t (:foreground ,string :background ,bg))))

   `(diff-indicator-removed
     ((t (:foreground ,variable :background ,bg))))

   `(diff-indicator-changed
     ((t (:foreground ,number :background ,bg))))

   `(ediff-current-diff-A
     ((t (:background ,diff-delete))))

   `(ediff-current-diff-B
     ((t (:background ,diff-add))))

   `(ediff-current-diff-C
     ((t (:background ,diff-change))))

   `(org-level-1
     ((t (:foreground ,variable :weight bold))))

   `(org-level-2
     ((t (:foreground ,func :weight bold))))

   `(org-level-3
     ((t (:foreground ,keyword :weight bold))))

   `(org-level-4
     ((t (:foreground ,type :weight bold))))

   `(org-level-5
     ((t (:foreground ,property :weight bold))))

   `(org-level-6
     ((t (:foreground ,constant :weight bold))))

   `(org-level-7
     ((t (:foreground ,parameter :weight bold))))

   `(org-level-8
     ((t (:foreground ,builtin :weight bold))))

   `(org-code
     ((t (:foreground ,string))))

   `(org-verbatim
     ((t (:foreground ,string))))

   `(org-link
     ((t (:foreground ,func :underline t))))

   `(org-block
     ((t (:background ,bg-alt))))

   `(org-block-begin-line
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(org-block-end-line
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(markdown-header-face-1
     ((t (:foreground ,variable :weight bold))))

   `(markdown-header-face-2
     ((t (:foreground ,func :weight bold))))

   `(markdown-header-face-3
     ((t (:foreground ,keyword :weight bold))))

   `(markdown-header-face-4
     ((t (:foreground ,type :weight bold))))

   `(markdown-inline-code-face
     ((t (:foreground ,string))))

   `(markdown-code-face
     ((t (:foreground ,string :background ,bg-alt))))

   `(markdown-link-face
     ((t (:foreground ,func :underline t))))

   `(dired-directory
     ((t (:foreground ,func :weight bold))))

   `(dired-header
     ((t (:foreground ,keyword :weight bold))))

   `(dired-symlink
     ((t (:foreground ,property))))

   `(compilation-error
     ((t (:foreground ,variable :weight bold))))

   `(compilation-warning
     ((t (:foreground ,number :weight bold))))

   `(compilation-info
     ((t (:foreground ,string))))

   `(ansi-color-black
     ((t (:foreground ,bg :background ,bg))))

   `(ansi-color-red
     ((t (:foreground ,variable :background ,variable))))

   `(ansi-color-green
     ((t (:foreground ,string :background ,string))))

   `(ansi-color-yellow
     ((t (:foreground ,number :background ,number))))

   `(ansi-color-blue
     ((t (:foreground ,func :background ,func))))

   `(ansi-color-magenta
     ((t (:foreground ,keyword :background ,keyword))))

   `(ansi-color-cyan
     ((t (:foreground ,property :background ,property))))

   `(ansi-color-white
     ((t (:foreground ,fg :background ,fg))))

   `(tab-bar
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(tab-bar-tab
     ((t (:foreground ,fg :background ,bg :weight bold))))

   `(tab-bar-tab-inactive
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(message-header-name
     ((t (:foreground ,func))))

   `(message-header-subject
     ((t (:foreground ,keyword :weight bold))))

   `(message-header-to
     ((t (:foreground ,variable))))

   `(message-header-cc
     ((t (:foreground ,property))))

   `(message-separator
     ((t (:foreground ,border))))

   `(help-key-binding
     ((t (:foreground ,fg :background ,bg-soft :weight bold))))

   `(button
     ((t (:foreground ,func :underline t))))

   `(outline-1
     ((t (:foreground ,variable :weight bold))))

   `(outline-2
     ((t (:foreground ,func :weight bold))))

   `(outline-3
     ((t (:foreground ,keyword :weight bold))))

   `(outline-4
     ((t (:foreground ,type :weight bold)))))

  (custom-theme-set-variables
   'terrazzo-light

   `(ansi-color-names-vector
     [,bg ,variable ,string ,number ,func ,keyword ,property ,fg])

   `(ansi-color-faces-vector
     [default
      ansi-color-red
      ansi-color-green
      ansi-color-yellow
      ansi-color-blue
      ansi-color-magenta
      ansi-color-cyan
      ansi-color-white])))

(provide-theme 'terrazzo-light)

;;; terrazzo-light.el ends here
