#/bin/sh
git clone https://github.com/w0ng/vim-hybrid.git ~/dotfiles/.vim/color_scheme/vim-hybrid
mkdir -p ~/dotfiles/.vim/colors
ln -sf ~/dotfiles/.vim/color_scheme/vim-hybrid/colors/hybrid.vim ~/dotfiles/.vim/colors/hybrid.vim
