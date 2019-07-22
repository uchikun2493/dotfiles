
# エイリアスの設定
# ls（カラー表示）
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'

export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"

# コマンドラインのclear
alias C='clear'

# 日本語設定
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# "cd"のときについでに"ls"を行う
function chpwd() {
  if [ `ls -Al | wc -l` -eq 0 ]; then
    echo "empty directory";
  else
    ls -a
  fi
}


# 自動でpushdを実行
setopt auto_pushd

# pushdから重複を削除
setopt pushd_ignore_dups

# コマンド入力補完
if [ -f ~/.zsh/auto-fu.zsh ]; then
    source ~/.zsh/auto-fu.zsh
    function zle-line-init () {
        auto-fu-init
    }
    zle -N zle-line-init
    zstyle ':completion:*' completer _oldlist _complete
fi

## コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

# emacsのキーバインド
bindkey -e

# *************************************
# 
# pathの設定
# 
# *************************************

# pyenvの設定
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv PATH
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# vim
export PATH="/usr/local/Cellar/vim/8.1.1700/bin/:$PATH"
