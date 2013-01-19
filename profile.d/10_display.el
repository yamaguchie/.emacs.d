(auto-image-file-mode);画像表示

(column-number-mode t);カーソルの位置が何文字目かを表示する
(line-number-mode t); カーソルの位置が何行目かを表示する

(global-hl-line-mode);現在行を目立たせる

(require 'saveplace);カーソルの場所を保存する
(setq-default save-place t)

;;ウィンドウの上部に現在の関数名を表示します。
(which-function-mode 1)

;;インデントをタブでする
;;でもこれC系言語だけの設定なんだよなぁ…
(setq-default indent-tabs-mode t)

;;↓の有効にすると,auto-complete-modeが荒ぶるんですよね
;;(require 'whitespace-mode)
;;なので古代使われていたらしき方法で.
;;何やってるのかは良くわからん
;;http://ubulog.blogspot.jp/2007/09/emacs_09.html

(defface my-face-b-1 '((t (:background "#AAAAAA"))) nil)
(defface my-face-b-2 '((t (:background "#C0FFEE"))) nil);コーヒー
(defface my-face-u-1 '((t (:background "#FCFCFC"))) nil)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
  (font-lock-add-keywords
   major-mode
   '(
     ("[ ]" 0 my-face-b-1 append)
     ("\t" 0 my-face-b-2 append)
     ("\n" 0 my-face-u-1 append)
     )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)
(add-hook 'find-file-hooks '(lambda ()
			      (if font-lock-mode
				  nil
				(font-lock-mode t))))
