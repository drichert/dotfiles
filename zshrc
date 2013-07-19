
# Pathdd /home/drichert/local/opt/texlive/2011/texmf/doc/man to MANPATH, if not dynamically determined.
#  Add /home/drichert/local/opt/texlive/2011/texmf/doc/info to INFOPATH.
#
#   Most importantly, add /home/drichert/local/opt/texlive/2011/bin/x86_64-linux
#
#
export PATH=$HOME/local/bin:$HOME/bin:$PATH

# TeX paths
export PATH=$HOME/local/opt/texlive/2011/bin/x86_64-linux:$PATH
export MANPATH=$HOME/local/opt/texlive/2011/texmf/doc/man:$MANPATH
export INFOPATH=$HOME/local/opt/texlive/2011/texmf/doc/info:$INFOPATH

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="kermode"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

alias rmnetwork='sudo rm /etc/NetworkManager/system-connections/'

alias k9='kill -9'

# Simple web server
alias ws='python -m SimpleHTTPServer'

# start/stop redis
alias redis-start="$HOME/local/bin/redis-server $HOME/local/etc/redis/redis.conf"
alias redis-stop="cat $HOME/local/var/run/redis.pid |xargs kill -9"

# Initialize keychain
/usr/bin/keychain $HOME/.ssh/id_dsa -q
source $HOME/.keychain/$HOST-sh

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export MAKE_OPTS="-j3"

# Add ./bin to $PATH for binstubs
export PATH=./bin:$PATH

# JDK paths
jdk_bin_path=$HOME/local/opt/jdk1.6.0_38/bin
export PATH=$PATH:$jdk_bin_path

alias dsa-pubkey="cat $HOME/.ssh/id_dsa.pub"
alias rsa-pubkey="cat $HOME/.ssh/id_rsa.pub"

source ~/.zsh/private.rc
