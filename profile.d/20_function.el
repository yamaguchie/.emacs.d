;;小さい自作関数

(defun close-all-buffers (); => 
  ;;バッファ全部閉じる
  (interactive); => 
  (mapc 'kill-buffer (buffer-list))); => close-all-buffers

(defun code-format-all (); => 
  ;;自動で全選択→コードフォーマット
  (interactive); => 
  (save-excursion; => 
    (mark-whole-buffer); => 
    (indent-region(point-min)(point-max)))); => code-format-custom

(defun action-a-out (); => 
  ;;currentdirのa.outを実行
  (interactive); => 
  (defvar current-dir (expand-file-name "."));shell-command-to-stringには改行がくっついてくるので削除
  (start-process "a.out"; => 
		 "*a.out*"; => 
		 (concat current-dir "/a.out"))); => action-a-out

(defun is-point-whitespace ()
  ;;カーソルの位置は空白です 空白=( |\t|\n) else=nil
  (and(looking-at "[ 	
]")))

(defun is-backward-point-whitespace ()
  ;;カーソルの前の位置の空白を取得
  (save-excursion
    (backward-char)
    (is-point-whitespace)))

(defun is-forward-point-whitespace ()
  ;;カーソルの次の位置の空白を取得
  (save-excursion
    (forward-char)
    (is-point-whitespace)))

(defun is-reverse-point-whitespace-all ()
  ;;カーソルの位置の前には空白文字しかありません
  (not(looking-back "[^ 	
].*")))


(defun move-beginning-of-line-Visual-Stdio-like ()
  ;;Visual StdioライクなC-a,通常はインデントに従いHomeへ,もう一度押すと本来のHome
  (interactive)
  (cond
   ((and(is-backward-point-whitespace)(not(is-point-whitespace))(is-reverse-point-whitespace-all)) (move-beginning-of-line nil))
   (t (back-to-indentation))))
