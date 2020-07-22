
## alias
alias bd='cd ..'
# exit
alias q='exit'
alias :q='exit'
alias :Q='exit'
# clear
alias c='clear'
alias C='clear'

## git command 
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

## edit vimrc
alias vimrc='vim ~/.vimrc'

## key bindings
# vi mode
# fish_vi_key_bindings
fish_default_key_bindings

## cdしたらls
functions --copy cd standard_cd
function cd
    standard_cd $argv; and ls -a
end

## path
# pyenv
set PATH $HOME/.pyenv/bin $PATH
eval (pyenv init - | source)

# vim path (Mac only)
switch (uname)
case Darwin
    set PATH /usr/local/Cellar/vim/8.1.1700/bin $PATH
end
