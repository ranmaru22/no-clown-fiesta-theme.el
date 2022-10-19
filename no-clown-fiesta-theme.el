;;; no-clown-fiesta-theme.el --- Color theme for Emacs 24+. -*- lexical-binding: t -*-

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;; Package-Requires: ((autothemer "0.2"))

;;; Commentary:
;; Color theme for Emacs 24+ that does not look like a unicorn farted on your
;; screen.  Based on no-clown-fiesta.nvim by aktersnurra, converted and extended
;; for Emacs by Alex Sun (ranmaru22).

;; Original nvim theme: https://github.com/aktersnurra/no-clown-fiesta.nvim

;;; Code:
(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(autothemer-deftheme
 no-clown-fiesta
 "Color theme for Emacs 24+ that does not look like a clown puked up the source code."

 ((((class color) (min-colors #xFFFFFF))) ;; GUI only for now

  ;; Color palette
  (fg                 "#E1E1E1")
  (bg                 "#151515")
  (alt-bg             "#202020")
  (accent             "#242424")
  (white              "#E1E1E1")
  (true-white         "#FFFFFF")
  (dark-gray          "#2A2A2A")
  (gray               "#424242")
  (medium-gray        "#727272")
  (light-gray         "#AFAFAF")
  (blue               "#A5D6FF")
  (gray-blue          "#7E97AB")
  (medium-gray-blue   "#A2B5C1")
  (dark-gray-blue     "#424952")
  (cyan               "#88afa2")
  (red                "#CC6666")
  (green              "#90A959")
  (light-green        "#77dd77")
  (yellow             "#F4BF75")
  (orange             "#FFA557")
  (purple             "#AA749F")
  (pale-purple        "#b790d4")
  (dark-purple        "#2a2a66")
  (magenta            "#EFADF9")
  (cursor-bg          "#D0D0D0")
  (cursor-fg          "#151515")
  (sign-add           "#90A959")
  (sign-change        "#82a8c8")
  (sign-delete        "#AC4142")
  (error-red          "#AC4142")
  (warning-orange     "#F4BF75")
  (info-yellow        "#F4BF75")
  (success-green      "#77dd77")
  (hint-blue          "#A5D6FF")
  (hint-green         "#90A959")
  (magit-light-green  "#4f5c32")
  (magit-blue         "#33424f")
  (magit-green        "#3f4928")
  (magit-light-red    "#4f2929")
  (magit-red          "#3f2121"))

 ;; Basic
 ((border                   (:background alt-bg :foreground medium-gray))
  (cursor                   (:background cursor-bg :foreground cursor-fg))
  (hl-line                  (:background dark-gray))
  (line-number              (:foreground gray))
  (line-number-current-line (:background dark-gray :foreground light-gray))
  (default                  (:foreground fg :background bg))
  (fringe                   (:background nil :foreground light-gray))
  (vertical-border          (:background nil :foreground dark-gray))
  (link                     (:foreground hint-blue :underline t))
  (link-visited             (:foreground pale-purple :underline t))
  (match                    (:background accent))
  (highlight                (:background dark-gray-blue))
  (shadow                   (:foreground gray))
  (minibuffer-prompt        (:foreground pale-purple))
  (region                   (:background gray :foreground nil))
  (secondary-selection      (:background medium-gray :foreground nil))
  (trailing-whitespace      (:foreground nil :background error-red))
  (tooltip                  (:background alt-bg :foreground fg))

  (error                    (:inherit 'bold :foreground error-red))
  (warning                  (:inherit 'bold :foreground warning-orange))
  (success                  (:inherit 'bold :foreground success-green))

  ;; Term colors
  (term-color-black   (:foreground gray :background medium-gray))
  (term-color-red     (:foreground red :background error-red))
  (term-color-green   (:foreground green :background light-green))
  (term-color-blue    (:foreground gray-blue :background blue))
  (term-color-yellow  (:foreground orange :background yellow))
  (term-color-magenta (:foreground purple :background magenta))
  (term-color-cyan    (:foreground cyan :background sign-change))
  (term-color-white   (:foreground white :background true-white))

  ;; Pulse
  (pulse-highlight-start-face (:background medium-gray :extend t))

  ;; Show paren
  (show-paren-match            (:foreground blue :weight 'bold :underline t))
  (show-paren-match-expression (:foreground blue :weight 'bold :underline t))
  (show-paren-mismatch         (:background red :weight 'bold :underline t))

  ;; Rainbow delimiter
  (rainbow-delimiters-base-error-face (:foreground red))
  (rainbow-delimiters-base-face       (:foreground fg))
  (rainbow-delimiters-depth-1-face    (:foreground medium-gray-blue))
  (rainbow-delimiters-depth-2-face    (:foreground gray-blue))
  (rainbow-delimiters-depth-3-face    (:foreground cyan))
  (rainbow-delimiters-depth-4-face    (:foreground green))
  (rainbow-delimiters-depth-5-face    (:foreground medium-gray-blue))
  (rainbow-delimiters-depth-6-face    (:foreground gray-blue))
  (rainbow-delimiters-depth-7-face    (:foreground cyan))
  (rainbow-delimiters-depth-8-face    (:foreground green))
  (rainbow-delimiters-depth-9-face    (:foreground medium-gray-blue))
  (rainbow-delimiters-mismatched-face (:foreground red))
  (rainbow-delimiters-unmatched-face  (:foreground red))

  ;; Mode-line
  (mode-line          (:foreground fg :background dark-gray))
  (mode-line-inactive (:foreground medium-gray :background alt-bg))

  ;; Tab-bar
  (tab-bar                    (:foreground medium-gray :background dark-gray))
  (tab-bar-tab                (:foreground fg :weight 'bold :underline t))
  (tab-bar-tab-group-current  (:foreground fg))
  (tab-bar-tab-inactive       (:foreground medium-gray))
  (tab-bar-tab-ungrouped      (:foreground medium-gray))
  (tab-bar-tab-group-inactive (:foreground medium-gray))

  ;; Font lock
  (font-lock-builtin-face           (:foreground white))
  (font-lock-comment-face           (:foreground medium-gray))
  (font-lock-comment-delimiter-face (:foreground medium-gray))
  (font-lock-constant-face          (:foreground white))
  (font-lock-doc-face               (:foreground light-gray))
  (font-lock-doc-markup-face        (:foreground blue))
  (font-lock-doc-string-face        (:foreground medium-gray-blue))
  (font-lock-function-name-face     (:foreground cyan))
  (font-lock-keyword-face           (:foreground gray-blue :weight 'bold))
  (font-lock-preprocessor-face      (:foreground medium-gray-blue))
  (font-lock-reference-face         (:foreground white))
  (font-lock-string-face            (:foreground medium-gray-blue))
  (font-lock-type-face              (:foreground white))
  (font-lock-variable-name-face     (:foreground white))
  (font-lock-warning-face           (:foreground warning-orange))

  ;; Highlight numbers
  (highlight-numbers-number (:foreground red))

  ;; HL Todo
  (hl-todo (:inherit 'bold :foreground yellow))

  ;; Tree Sitter
  (tree-sitter-hl-face:attribute             (:foreground white))
  (tree-sitter-hl-face:comment               (:foreground medium-gray))
  (tree-sitter-hl-face:constant              (:foreground white))
  (tree-sitter-hl-face:constant.builtin      (:foreground white))
  (tree-sitter-hl-face:constructor           (:foreground white))
  (tree-sitter-hl-face:doc                   (:foreground light-gray))
  (tree-sitter-hl-face:escape                (:foreground medium-gray-blue))
  (tree-sitter-hl-face:function              (:foreground cyan))
  (tree-sitter-hl-face:function.builtin      (:foreground cyan))
  (tree-sitter-hl-face:function.call         (:foreground cyan))
  (tree-sitter-hl-face:function.macro        (:foreground cyan))
  (tree-sitter-hl-face:function.special      (:foreground cyan))
  (tree-sitter-hl-face:keyword               (:foreground gray-blue))
  (tree-sitter-hl-face:label                 (:foreground white))
  (tree-sitter-hl-face:method                (:foreground cyan))
  (tree-sitter-hl-face:method.call           (:foreground cyan))
  (tree-sitter-hl-face:number                (:foreground red))
  (tree-sitter-hl-face:operator              (:foreground white))
  (tree-sitter-hl-face:property              (:foreground white))
  (tree-sitter-hl-face:property.definition   (:foreground white))
  (tree-sitter-hl-face:punctuation           (:foreground white))
  (tree-sitter-hl-face:punctuation.bracket   (:foreground white))
  (tree-sitter-hl-face:punctuation.delimiter (:foreground white))
  (tree-sitter-hl-face:punctuation.special   (:foreground medium-gray))
  (tree-sitter-hl-face:string                (:foreground medium-gray-blue))
  (tree-sitter-hl-face:string.special        (:foreground medium-gray-blue))
  (tree-sitter-hl-face:tag                   (:foreground pale-purple))
  (tree-sitter-hl-face:type                  (:foreground white))
  (tree-sitter-hl-face:type.argument         (:foreground white))
  (tree-sitter-hl-face:type.builtin          (:foreground white))
  (tree-sitter-hl-face:type.parameter        (:foreground white))
  (tree-sitter-hl-face:type.super            (:foreground white))
  (tree-sitter-hl-face:variable              (:foreground white))
  (tree-sitter-hl-face:variable.builtin      (:foreground white))
  (tree-sitter-hl-face:variable.parameter    (:foreground white))
  (tree-sitter-hl-face:variable.special      (:foreground white))

  ;; Git
  (git-commit-summary          (:foreground white))
  (git-commit-overlong-summary (:foreground error-red))

  ;; Magit
  (magit-branch                 (:foreground cyan))
  (magit-diff-hunk-header       (:background alt-bg))
  (magit-diff-file-header       (:background alt-bg))
  (magit-log-sha1               (:foreground red))
  (magit-log-author             (:foreground green))
  (magit-diffstat-added         (:foreground sign-add))
  (magit-diffstat-removed       (:foreground sign-delete))
  (magit-diff-added             (:background magit-green))
  (magit-diff-removed           (:background magit-red))
  (magit-diff-added-highlight   (:background magit-light-green))
  (magit-diff-removed-highlight (:background magit-light-red))
  (magit-bisect-bad             (:inherit 'error))
  (magit-bisect-good            (:inherit 'success))
  (magit-bisect-skip            (:inherit 'warning))
  (magit-blame-date             (:foreground blue))
  (magit-blame-dimmed           (:inherit 'shadow))
  (magit-blame-hash             (:foreground orange))
  (magit-blame-heading          (:background alt-bg :extend t))
  (magit-blame-highlight        (:foreground yellow))
  (magit-blame-margin           (:foreground medium-gray-blue))
  (magit-blame-name             (:foreground magenta))
  (magit-blame-summary          (:foreground cyan))
  (magit-branch--local          (:foreground blue))
  (magit-branch-remote          (:foreground magenta))
  (magit-branch-remote-head     (:foreground magenta :box t))
  (magit-branch-upstream        (:inherit 'bold))
  (magit-branch-warning         (:inherit 'warning))
  (magit-cherry-equivalent      (:background alt-bg :foreground magenta))
  (magit-cherry-unmatched       (:background alt-bg :foreground cyan))

  ;; git-gutter
  (git-gutter:added       (:foreground sign-add))
  (git-gutter:deleted     (:foreground sign-delete))
  (git-gutter:modified    (:foreground sign-change))

  ;; isearch (and lazy-highlight)
  (lazy-highlight  (:background nil :foreground orange))
  (isearch         (:inherit 'bold :background nil :foreground orange))
  (isearch-group-1 (:foreground fg :background magenta))
  (isearch-group-2 (:foreground fg :background purple))
  (isearch-fail    (:background error-red :foreground fg))

  ;; Anzu
  (anzu-match-1            (:foreground orange))
  (anzu-match-2            (:foreground magenta))
  (anzu-match-3            (:foreground purple))
  (anzu-mode-line          (:foreground orange))
  (anzu-mode-line-no-match (:foreground red))
  (anzu-replace-highlight  (:inherit 'bold :foreground orange))
  (anzu-replace-to         (:foreground yellow))

  ;; Vertico
  (vertico-current     (:inherit 'highlight))
  (vertico-group-title (:inherit 'bold :foreground medium-gray))

  ;; Consult
  (consult-line-number-prefix  (:inherit 'line-number))
  (consult-line-number-wrapped (:inherit 'line-number :foreground gray-blue))

  ;; Marginalia
  (marginalia-documentation (:foreground medium-gray))
  (marginalia-file-name     (:foreground medium-gray))

  ;; Orderless
  (orderless-match-face-0 (:inherit 'bold :foreground orange))
  (orderless-match-face-1 (:inherit 'bold :foreground blue))
  (orderless-match-face-2 (:inherit 'bold :foreground magenta))
  (orderless-match-face-3 (:inherit 'bold :foreground light-green))

  ;; Corfu
  (corfu-current     (:inherit 'highlight))
  (corfu-bar         (:background medium-gray))
  (corfu-border      (:background medium-gray))
  (corfu-default     (:background alt-bg))
  (corfu-annotations (:foreground medium-gray))
  (corfu-deprecated  (:foreground medium-gray :strike-through t))
  (corfu-echo        (:foreground medium-gray))

  ;; Company (just for compatibility ... use Corfu instead)
  (company-tooltip                      (:background alt-bg))
  (company-tooltip-annotation           (:background alt-bg))
  (company-tooltip-annotation-selection (:background dark-gray))
  (company-tooltip-selection            (:background dark-gray))
  (company-scrollbar-fg                 (:background alt-bg))
  (company-scrollbar-bg                 (:background medium-gray))
  (company-preview                      (:background nil :foreground green))
  (company-preview-common               (:background nil :foreground green))

  ;; org-mode
  (org-default          (:inherit 'variable-pitch :foreground fg))
  (org-block            (:inherit 'fixed-pitch))
  (org-level-1          (:inherit 'variable-pitch :foreground yellow :weight 'bold))
  (org-level-2          (:inherit 'variable-pitch :foreground orange :weight 'bold))
  (org-level-3          (:inherit 'variable-pitch :foreground blue :weight 'bold))
  (org-level-4          (:inherit 'variable-pitch :foreground magenta :weight 'bold))
  (org-level-5          (:inherit 'variable-pitch :foreground purple :weight 'bold))
  (org-level-6          (:inherit 'variable-pitch :foreground green :weight 'bold))
  (org-level-7          (:inherit 'variable-pitch :foreground pale-purple :weight 'bold))
  (org-level-8          (:inherit 'variable-pitch :foreground light-green :weight 'bold))
  (org-quote            (:inherit 'variable-pitch :foreground gray-blue))
  (org-code             (:inherit 'fixed-pitch-serif :foreground green))
  (org-verbatim         (:inherit 'fixed-pitch-serif :foreground blue))
  (org-inline-src-block (:inherit 'fixed-pitch :foreground green))
  (org-todo             (:inherit 'fixed-pitch-serif :foreground red))
  (org-done             (:inherit 'fixed-pitch-serif :foreground success-green))
  (org-column           (:background nil))
  (org-column-title     (:background nil :weight 'bold :underline t))

  ;; Dired
  (dired-directory (:foreground blue :weight 'bold))
  (dired-ignored   (:foreground gray-blue :inherit 'unspecified))
  (dired-header    (:foreground light-gray :weight 'bold :underline t))

  ;; diredfl
  (diredfl-compressed-file-name   (:foreground gray-blue))
  (diredfl-compressed-file-suffix (:foreground gray-blue))
  (diredfl-date-time              (:foreground orange))
  (diredfl-deletion               (:strike-through t))
  (diredfl-deletion-file-name     (:foreground red :strike-through t))
  (diredfl-dir-heading            (:inherit 'bold :foreground yellow :underline t))
  (diredfl-dir-name               (:foreground cyan))
  (diredfl-dir-priv               (:foreground cyan))
  (diredfl-exec-priv              (:foreground green))
  (diredfl-executable-tag         (:foreground green))
  (diredfl-file-name              (:foreground white))
  (diredfl-file-suffix            (:foreground white))
  (diredfl-flag-mark              (:background gray-blue))
  (diredfl-flag-mark-line         (:background gray-blue))
  (diredfl-ignored-file-name      (:foreground gray))
  (diredfl-link-priv              (:foreground magenta))
  (diredfl-no-priv                (:foreground gray))
  (diredfl-number                 (:foreground red))
  (diredfl-other-priv             (:foreground white))
  (diredfl-rare-priv              (:foreground purple))
  (diredfl-read-priv              (:foreground yellow))
  (diredfl-symlink                (:foreground magenta))
  (diredfl-tagged-autofile-name   (:foreground white))
  (diredfl-write-priv             (:foreground red))

  ;; Treemacs
  (treemacs-directory-face       (:foreground white))
  (treemacs-root-face            (:inherit 'bold :foreground yellow :underline t))
  (treemacs-git-added-face       (:foreground green))
  (treemacs-git-commit-diff-face (:foreground blue))
  (treemacs-git-conflict-face    (:foreground orange))
  (treemacs-git-ignored-face     (:foreground gray))
  (treemacs-git-modified-face    (:foreground blue))
  (treemacs-marked-file-face     (:inherit 'highlight))

  ;; ERC
  (erc-notice-face    (:foreground purple))
  (erc-timestamp-face (:foreground green))
  (erc-input-face     (:foreground yellow))
  (erc-my-nick-face   (:foreground yellow)))

 (custom-theme-set-variables
  'no-clown-fiesta
  `(pos-tip-foreground-color ,fg)
  `(pos-tip-background-color ,alt-bg)
  `(ansi-color-names-vector [,gray ,red ,green ,gray-blue ,orange ,purple ,cyan ,white])))

(provide-theme 'no-clown-fiesta)

;; Local Variables:
;; no-byte-compile: t
;; eval: (when (fboundp 'rainbow-mode) (rainbow-mode +1))
;; End:

;;; no-clown-fiesta-theme.el ends here.
