;;ファイルを作るまでも無い設定をここに書く
(add-to-list 'auto-mode-alist '("\\.X.*" . conf-xdefaults-mode));xの設定ファイル
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode));markdownの拡張子は.mdを採用
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . shell-script-mode));zshのシェルスクリプトに対応
(defvar windmove-wrap-around)
(desktop-save-mode 1);起動時に,前回終了していた時に開いていたバッファを一度開いたり,色々復元する
(ffap-bindings);C-x C-fでカーソルの位置にあるファイルパスとURLを入力
(fset 'yes-or-no-p 'y-or-n-p);"yes or no"を"y or n"に
(global-set-key "\C-m" 'newline-and-indent);改行時にインデント
(kill-buffer "*Compile-Log*");謎
(kill-buffer "*scratch*");open-junk-fileがあるからscratchいらないです^^;
(setq delete-by-moving-to-trash t);ごみ箱を有効
(setq dired-listing-switches "-AFlhv");diredでソート順を設定
(setq next-line-add-newlines t);c-nした時に行を追加
(setq user-mail-address "nyrigadake38@gmail.com")
(setq windmove-wrap-around t);Window移動をループする
(setq x-select-enable-clipboard t);クリップボード共有
(setq-default indent-tabs-mode t);インデントをタブでする
(subword-mode 1);CamelCaseの語でも単語単位に分解して編集する
(windmove-default-keybindings);shift + arrow keyでウィンドウ移動

;;ブラウザをOperaに
;;http://d.hatena.ne.jp/portown/20100531/1297222343
(defvar browse-url-firefox-program)
(defvar browse-url-firefox-new-window-is-tab)
(defvar browse-url-new-window-flag)
(setq browse-url-firefox-program "opera")
(setq browse-url-firefox-new-window-is-tab t)
(setq browse-url-new-window-flag t)
