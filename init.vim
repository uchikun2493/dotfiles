let                 &encoding = 'utf-8'
let &fileencoding = &encoding
let &ambiwidth = 'double'


" コメントアウトの色だけ変更
autocmd ColorScheme * highlight Comment guifg=#008b8b

" tabの設定
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" caw:hatpos:toggle
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;

"
" Vundle.vim
"
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'neutaaaaan/iosvkem'
Plugin 'tyru/caw.vim.git'
"Plugin 'davidhalter/jedi-vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'

call vundle#end()            " required
filetype plugin indent on    " required


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

" tyru/open-browser.vim
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


set clipboard+=unnamed

