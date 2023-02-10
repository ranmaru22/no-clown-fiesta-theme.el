;;; no-clown-fiesta-treemacs.el --- treemacs theme that goes along with no-clown-fiesta-theme -*- lexical-binding: t; no-byte-compile: t; -*-
;;; Commentary:

;;; Code:
(defun no-clown-fiesta-treemacs--line-space-hook ()
  "Set `line-spacing' for treemacs buffer."
  (setq line-spacing 1))

(with-eval-after-load 'treemacs
  (add-hook 'treemacs-mode-hook #'no-clown-fiesta-treemacs--line-space-hook)

  (treemacs-create-theme "no-clown-fiesta"
    :config
    (progn
      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "file" :height 0.85 :v-adjust 0.15))
       :extensions (fallback)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-octicon "repo" :v-adjust -0.2 :height 1.25 :face 'font-lock-variable-name-face))
       :extensions (root-closed root-open)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "folder-open" :height 1.0 :v-adjust 0.0))
       :extensions (dir-open)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "folder" :height 1.0 :v-adjust 0.0))
       :extensions (dir-closed)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-material "close" :size 1.0 :face 'font-lock-keyword-face))
       :extensions (tag-open)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format "%s " (all-the-icons-faicon "chevron-down" :size 0.9 :v-adjust 0.1 :face 'font-lock-keyword-face))
       :extensions (tag-closed)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format "%s " (all-the-icons-faicon "tag" :height 0.9 :face 'font-lock-type-face))
       :extensions (tag-leaf)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-octicon "book"))
       :extensions (license)
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format "%s " (all-the-icons-material "error" :height 0.9 :face 'error))
       :extensions (error)
       :fallback (propertize "• " 'face 'error))

      (treemacs-create-icon
       :icon (format "%s " (all-the-icons-material "warning" :height 0.9 :face 'error))
       :extensions (warning)
       :fallback (propertize "• " 'face 'warning))

      (treemacs-create-icon
       :icon (format  "%s " (all-the-icons-material "info" :height 0.9 :face 'font-lock-string-face))
       :extensions (info)
       :fallback (propertize "• " 'face 'compilation-info))

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "file-image-o" :v-adjust 0.05))
       :extensions ("jpg" "jpeg" "png" "gif" "ico" "tif" "tiff" "svg" "bmp" "psd" "ai" "eps" "indd" "webp")
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "font" :v-adjust 0.05))
       :extensions ("ttf" "otf" "woff2")
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "file-video-o" :height 0.95 :v-adjust 0.05))
       :extensions ("mkv" "avi" "mov" "mp4" "webm")
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "file-audio-o" :v-adjust 0.05))
       :extensions ("mp3" "flac" "opus" "au" "aac" "ogg" "wav" "m4a" "midi")
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-faicon "file-archive-o" :v-adjust 0.0))
       :extensions ("zip" "xz" "tar" "gz" "7z" "rar")
       :fallback 'same-as-icon)

      (treemacs-create-icon
       :icon (format "  %s " (all-the-icons-faicon "git-square" :height 1.0 :v-adjust 0.0))
       :extensions ("gitignore" "git" "gitattributes" "gitconfig" "gitmodules"))

      (treemacs-create-icon
       :icon (format " %s " (all-the-icons-octicon "key" :v-adjust 0.0))
       :extensions ("key" "pem" "p12" "crt" "pub" "gpg" "srl" "csr")
       :fallback 'same-as-icon)
      ))

  (treemacs-load-theme "no-clown-fiesta"))

(provide 'no-clown-fiesta-treemacs)

;;; no-clown-fiesta-treemacs.el ends here
