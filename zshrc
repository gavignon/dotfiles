export PATH="$PATH:$HOME/.rvm/bin:/usr/local/sbin" # Add RVM to PATH for scripting

source ~/.dotfiles/cache/antigen/antigen.zsh

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Load th oh-my-zsh's library
antigen use oh-my-zsh

# Bundles
#antigen bundle git
antigen bundle gitfast
antigen bundle git-flow
antigen bundle git-extras

antigen bundle common-aliases

antigen bundle brew
antigen bundle docker
antigen bundle gem
antigen bundle ruby
antigen bundle rvm
antigen bundle npm


# Syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# Theme
antigen theme gianu

antigen apply

fpath=(/usr/local/share/zsh-completions $fpath)
