;;; terrazzo-light.el --- Terrazzo light theme -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Sergio Bonatto
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Terrazzo light theme.

;;; Code:

(deftheme terrazzo-light
  "Terrazzo light theme.")

(defconst terrazzo-light-palette

  '((fg        . "#1B1F2A")
  (fg-soft     . "#4A505E")
  (bg          . "#faf5e5")
  (bg-alt      . "#EEEADD")
  (bg-soft     . "#E5E1D2")
  (border      . "#D3CEBD")

  (comment     . "#bab8b6")
  (keyword     . "#9d79b1")
  (string      . "#45865B")
  (func        . "#2c67b3")
  (variable    . "#d15a4d")
  (number      . "#BD7948")
  (type        . "#2798a4")
  (property    . "#86bcb9")
  (parameter   . "#65b1cd")
  (constant    . "#A78A34")
  (builtin     . "#7e84bb")
  (macro       . "#d2849b")

  (visual      . "#DCE6F2")
  (gutter      . "#8E8E88")
  (cursorline  . "#e2f1ee")
  (selection   . "#d6e5f8")
  (search      . "#F6DE7A")
  (ui          . "#EAE6D8")
  (diff-add    . "#D6E8C4")
  (diff-change . "#F2E6B0")
  (diff-delete . "#F5CFC8"))

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

   ;; ---------------------------------------------------------------
   ;; Base / UI
   ;; ---------------------------------------------------------------
   `(default
     ((t (:foreground ,fg :background ,bg))))

   `(cursor
     ((t (:foreground ,bg :background ,fg))))

   `(region
     ((t (:background ,selection :extend t))))

   `(secondary-selection
     ((t (:background ,visual :extend t))))

   `(highlight
     ((t (:background ,visual))))

   `(hl-line
     ((t (:background ,cursorline :extend t))))

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
     ((t (:foreground ,gutter :background ,bg :weight normal :slant normal))))

   `(line-number-current-line
     ((t (:foreground ,func :background ,bg :weight bold :slant normal))))

   `(mode-line
     ((t (:foreground ,fg :background ,bg-alt))))

   `(mode-line-inactive
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(mode-line-buffer-id
     ((t (:weight bold))))

   `(mode-line-emphasis
     ((t (:foreground ,func :weight bold))))

   `(header-line
     ((t (:foreground ,fg :background ,bg-alt))))

   `(minibuffer-prompt
     ((t (:foreground ,func :weight bold))))

   `(link
     ((t (:foreground ,func :underline t))))

   `(link-visited
     ((t (:foreground ,keyword :underline t))))

   `(button
     ((t (:foreground ,func :underline t))))

   `(shadow
     ((t (:foreground ,fg-soft))))

   `(escape-glyph
     ((t (:foreground ,macro))))

   `(trailing-whitespace
     ((t (:background ,diff-delete))))

   `(show-paren-match
     ((t (:background ,selection :weight bold))))

   `(show-paren-mismatch
     ((t (:foreground ,bg :background ,variable :weight bold))))

   `(help-key-binding
     ((t (:foreground ,fg :background ,bg-soft :weight bold))))

   ;; ---------------------------------------------------------------
   ;; Busca / completion
   ;; ---------------------------------------------------------------
   `(isearch
     ((t (:foreground ,fg :background ,search :weight bold))))

   `(isearch-fail
     ((t (:foreground ,bg :background ,variable :weight bold))))

   `(lazy-highlight
     ((t (:foreground ,fg :background ,search :weight normal))))

   `(match
     ((t (:foreground ,fg :background ,search :weight bold))))

   `(completions-common-part
     ((t (:foreground ,func))))

   `(completions-first-difference
     ((t (:foreground ,keyword :weight bold))))

   `(completions-highlight
     ((t (:background ,cursorline :extend t))))

   `(completions-annotations
     ((t (:foreground ,comment :slant italic))))

   ;; ---------------------------------------------------------------
   ;; Font-lock (núcleo)
   ;; ---------------------------------------------------------------
   ;; itálico = comentário / documentação
   `(font-lock-comment-face
     ((t (:foreground ,comment :slant italic))))

   `(font-lock-comment-delimiter-face
     ((t (:foreground ,gutter :slant italic))))

   `(font-lock-doc-face
     ((t (:foreground ,fg-soft :slant italic))))

   `(font-lock-doc-markup-face
     ((t (:foreground ,property :slant italic))))

   ;; valores: normal
   `(font-lock-string-face
     ((t (:foreground ,string))))

   `(font-lock-number-face
     ((t (:foreground ,number))))

   `(font-lock-type-face
     ((t (:foreground ,type))))

   ;; predefinido: itálico
   `(font-lock-builtin-face
     ((t (:foreground ,builtin :slant italic))))

   `(font-lock-constant-face
     ((t (:foreground ,constant :slant italic))))

   ;; estrutura: bold
   `(font-lock-keyword-face
     ((t (:foreground ,keyword :weight bold))))

   `(font-lock-function-name-face
     ((t (:foreground ,func :weight bold))))

   ;; chamada de função: mesma cor, sem bold (distingue definição de uso)
   `(font-lock-function-call-face
     ((t (:foreground ,func :weight normal))))

   ;; variáveis: declaração colorida, uso em fg (menos ruído visual).
   ;; Para colorir os usos, troque ,fg por ,parameter.
   `(font-lock-variable-name-face
     ((t (:foreground ,variable))))

   `(font-lock-variable-use-face
     ((t (:foreground ,fg))))

   `(font-lock-property-name-face
     ((t (:foreground ,property))))

   `(font-lock-property-use-face
     ((t (:foreground ,property))))

   ;; pontuação: recua, deixa o código respirar
   `(font-lock-operator-face
     ((t (:foreground ,fg-soft))))

   `(font-lock-punctuation-face
     ((t (:foreground ,fg-soft))))

   `(font-lock-misc-punctuation-face
     ((t (:foreground ,fg-soft))))

   `(font-lock-bracket-face
     ((t (:foreground ,fg-soft))))

   `(font-lock-delimiter-face
     ((t (:foreground ,fg-soft))))

   `(font-lock-negation-char-face
     ((t (:foreground ,variable :weight bold))))

   ;; meta-sintaxe: bold
   `(font-lock-preprocessor-face
     ((t (:foreground ,macro :weight bold))))

   `(font-lock-escape-face
     ((t (:foreground ,macro :weight bold))))

   `(font-lock-warning-face
     ((t (:foreground ,number :weight bold))))

   `(font-lock-regexp-face
     ((t (:foreground ,parameter))))

   `(font-lock-regexp-grouping-backslash
     ((t (:foreground ,property :weight bold))))

   `(font-lock-regexp-grouping-construct
     ((t (:foreground ,macro :weight bold))))

   ;; ---------------------------------------------------------------
   ;; Status
   ;; ---------------------------------------------------------------
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

   ;; ---------------------------------------------------------------
   ;; Diff / ediff
   ;; ---------------------------------------------------------------
   `(diff-header
     ((t (:foreground ,fg :background ,bg-alt :extend t))))

   `(diff-file-header
     ((t (:foreground ,fg :background ,bg-alt :weight bold :extend t))))

   `(diff-hunk-header
     ((t (:foreground ,fg-soft :background ,bg-alt :slant italic :extend t))))

   `(diff-added
     ((t (:foreground ,string :background ,diff-add :extend t))))

   `(diff-removed
     ((t (:foreground ,variable :background ,diff-delete :extend t))))

   `(diff-changed
     ((t (:foreground ,number :background ,diff-change :extend t))))

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
     ((t (:background ,diff-delete :extend t))))

   `(ediff-current-diff-B
     ((t (:background ,diff-add :extend t))))

   `(ediff-current-diff-C
     ((t (:background ,diff-change :extend t))))

   ;; ---------------------------------------------------------------
   ;; Markdown
   ;; ---------------------------------------------------------------
   `(markdown-header-face-1
     ((t (:foreground ,variable :weight bold))))

   `(markdown-header-face-2
     ((t (:foreground ,func :weight bold))))

   `(markdown-header-face-3
     ((t (:foreground ,keyword :weight bold))))

   `(markdown-header-face-4
     ((t (:foreground ,type :weight bold))))

   `(markdown-bold-face
     ((t (:weight bold))))

   `(markdown-italic-face
     ((t (:slant italic))))

   `(markdown-blockquote-face
     ((t (:foreground ,fg-soft :slant italic))))

   `(markdown-inline-code-face
     ((t (:foreground ,string))))

   `(markdown-code-face
     ((t (:foreground ,string :background ,bg-alt :extend t))))

   `(markdown-link-face
     ((t (:foreground ,func :underline t))))

   `(markdown-url-face
     ((t (:foreground ,comment))))

   ;; ---------------------------------------------------------------
   ;; Dired
   ;; ---------------------------------------------------------------
   `(dired-directory
     ((t (:foreground ,func :weight bold))))

   `(dired-header
     ((t (:foreground ,keyword :weight bold))))

   `(dired-symlink
     ((t (:foreground ,property :slant italic))))

   `(dired-marked
     ((t (:foreground ,number :weight bold))))

   `(dired-flagged
     ((t (:foreground ,variable :weight bold))))

   `(dired-ignored
     ((t (:foreground ,comment))))

   ;; ---------------------------------------------------------------
   ;; Compilation
   ;; ---------------------------------------------------------------
   `(compilation-error
     ((t (:foreground ,variable :weight bold))))

   `(compilation-warning
     ((t (:foreground ,number :weight bold))))

   `(compilation-info
     ((t (:foreground ,string))))

   `(compilation-line-number
     ((t (:foreground ,number))))

   ;; ---------------------------------------------------------------
   ;; ANSI (cyan = type/teal, yellow = property/ocre: mais fiéis que antes)
   ;; ---------------------------------------------------------------
   `(ansi-color-black
     ((t (:foreground ,bg :background ,bg))))

   `(ansi-color-red
     ((t (:foreground ,variable :background ,variable))))

   `(ansi-color-green
     ((t (:foreground ,string :background ,string))))

   `(ansi-color-yellow
     ((t (:foreground ,property :background ,property))))

   `(ansi-color-blue
     ((t (:foreground ,func :background ,func))))

   `(ansi-color-magenta
     ((t (:foreground ,keyword :background ,keyword))))

   `(ansi-color-cyan
     ((t (:foreground ,type :background ,type))))

   `(ansi-color-white
     ((t (:foreground ,fg :background ,fg))))

   ;; ---------------------------------------------------------------
   ;; Tabs / mensagens / outline
   ;; ---------------------------------------------------------------
   `(tab-bar
     ((t (:foreground ,fg-soft :background ,bg-alt))))

   `(tab-bar-tab
     ((t (:foreground ,fg :background ,bg :weight bold))))

   `(tab-bar-tab-inactive
     ((t (:foreground ,fg-soft :background ,bg-alt :weight normal))))

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

   `(outline-1
     ((t (:foreground ,variable :weight bold))))

   `(outline-2
     ((t (:foreground ,func :weight bold))))

   `(outline-3
     ((t (:foreground ,keyword :weight bold))))

   `(outline-4
     ((t (:foreground ,type :weight bold))))

   `(outline-5
     ((t (:foreground ,property :weight normal))))

   `(outline-6
     ((t (:foreground ,constant :weight normal :slant italic))))

    ;; Eglot semantic tokens
    `(eglot-semantic-variable
      ((t (:foreground ,variable :weight normal))))

    `(eglot-semantic-definition
      ((t (:weight normal))))

    `(eglot-semantic-declaration
      ((t (:weight normal))))

    `(eglot-highlight-symbol-face
      ((t (:weight normal))))


    ;; ---------------------------------------------------------------
;; Org: academic paper style
;; ---------------------------------------------------------------

;; Document title and metadata
`(org-document-title
  ((t (:foreground ,fg :weight bold))))

`(org-document-info
  ((t (:foreground ,fg-soft))))

`(org-document-info-keyword
  ((t (:foreground ,comment))))

`(org-meta-line
  ((t (:foreground ,comment :slant italic))))

`(org-num ((t (:foreground ,func))))

;; Headings: unified color, hierarchy through typography
`(org-level-1
  ((t (:foreground ,func :weight bold))))

`(org-level-2
  ((t (:foreground ,func :weight bold))))

`(org-level-3
  ((t (:foreground ,func :weight bold))))

`(org-level-4
  ((t (:foreground ,func :weight normal :slant italic))))

`(org-level-5
  ((t (:foreground ,func :weight normal :slant italic))))

`(org-level-6
  ((t (:foreground ,func :weight normal))))

`(org-level-7
  ((t (:foreground ,func :weight normal))))

`(org-level-8
  ((t (:foreground ,func :weight normal))))

;; TODO states
`(org-todo
  ((t (:foreground ,variable :weight bold))))

`(org-done
  ((t (:foreground ,string :weight bold))))

`(org-checkbox
  ((t (:foreground ,func :weight bold))))

;; Metadata
`(org-tag
  ((t (:foreground ,comment :slant italic))))

`(org-date
  ((t (:foreground ,property :underline t))))

`(org-special-keyword
  ((t (:foreground ,comment :slant italic))))

`(org-drawer
  ((t (:foreground ,comment))))

`(org-property-value
  ((t (:foreground ,fg-soft))))

;; Inline markup
`(org-code
  ((t (:foreground ,string :slant italic))))

`(org-verbatim
  ((t (:foreground ,string :slant normal))))

`(org-link
  ((t (:foreground ,func :underline t))))

;; Source blocks
`(org-block
  ((t (:background ,bg-alt :extend t))))

`(org-block-begin-line
  ((t (:foreground ,comment
       :background ,bg-alt
       :slant normal
       :extend t))))

`(org-block-end-line
  ((t (:foreground ,comment
       :background ,bg-alt
       :slant normal
       :extend t))))

;; Quotes
`(org-quote
  ((t (:foreground ,fg-soft :slant italic :extend t))))

;; Tables
`(org-table
  ((t (:foreground ,fg))))

`(org-table-header
  ((t (:foreground ,func :weight bold))))
   )

  (custom-theme-set-variables
   'terrazzo-light

   ;; ordem ANSI: black red green yellow blue magenta cyan white
   `(ansi-color-names-vector
     [,bg ,variable ,string ,property ,func ,keyword ,type ,fg])

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
