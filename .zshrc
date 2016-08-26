# 色合い
eval $(/usr/local/bin/gdircolors ~/private/setting/dircolors-solarized-master/dircolors.ansi-universal)

# ls周り エイリアス
alias ls="gls -AFh --color=auto"
alias ll="gls -slhAF --color=auto"

# 環境変数
export LANG=ja_JP.UTF-8

# 色を使用出来るようにする
autoload -U colors
colors

# 保管
autoload -U compinit
compinit

setopt auto_param_slash      # ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt mark_dirs             # ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt list_types            # 補完候補一覧でファイルの種別を識別マーク表示 (訳注:ls -F の記号)
setopt auto_menu             # 補完キー連打で順に補完候補を自動で補完
setopt auto_param_keys       # カッコの対応などを自動的に補完
setopt interactive_comments  # コマンドラインでも # 以降をコメントと見なす
setopt magic_equal_subst     # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
 
setopt complete_in_word      # 語の途中でもカーソル位置で補完
setopt always_last_prompt    # カーソル位置は保持したままファイル名一覧を順次その場で表示
 
setopt print_eight_bit       # 日本語ファイル名等8ビットを通す
setopt extended_glob         # 拡張グロブで補完(~とか^とか。例えばless *.txt~memo.txt ならmemo.txt 以外の *.txt にマッチ)
setopt globdots              # 明確なドットの指定なしで.から始まるファイルをマッチ
 
setopt list_packed           # リストを詰めて表示


# ヒストリの設定
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# historyコマンドは履歴に登録しない
setopt hist_no_store
# 補完時にヒストリを自動的に展開
setopt hist_expand


# プロンプト
# 1行表示
PROMPT="%~ %# "
# 2行表示
PROMPT="%{${fg[magenta]}%}[%n@%m]%{${reset_color}%} %~
%# "
