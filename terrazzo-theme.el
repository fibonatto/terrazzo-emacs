;; ;;; terrazzo-theme.el --- Terrazzo theme manager -*- lexical-binding: t; -*-

;; ;;; Code:

;; (defconst terrazzo-theme-directory
;;   (file-name-directory (or load-file-name buffer-file-name))
;;   "Directory containing the Terrazzo theme variants.")

;; (defun terrazzo-load (theme)
;;   "Load Terrazzo THEME."
;;   (let ((theme-file
;;          (expand-file-name
;;           (pcase theme
;;             ('terrazzo
;;              "terrazzo-dark.el")
;;             ('terrazzo-dark
;;              "terrazzo-dark.el")
;;             ('terrazzo-light
;;              "terrazzo-light.el")
;;             (_
;;              (user-error "Unknown Terrazzo theme: %s" theme)))
;;           terrazzo-theme-directory)))
;;     (mapc #'disable-theme custom-enabled-themes)
;;     (load theme-file nil nil t)
;;     (enable-theme theme)
;;     (setq terrazzo-current-theme theme)))

;; (defun terrazzo-toggle ()
;;   "Toggle between Terrazzo light and dark themes."
;;   (interactive)
;;   (terrazzo-load
;;    (if (eq terrazzo-current-theme 'terrazzo-light)
;;        'terrazzo-dark
;;      'terrazzo-light)))

;; (defvar terrazzo-current-theme nil
;;   "Currently active Terrazzo theme.")

;; (provide 'terrazzo-theme)

;;; terrazzo-theme.el ends here


;;; terrazzo-theme.el --- Terrazzo theme manager -*- lexical-binding: t; -*-

;;; Code:

(defconst terrazzo-theme-directory
  (file-name-directory (or load-file-name buffer-file-name)))

(defvar terrazzo-current-theme nil)

(defvar terrazzo-system-appearance-state nil)

(defvar terrazzo-system-appearance-timer nil)

(defun terrazzo-system-appearance ()
  "Return the current macOS appearance as `dark' or `light'."
  (if (string-match-p
       "Dark"
       (shell-command-to-string
        "defaults read -g AppleInterfaceStyle 2>/dev/null"))
      'dark
    'light))

(defun terrazzo-load (theme)
  "Load Terrazzo THEME."
  (let ((theme-file
         (expand-file-name
          (pcase theme
            ('terrazzo
             "terrazzo-dark.el")
            ('terrazzo-dark
             "terrazzo-dark.el")
            ('terrazzo-light
             "terrazzo-light.el")
            (_
             (user-error "Unknown Terrazzo theme: %s" theme)))
          terrazzo-theme-directory)))
    (mapc #'disable-theme custom-enabled-themes)
    (load theme-file nil nil t)
    (enable-theme theme)
    (setq terrazzo-current-theme theme)))

(defun terrazzo-toggle ()
  "Toggle between Terrazzo light and dark themes."
  (interactive)
  (terrazzo-load
   (if (eq terrazzo-current-theme 'terrazzo-light)
       'terrazzo-dark
     'terrazzo-light)))

(defun terrazzo-sync-system-appearance ()
  "Load the Terrazzo variant when macOS appearance changes."
  (let ((appearance (terrazzo-system-appearance)))
    (unless (eq appearance terrazzo-system-appearance-state)
      (setq terrazzo-system-appearance-state appearance)
      (terrazzo-load
       (if (eq appearance 'dark)
           'terrazzo-dark
         'terrazzo-light)))))

(terrazzo-sync-system-appearance)

(setq terrazzo-system-appearance-timer
      (run-with-timer
       1 2
       #'terrazzo-sync-system-appearance))

(provide 'terrazzo-theme)

;;; terrazzo-theme.el ends here
