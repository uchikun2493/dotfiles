" *************************************
"
" vimの見た目の設定
"
" *************************************

" gvimのフォント
" set guifont=SF\ Mono\ 14
" 行間の設定
" set linespace=0
let                 &encoding = 'utf-8'
let &fileencoding = &encoding
let &ambiwidth = 'double'

" カラー設定
colorscheme adventurous
set t_Co=256

" シンタックスハイライトを有効
syntax enable

" *************************************
" 
" 挙動の設定
"
" *************************************

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

" jjでエスケープ
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;

" よく使う割に打ちにくいキーを楽にする
noremap <Space>h ^
noremap <Space>l $

nnoremap <CR> o<Esc>

" *************************************
" 
" caw.vim
"
" *************************************
" コメントアウト設定(caw)
nmap <S-C> <Plug>(caw:hatpos:toggle)
vmap <S-C> <Plug>(caw:hatpos:toggle)

" *************************************
" 
" markdownの設定
"
" *************************************

" plasticboy/vim-markdown
" 折りたたみの禁止
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

" kannokanno/previm
autocmd BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Google\ Chrome'
" ctrl pでプレビュー
nnoremap <silent> <C-p> :PrevimOpen<CR>

" *************************************
" 
" openbrowserの設定
"
" *************************************

" tyru/open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


" *************************************
" 
" dein
"
" *************************************

" ポップアップを無効化
autocmd FileType python setlocal completeopt-=preview

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here like this:
    "call dein#add('Shougo/neosnippet.vim')
    "call dein#add('Shougo/neosnippet-snippets')

    call dein#add('tyru/caw.vim.git')
    call dein#add('davidhalter/jedi-vim')
    call dein#add('twitvim/twitvim')
    call dein#add('plasticboy/vim-markdown')
    call dein#add('kannokanno/previm')
    call dein#add('tyru/open-browser.vim')

    " Required:
    call dein#end()
    call dein#save_state()
    endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

