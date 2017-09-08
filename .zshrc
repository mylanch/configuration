# Created by newuser for 5.1.1
export ZSH=/home/lanch/.oh-my-zsh
ZSH_THEME="awesomepanda"
source $ZSH/oh-my-zsh.sh
plugins=(git autojump)
alias l='ls -CF'
alias di='sudo docker images'
alias dp='sudo docker ps -a'
source ~/.oh-my-zsh/plugins/incr/incr*.zsh
