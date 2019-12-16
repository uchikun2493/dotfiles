" *************************************
" vimの見た目の設定
" *************************************

let &encoding = 'utf-8'
let &fileencoding = &encoding
let &ambiwidth = 'double'

" color scheme
set background=dark
colorscheme hybrid

set t_Co=256

" syntax enable
syntax enable

" *************************************
" 挙動の設定
" *************************************

" クリップボードの共有
" if this OS is Linux
" set clipboard=unnamedplus
" if this OS is macOS
set clipboard+=unnamed

" スワップファイルを作らない
set noswapfile
" バックアップファイル出力無効
set nobackup
" undoファイル出力無効
set noundofile

" xの動作
nnoremap x "_x
" nnoremap x "_x

" ヤンクレジスタに格納されるコマンド
let g:yankring_n_keys = 'Y D'
" default
" let g:yankring_n_keys = 'Y D x X'

" *************************************
" 移動
" *************************************

" INSERT時はCtrl + {hjkl}でカーソル移動
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>

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
" 検索
" *************************************

" 検索マッチテキストをハイライト 
set hlsearch            

" 検索のハイライトをESC 2回で消す
nnoremap <ESC><ESC> :nohlsearch<CR>
" 大文字小文字を区別しない
set ignorecase
" 検索文字に大文字がある場合は大文字小文字を区別
set smartcase
" インクリメンタルサーチ
set incsearch
" 対応する括弧などをハイライト表示する
set showmatch
" 対応括弧のハイライト表示を3秒にする
set matchtime=3

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
" キーマッピング
" *************************************

" jjでエスケープ
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

inoremap <C-b> <BS>

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;

" よく使う割に打ちにくいキーを楽にする
noremap <Space>h ^
noremap <Space>l $

nnoremap <CR> o<Esc>

" *************************************
" caw.vim
" *************************************
"
" コメントアウト設定(caw)
nmap <S-C> <Plug>(caw:hatpos:toggle)
vmap <S-C> <Plug>(caw:hatpos:toggle)

" *************************************
" neosnippet
" *************************************
"
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif



" *************************************
" markdown
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
" openbrowser
" *************************************

" tyru/open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" *************************************
" dein
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
    "
    call dein#add('Shougo/deoplete.nvim')
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    let g:deoplete#enable_at_startup = 1

    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    call dein#add('tyru/caw.vim.git')
    call dein#add('davidhalter/jedi-vim')
    call dein#add('twitvim/twitvim')
    call dein#add('plasticboy/vim-markdown')
    call dein#add('kannokanno/previm')
    call dein#add('tyru/open-browser.vim')
    call dein#add('lervag/vimtex')
    call dein#add('thinca/vim-quickrun')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if has('vim_starting') && dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------

