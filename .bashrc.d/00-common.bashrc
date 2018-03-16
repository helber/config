# vim: set ft=sh
if [ $ECHO_SOURCE == 1 ];then
    echo "${BASH_SOURCE[@]}"
fi
PATH=$PATH:$HOME/.local/bin:$HOME/bin
# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# My shared apps across all linux distros
PATH=/mnt/projects/shareapps/bin:$PATH

# Define o vim como editor
export EDITOR=vim


# PS1 com suporte à git
# http://makandracards.com/makandra/1090-customize-your-bash-prompt
source /usr/share/git-core/contrib/completion/git-prompt.sh
# PS1="[\[\033[32m\]\W]\[\033[0m\]\$(__git_ps1) \[\033[1;36m\]\u\[\033[32m\]$ \[\033[0m\]"
# PS1="[\u \W\$(__git_ps1)]\$"

export PS1='\[\e[01;30m\]`if [ $? = 0 ]; then echo "\[\e[32m\]✔ "; else echo "\[\e[31m\]✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]@\h:`[[ $(git status 2> /dev/null | head -n3 | tail -n1) != "Changes not staged for commit:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\W\[\e[00m\]\$ '

