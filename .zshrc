# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(
  z zsh-navigation-tools common-aliases 
  rsync cp
  docker docker-compose 
  extract git pip
  colored-man-pages
  catimg
  copyfile
  dircycle
  kubectl
  kubectx
  kube-ps1
)

source $ZSH/oh-my-zsh.sh

export PGDATA=/var/lib/postgres/data15
export PATH=/opt/postgresql15/bin:$PATH
export LD_LIBRARY_PATH=/opt/postgresql15/lib

#export PGPORT=30000
#export PGPASSWORD=pass
#export PGUSER=postgres
#export PGHOST=localhost

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias c="clear"
alias code="codium-insiders"

export HISTSIZE=1000000

export HELMWAVE_TEMPLATER=gomplate
export HELMWAVE_KUBEDOG_ENABLED=true
export HELMWAVE_AUTO_BUILD=true
export HELMWAVE_AUTO_YML=true

PATH="/home/r314tive/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/r314tive/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/r314tive/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/r314tive/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/r314tive/perl5"; export PERL_MM_OPT;

prompt_time() {
  echo -n "%{%F{green}%}"
  echo -n "\ue0b2"
  echo -n "%{%K{black}%}%{%F{white}%}"
  echo -n " "
  echo -n "$(date '+%X ')"
}

build_right_prompt() {
  prompt_time
}

PROMPT='%{%f%b%k%}$(build_prompt)'
RPROMPT+='$(build_right_prompt)'

source ~/projects/kube-ps1/kube-ps1.sh
PROMPT='$(kube_ps1)'$PROMPT
