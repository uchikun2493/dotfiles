
" コメントの色だけ設定する
autocmd ColorScheme * highlight Comment guifg=#009080

" コメントの追加・削除を行なう
"nmap <Leader>/ <Plug>(caw:zeropos:toggle)
"vmap <Leader>/ <Plug>(caw:zeropos:toggle)

" tabをspaceに置換する
set tabstop=4
set expandtab
set shiftwidth=4

"caw:hatpos:toggle
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
Plugin 'tyru/caw.vim'

call vundle#end()            " required
filetype plugin indent on    " required
