# go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
## go test shortcut
cover () { 
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

# tmux
alias tmux='tmux -2'
alias tmux-dev='cd ~/code/ && tmux new-session \; splitw -h -p 75'
PROMPT="%F{blue}%1d %#%f "

# wireguard
alias wgup="sudo wg-quick up ~/wg.conf"
alias wgdown="sudo wg-quick down ~/wg.conf"

# kubernetes
alias kc="kubectl"
export KUBE_EDITOR=nvim

# homebrew
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
alias ibrew='arch -x86_64 /usr/local/bin/brew'
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv init -)"

# python poetry
export PATH="$HOME/.poetry/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# docker
alias docker=podman
alias docker-compose=podman-compose
setopt HIST_IGNORE_SPACE

# general
alias vim=nvim

# git
alias gitlazy=git add * && git commit -m "Debugging" && git push origin head
alias config='/usr/bin/git --git-dir=/Users/$HOME/.cfg/ --work-tree=/Users/$HOME'
