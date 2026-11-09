;;; terrazzo-dark.el --- Terrazzo dark theme -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Sergio Bonatto
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; Terrazzo dark theme.

;;; Code:

(deftheme terrazzo-dark
  "Terrazzo dark theme.")

(defconst terrazzo-dark-palette
'((fg          . "#D6D1C5")
  (fg-soft     . "#AAA69A")
  (bg          . "#30343A")
  (bg-alt      . "#393B40")
  (bg-soft     . "#41434A")
  (border      . "#55565A")

  (comment     . "#92938A")
  (keyword     . "#B7A06B")
  (string      . "#91AD89")
  (func        . "#91A5C0")
  (variable    . "#C88D79")
  (number      . "#9EAB78")
  (type        . "#7BA7B5")
  (property    . "#B29AA5")
  (parameter   . "#83AAA9")
  (constant    . "#C18FAD")
  (builtin     . "#C0A18A")
  (macro       . "#83AAA0")

  (visual      . "#41464C")
  (gutter      . "#7F817D")
  (cursorline  . "#373B40")
  (selection   . "#454C52")
  (search      . "#5C533A")
  (ui          . "#373A3F")
  (diff-add    . "#3B473B")
  (diff-change . "#484334")
  (diff-delete . "#493A37"))
  
  ;; '((fg          . "#D0D0CC")
  ;; (fg-soft     . "#A5A6A3")
  ;; (bg          . "#30343A")
  ;; (bg-alt      . "#363A40")
  ;; (bg-soft     . "#3D4147")
  ;; (border      . "#50545A")

  ;; (comment     . "#929493")
  ;; (keyword     . "#B0A0B9")
  ;; (string      . "#91AA98")
  ;; (func        . "#96A9C6")
  ;; (variable    . "#C99790")
  ;; (number      . "#B9A18A")
  ;; (type        . "#86A9AD")
  ;; (property    . "#91ACA8")
  ;; (parameter   . "#8FAAB7")
  ;; (constant    . "#B5A779")
  ;; (builtin     . "#A1A2BC")
  ;; (macro       . "#BD9BA8")

  ;; (visual      . "#414750")
  ;; (gutter      . "#85888A")
  ;; (cursorline  . "#373C42")
  ;; (selection   . "#454D59")
  ;; (search      . "#57513D")
  ;; (ui          . "#35393F")
  ;; (diff-add    . "#3C473E")
  ;; (diff-change . "#484437")
  ;; (diff-delete . "#493B3B"))

  "Terrazzo dark palette.")

(let ((fg          (cdr (assq 'fg terrazzo-dark-palette)))
      (fg-soft     (cdr (assq 'fg-soft terrazzo-dark-palette)))
      (bg          (cdr (assq 'bg terrazzo-dark-palette)))
      (bg-alt      (cdr (assq 'bg-alt terrazzo-dark-palette)))
      (bg-soft     (cdr (assq 'bg-soft terrazzo-dark-palette)))
      (border      (cdr (assq 'border terrazzo-dark-palette)))
      (comment     (cdr (assq 'comment terrazzo-dark-palette)))
      (keyword     (cdr (assq 'keyword terrazzo-dark-palette)))
      (string      (cdr (assq 'string terrazzo-dark-palette)))
      (func        (cdr (assq 'func terrazzo-dark-palette)))
      (variable    (cdr (assq 'variable terrazzo-dark-palette)))
      (number      (cdr (assq 'number terrazzo-dark-palette)))
      (type        (cdr (assq 'type terrazzo-dark-palette)))
      (property    (cdr (assq 'property terrazzo-dark-palette)))
      (parameter   (cdr (assq 'parameter terrazzo-dark-palette)))
      (constant    (cdr (assq 'constant terrazzo-dark-palette)))
      (builtin     (cdr (assq 'builtin terrazzo-dark-palette)))
      (macro       (cdr (assq 'macro terrazzo-dark-palette)))
      (visual      (cdr (assq 'visual terrazzo-dark-palette)))
      (gutter      (cdr (assq 'gutter terrazzo-dark-palette)))
      (cursorline  (cdr (assq 'cursorline terrazzo-dark-palette)))
      (selection   (cdr (assq 'selection terrazzo-dark-palette)))
      (search      (cdr (assq 'search terrazzo-dark-palette)))
      (ui          (cdr (assq 'ui terrazzo-dark-palette)))
      (diff-add    (cdr (assq 'diff-add terrazzo-dark-palette)))
      (diff-change (cdr (assq 'diff-change terrazzo-dark-palette)))
      (diff-delete (cdr (assq 'diff-delete terrazzo-dark-palette))))

  (custom-theme-set-faces
   'terrazzo-dark


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
   ;; Org: níveis 1-4 bold, 5-8 normal (raros), 6 e 8 itálico
   ;; ---------------------------------------------------------------
   `(org-document-title
     ((t (:foreground ,fg :weight bold))))

   `(org-level-1
     ((t (:foreground ,variable :weight bold))))

   `(org-level-2
     ((t (:foreground ,func :weight bold))))

   `(org-level-3
     ((t (:foreground ,keyword :weight bold))))

   `(org-level-4
     ((t (:foreground ,type :weight bold))))

   `(org-level-5
     ((t (:foreground ,property :weight normal))))

   `(org-level-6
     ((t (:foreground ,constant :weight normal :slant italic))))

   `(org-level-7
     ((t (:foreground ,parameter :weight normal))))

   `(org-level-8
     ((t (:foreground ,builtin :weight normal :slant italic))))

   `(org-todo
     ((t (:foreground ,variable :weight bold))))

   `(org-done
     ((t (:foreground ,string :weight bold))))

   `(org-checkbox
     ((t (:foreground ,func :weight bold))))

   `(org-tag
     ((t (:foreground ,comment :weight normal :slant italic))))

   `(org-date
     ((t (:foreground ,property :underline t))))

   `(org-special-keyword
     ((t (:foreground ,comment :slant italic))))

   `(org-meta-line
     ((t (:foreground ,comment :slant italic))))

   `(org-quote
     ((t (:foreground ,fg-soft :slant italic :extend t))))

   ;; code normal x verbatim itálico: mesma cor, estilos diferentes
   `(org-code
     ((t (:foreground ,string))))

   `(org-verbatim
     ((t (:foreground ,string :slant italic))))

   `(org-link
     ((t (:foreground ,func :underline t))))

   `(org-block
     ((t (:background ,bg-alt :extend t))))

   `(org-block-begin-line
     ((t (:foreground ,comment :background ,bg-alt :slant italic :extend t))))

   `(org-block-end-line
     ((t (:foreground ,comment :background ,bg-alt :slant italic :extend t))))

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

   )

  (custom-theme-set-variables
   'terrazzo-dark

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

(provide-theme 'terrazzo-dark)

;;; terrazzo-dark.el ends here
