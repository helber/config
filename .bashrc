# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
if [[ $TERMINIX_ID ]]; then
    source /etc/profile.d/vte.sh
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# Python virtualenv
# WORKON_HOME=/mnt/projetos/virtualenvs/
# export WORKON_HOME
## Virtualenv
# source /usr/bin/virtualenvwrapper.sh
# My python
# PATH=/mnt/projetos/shareapps/python-3.6/bin:$PATH


JAVA_HOME="/usr/java/latest/"
# JAVA_HOME="/usr/lib/jvm/jre/"
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
#Studio
PATH=$PATH:/mnt/projetos/shareapps/android-studio/bin

# My shared apps across all linux distros
PATH=/mnt/projetos/shareapps/bin:$PATH

# go-lang
export GOROOT=/mnt/projetos/shareapps/go
export GOPATH=/mnt/projetos/shareapps/gopath
export OS_OUTPUT_GOPATH=1
PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# OpenShift
export OC_PROJ=/mnt/projetos/shareapps/gopath/src/github.com/openshift/origin/
export OC_BIN=$OC_PROJ/_output/local/bin/linux/amd64
PATH=$OC_BIN:$PATH
export OC_PATH=/var/lib/openshift
# export CURL_CA_BUNDLE=$OC_PATH/openshift.local.config/master/ca.crt


# OPAM configuration
# . /home/helber/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
# PATH=$PATH:$HOME/.opam/system/bin

# Scala
# SCALA_HOME=/mnt/projetos/shareapps/scala-2.11.6
# PATH=$SCALA_HOME/bin:$PATH

coreos_casa () {
    # Fleet (Docker)
    export ETCD_HOST=10.0.0.10
    export FLEETCTL_ENDPOINT=http://${ETCD_HOST}:4001
    # export FLEETCTL_TUNNEL=${ETCD_HOST}:22
    export ETCDCTL_PEERS=http://${ETCD_HOST}:4001
    export FLEETCTL_EXPERIMENTAL_API=false
    export FLEET_ETCD_SERVERS=http://${ETCD_HOST}:4001
    # export FLEETCTL_TUNNEL=10.0.0.10:2200
    export FLEETCTL_STRICT_HOST_KEY_CHECKING=false
}
# coreos_casa

p-dental-php () {
    cd /mnt/projetos/ativos/dental/atual
    source .hproject
}
p-dental-odoo () {
    cd /mnt/projetos/ativos/dental/odoo
    source .hproject
}
p-autosan () {
    cd /mnt/projetos/ativos/haftec/autosan
    source .hproject
}
p-sumicity () {
    cd /mnt/projetos/ativos/sumicity/sumicity
    source .hproject
}
p-platformio () {
    cd /mnt/projetos/ativos/projetos/platformio
    source .hproject
}
p-haftec-gsm-control () {
    cd /mnt/projetos/ativos/haftec/gsmcontrolservice
}

p-redhat-horizon () {
    cd /mnt/projetos/ativos/redhat/openstack/horizon/horizon
    source ../.hproject
}

p-onsigntv () {
    cd /mnt/projetos/ativos/e3c/
    source .hproject
}

p-cianet-middleware () {
    cd /mnt/projetos/ativos/cianet/iptv-middleware/
    source .hproject
}

p-cordova () {
    cd /mnt/projetos/ativos/projetos/cordova
    source .hproject
}

## Ahgora {{{
p-ahgora-pw2 () {
    cd /mnt/projetos/ativos/ahgora/pw2/
}
p-ahgora-cloud () {
    cd /mnt/projetos/ativos/ahgora/cloud/
    source .hproject
}
p-ahgora-go () {
    cd /mnt/projetos/ativos/ahgora/go
    source .hproject
}
p-ahgora-openshift-src () {
    cd $OC_PROJ
    source .hproject
}
p-ahgora-openshift-proj () {
    cd /mnt/projetos/ativos/ahgora/cloud/openshift/
    source .hproject
}
## }}}

p-portabilidade () {
    cd /mnt/projetos/ativos/django/portabilidade_django/
    source .hproject
}

p-golang () {
    cd $GOPATH
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

# Ctags fedora
alias ctags-linux='/usr/bin/etags.ctags'

# TMUX compilado
PATH="/mnt/projetos/shareapps/tmux/bin:$PATH"

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

export PS1='\[\e[01;30m\]`if [ $? = 0 ]; then echo "\[\e[32m\]✔ "; else echo "\[\e[31m\]✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:`[[ $(git status 2> /dev/null | head -n3 | tail -n1) != "Changes not staged for commit:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\W\[\e[00m\]\$ '

export PATH

# Docker Version Manager
if [ -d $HOME/.dvm ];then
    source /home/helber/.dvm/dvm.sh
fi

# Nodejs
if [ -d $HOME/.nvm ];then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi
# Python
if [ -d $HOME/.pyenv ];then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi

