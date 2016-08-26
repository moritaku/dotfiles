" 文字エンコーディング設定
scriptencoding utf-8
" vimの独自拡張機能を利用する
set nocompatible

" 色付けをon
" syntax on
filetype plugin on
filetype indent on

syntax enable
set background=dark
colorscheme solarized

" バッファを保存しなくても他のバッファを表示できるようになる
set hidden
" コマンドライン補完を便利に
set wildmenu
" タイプ途中のコマンドを画面最下行に表示
set showcmd
" ステータスラインに現在のモードを表示
"set showmode
" 検索語を強調表示
set hlsearch
" オートインデント、改行、インサートモード開始直後にバックスペースで削除できるように
set backspace=indent,eol,start
" オートインデント
set autoindent
" 画面最下行にルーラーを表示
set ruler
" 行番号表示
"set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" SSH クライアントの設定によってはマウスが使える（putty だと最初からいける）
"set mouse=a

" タブ文字の代わりにスペース2個を使う
set shiftwidth=2
set softtabstop=2
set expandtab
" タブ文字、行末など不可視文字を表示
"set list

" キーバインディング
" vimrc編集用キーバインディング
nnoremap <Space>, :<C-u>edit $MYVIMRC<Enter>
" 論理行移動と表示行移動を入れ替え
noremap j  gj
noremap k  gk
noremap gj j
noremap gk k
" 検索結果表示後のハイライトを消す
nnoremap <Esc><Esc> :<C-u>noh<Enter>

" auto comment off
augroup auto_comment_off
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
augroup END
autocmd FileType * setlocal formatoptions-=ro


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/tmorikaw/dotfiles/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/tmorikaw/dotfiles/dein/'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
