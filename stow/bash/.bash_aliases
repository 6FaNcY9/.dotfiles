# alias scalalines='fd -e scala --full-path src/ | xargs wc -l | sort -n'
alias aliases='bat ~/.bash_aliases --pager never && bat ~/.local/.bash_aliases --pager never 2>/dev/null'

alias b='bloop'
alias br='bloop exit && bloop about'
alias buffer='subl $BYOBU_RUN_DIR/printscreen'
alias c='code .'
alias cdf='cd $(ls | fzf)'
alias ce='code . && exit'
alias config='cd ~/.dotfiles'
alias dg-with-tests='bloop projects --dot-graph | dot -Tsvg -o dependency-graph.svg'
alias dg='bloop projects --dot-graph | sed "/-test/d" | dot -Tsvg -o dependency-graph.svg'
alias di='touch .envrc .env && direnv allow'
alias ipp='curl ifconfig.me && echo'
alias jps='jps -lvm'
alias ld='lazydocker'
alias new-install-repo='g8 git@github.com:agilesteel/install-seed.g8.git'
alias sbtd='sbt -jvm-debug 5005'
alias sbtnoss='sbt --supershell=false'
alias scalac-phases='scalac -Xshow-phases'
alias scalalines='find . -path "*/src*" -name "*.scala" | xargs wc -l | sort -n'
alias update='sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove && refresh-completions && exit'
alias v='vim'
alias vimc='vim ~/.config/nvim/general/config.vim'
alias vimi='vim ~/.config/nvim/init.vim'
alias vimp='vim ~/.config/nvim/plugins/all.vim'

# Git and GitHub
alias fgco='gco $(gb | fzf)'
alias fgcor='gco --track $(gbr | fzf)'
alias fgcot='gco $(g tag | fzf)'
alias gapaa='gaa -N && gapa .'
alias gca!='gaa && g commit --amend'
alias gcaf='gaa && g commit --fixup'
alias gcam='gaa && gcmsg'
alias gcan!='gaa && g commit --amend --no-edit --no-verify'
alias gcangpf!='gcan! && gpf!'
alias gcas='gaa && g commit --squash'
alias ghdi='gi && gh rcd && gpsup && gh rvw'
alias ghdim='gim && gh rcd && gpsup && gh rvw'
alias ghdip='gi && gh rcdp && gpsup && gh rvw'
alias ghi='gi && gh rc && gpsup && gh rvw'
alias ghim='gim && gh rc && gpsup && gh rvw'
alias ghip='gi && gh rcp && gpsup && gh rvw'
alias gi='g init && gcam "Initial commit"'
alias gim='g init -b master && gcam "Initial commit"'
alias gitalias='alias | grep git | fzf'
alias glol='g log --graph --pretty='\''%C(yellow)%h%Creset -%C(auto)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset'\'''
alias glola='glol --all'
alias gpe='gp && exit'
alias grbio='grbi @{u}'
alias grbiom='grbi origin/$(git_main_branch)'
alias grbom='grb origin/$(git_main_branch)'
alias grhom='grh origin/$(git_main_branch)'
alias groh='grh @{u}'
alias grohh='grhh @{u}'
alias gwipe='gwip && exit'
alias gwipgp='gwip && gp'
alias gwipgpe='gwip && gpe'
alias gwipp='gcmsg "--wip-- [skip ci]" --no-verify --no-gpg-sign'
alias hk='gcam housekeeping && gpe'
alias lg='lazygit'
