# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Python virtualenv
WORKON_HOME=/mnt/projetos/ativos/django/virtualenvs/
export WORKON_HOME
## Virtualenv
source /usr/bin/virtualenvwrapper.sh

JAVA_HOME="/usr/java/latest/"
export JAVA_HOME
#JRE_HOME="$JAVA_HOME/jre"
JRE_HOME="$JAVA_HOME"
export JRE_HOME
CLASSPATH="$JAVA_HOME:$JAVA_HOME/lib:$JRE_HOME/lib:."
MANPATH="$MANPATH:$JAVA_HOME/man"
JAVA_DOC="$JAVA_HOME/docs"
PATH="$JRE_HOME/bin:$PATH"

## Android
#SDK
PATH=$PATH:/mnt/projetos/shareapps/android/android-sdk-linux/tools
PATH=$PATH:/mnt/projetos/shareapps/android/adt-bundle-linux-x86_64-20140321/sdk/platform-tools

# My shared apps across all linux distros
PATH=/mnt/projetos/shareapps/bin:$PATH

# go-lang
export GOROOT=/mnt/projetos/shareapps/go-1.5
PATH=$PATH:$GOROOT/bin
export GOPATH=/mnt/projetos/shareapps/gopath
PATH=$GOPATH/bin:$PATH

# OPAM configuration
# . /home/helber/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
# PATH=$PATH:$HOME/.opam/system/bin

# Scala
SCALA_HOME=/mnt/projetos/shareapps/scala-2.11.6
PATH=$SCALA_HOME/bin:$PATH

coreos_casa () {
    # Fleet (Docker)
    export ETCD_HOST=10.0.0.9
    export FLEETCTL_ENDPOINT=http://${ETCD_HOST}:4001
    # export FLEETCTL_TUNNEL=${ETCD_HOST}:22
    export ETCDCTL_PEERS=http://${ETCD_HOST}:4001
    export FLEETCTL_EXPERIMENTAL_API=false
    export FLEET_ETCD_SERVERS=http://${ETCD_HOST}:4001
    # export FLEETCTL_TUNNEL=10.0.0.10:2200
}
coreos_cianet () {
    # Fleet (Docker)
    export ETCD_HOST=10.5.10.11
    export FLEETCTL_ENDPOINT=http://${ETCD_HOST}:4001
    # export FLEETCTL_TUNNEL=${ETCD_HOST}:22
    export ETCDCTL_PEERS=http://${ETCD_HOST}:4001
    export FLEETCTL_EXPERIMENTAL_API=false
    export FLEET_ETCD_SERVERS=http://${ETCD_HOST}:4001
}
export FLEETCTL_STRICT_HOST_KEY_CHECKING=false
coreos_cianet

p-autosan () {
    cd /mnt/projetos/ativos/django/autosan
    source .hproject
}

p-iot () {
    cd /mnt/projetos/ativos/cianet/documentacoes/apresentacoes/apresentacao-iot
    source .hproject
}

p-middleware () {
    cd /mnt/projetos/ativos/cianet/iptv-middleware/
    source .hproject
}

p-portabilidade () {
    cd /mnt/projetos/ativos/django/portabilidade_django/
    source .hproject
}

p-cianet-cluster () {
    cd /mnt/projetos/ativos/cianet/automacao/cianetcluster
    source .hproject
}

e-golang () {
    cd /mnt/projetos/ativos/projetos/golang
    source .hproject
}

e-pydata () {
    cd /mnt/projetos/ativos/projetos/python/python4dataanalysis
    source .hproject
}

e-angular () {
    cd /mnt/projetos/ativos/projetos/javascript/angular/listaTelefonica
    source .hproject
}


# Define o vim como editor
export EDITOR=vim

# Vim compilado
PATH="/mnt/projetos/shareapps/vim/bin:$PATH"

# Neovim compilado
PATH="/mnt/projetos/shareapps/neovim/bin:$PATH"

# Powerline shell
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
# source /usr/share/powerline/bash/powerline.sh
#source /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

# PS1 com suporte à git
# http://makandracards.com/makandra/1090-customize-your-bash-prompt
source /usr/share/git-core/contrib/completion/git-prompt.sh
# PS1="[\[\033[32m\]\W]\[\033[0m\]\$(__git_ps1) \[\033[1;36m\]\u\[\033[32m\]$ \[\033[0m\]"
# PS1="[\u \W\$(__git_ps1)]\$"

export PS1='\[\e[01;30m\]`if [ $? = 0 ]; then echo "\[\e[32m\]✔ "; else echo "\[\e[31m\]✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null | head -n3 | tail -n1) != "Changes not staged for commit:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\W\[\e[00m\]\$ '

export PATH

export NVM_DIR="/home/helber/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

