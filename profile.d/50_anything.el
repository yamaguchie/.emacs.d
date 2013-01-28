(require 'anything-startup)
(require 'anything-complete)
(require 'anything-el-swank-fuzzy)
(require 'anything-extension)
(require 'anything-exuberant-ctags)
(require 'anything-git-goto)
;(require 'anything-ipython)
(require 'anything-match-plugin)
(require 'anything-obsolete)
(require 'anything-show-completion)
(require 'descbinds-anything)
(require 'anything-include)

;;http://d.hatena.ne.jp/kitokitoki/20111217/
(defun anything-default-display-buffer (buf)
  (if anything-samewindow
      (switch-to-buffer buf)
    (progn
      (delete-other-windows)
      (split-window (selected-window) nil t)
      (pop-to-buffer buf))))

;;バッファリストをanythingのものに
(global-set-key "\C-xb" 'anything)
