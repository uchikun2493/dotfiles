set guifont=SF\ Mono\ 14
set linespace=0
let                 &encoding = 'utf-8'
let &fileencoding = &encoding
let &ambiwidth = 'double'

" カラー設定
colorscheme adventurous
set t_Co=256

" シンタックスハイライトを有効
syntax enable

" クリップボードの共有
set clipboard+=unnamed

" スワップファイルを作らない
set noswapfile

" *************************************
" 
" 移動
"
" *************************************

" INSERT時はCtrl + {hjkl}でカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

" スクロールする時の送り行の数
set scrolloff=5

" カーソル行の番号をハイライトする
set cursorline

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" vを二回で行末まで選択
vnoremap v $h

" TABにて対応ペアにジャンプ
nnoremap <Tab> %
vnoremap <Tab> %


" カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~ 

" マウスを使う設定
set mouse=a
" sshでログインしている場合などに使う
set ttymouse=xterm2

" *************************************
" 
" 検索
"
" *************************************

" 検索マッチテキストをハイライト 
set hlsearch            

" 検索のハイライトをESC 2回で消す
nnoremap <ESC><ESC> :nohlsearch<CR>

set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set showmatch           " 対応する括弧などをハイライト表示する
set matchtime=3         " 対応括弧のハイライト表示を3秒にする

" 対応括弧に'<'と'>'のペアを追加
set matchpairs& matchpairs+=<:>
inoremap ""  ""<left>
inoremap $$  $$<left>
inoremap ''  ''<left>
inoremap ()  ()<left>
inoremap <>  <><left>
inoremap []  []<left>
vnoremap :  :s/
vnoremap >  >gv
vnoremap <  <gvnoremap {}  {}<left>
nnoremap + <c-a>
nnoremap - <c-x>

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

" set list                " 不可視文字の可視化
set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
set tabstop=4
set softtabstop=0
set shiftwidth=4 " smartindentで増減する幅
set expandtab

" *************************************
" 
" キーマッピング
"
" *************************************

" コメントアウト設定(caw)
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

" jjでエスケープ
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;

" *************************************
" 
" Vundle
"
" *************************************

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'neutaaaaan/iosvkem'
Plugin 'tyru/caw.vim.git'
"Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required


