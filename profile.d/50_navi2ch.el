;;http://navi2ch.sourceforge.net/
(setq load-path
      (append
       (list
	(expand-file-name "~/.emacs.d/navi2ch-1.8.4")
	)
       load-path))

(autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)

;;GUIによって設定されたデータをここに遷す
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(navi2ch-article-auto-range nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
