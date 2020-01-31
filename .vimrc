" *************************************
" encoding setting
" *************************************

let &encoding = 'utf-8'
let &fileencoding = &encoding
let &ambiwidth = 'double'

" *************************************
" behavior
" *************************************

" If this OS is Linux
" set clipboard=unnamedplus
" If this OS is macOS
set clipboard+=unnamed

" スワップファイルを作らない
set noswapfile
" バックアップファイル出力無効
set nobackup
" undoファイル出力無効
set noundofile

" xでヤンクレジスタに格納しない
nnoremap x "_x
nnoremap X "_X

" *************************************
" move
" *************************************

" INSERT時はCtrl + {hjkl}でカーソル移動
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
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
" search
" *************************************

" highlight match text
set hlsearch            

" clear highlights with ESC 2 times
nnoremap <ESC><ESC> :nohlsearch<CR>
" ignore case
set ignorecase
" 検索文字に大文字がある場合は大文字小文字を区別
set smartcase
" incremental serach
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

" バックスペースでなんでも消せるようにする
set backspace=indent,eol,start

" 自動的に改行が入るのを無効化
set textwidth=0
set tabstop=4
set softtabstop=0
" smartindentで増減する幅
set shiftwidth=4
set expandtab

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

" *************************************
" Appearance
" *************************************
"
" disp. filename
set laststatus=2
" Show line numbers
set number
" Wrap text
set wrap

" *************************************
" Key mapping
" *************************************

" jj is ESC
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

" backspace
inoremap <C-b> <BS>

" In normal mode, swap ; and :
nnoremap ; :
nnoremap : ;

" Move to the beginning of a line
noremap <Space>h ^
" Move to the end of a line
noremap <Space>l $

" Add empty line in CR
nnoremap <CR> o<Esc>

" print file path
nnoremap <C-g> 1<C-g>

" *************************************
" comment out
"    caw.vim
" *************************************

nmap <S-C> <Plug>(caw:hatpos:toggle)
vmap <S-C> <Plug>(caw:hatpos:toggle)

" *************************************
" tex 
"    caw.vim
" *************************************

" Hide formula while editing
let g:tex_conceal=''

" *************************************
" snippent
"    neosnippet
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
" imap <expr><TAB>
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
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" kannokanno/previm
autocmd BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open -a Google\ Chrome'
" preview: ctrl p
nnoremap <silent> <C-p> :PrevimOpen<CR>

" *************************************
" openbrowser
"    tyru/open-browser.vim
" *************************************

" disable netrw's gx mapping.
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" *************************************
" dein.vim
" *************************************

" ポップアップを無効化
autocmd FileType python setlocal completeopt-=preview

"dein Scripts-----------------------------
if &compatible
  set nocompatible " Be iMproved
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
    call dein#add('Shougo/deoplete.nvim')
    " if not using neovim
    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif
    let g:deoplete#enable_at_startup = 1

    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    call dein#add('tyru/caw.vim.git')
    call dein#add('davidhalter/jedi-vim', {'lazy': 1, 'on_ft': 'python'})
    " call dein#add('twitvim/twitvim')
    call dein#add('plasticboy/vim-markdown', {'lazy': 1, 'on_ft': 'markdown'})
    call dein#add('kannokanno/previm', {'lazy': 1, 'on_ft': 'markdown'})
    call dein#add('tyru/open-browser.vim')
    call dein#add('lervag/vimtex', {'lazy': 1, 'on_ft': 'tex'})
    call dein#add('thinca/vim-quickrun')
    call dein#add('deris/vim-shot-f')
    call dein#add('Yggdroot/indentLine')
    call dein#add('lambdalisue/fern.vim')

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

" *************************************
" colorscheme
" *************************************

" color scheme
set background=dark
colorscheme hybrid

