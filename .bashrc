# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Change to 1 to echo file inside .bashrc***.d/
source ~/.bashrc.d/init

# export ECHO_SOURCE=0
# # bashrc.d
# if [ -d ~/.bashrc.d ];then
#     for file in ~/.bashrc.d/*.bashrc;do
#         source "$file"
#     done
# fi
# # .bashrc_secret.d
# if [ -d ~/.bashrc_secret.d ];then
#     for file in ~/.bashrc_secret.d/*.bashrc;do
#         source "$file"
#     done
# fi

export PATH

complete -C /mnt/projetos/shareapps/bin/vault vault
