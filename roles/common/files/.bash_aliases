## OS
alias df='df -h'
alias ducks='sudo du -cksh * | sort -rn | head'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -lhtr --color=auto'
alias restartnow='/sbin/shutdown -r now'
alias python='python3'

# Custom OS
alias lscron='cat /etc/crontab'
alias modbash='sudo nano ~/.bashrc'
alias modalias='sudo nano ~/.bash_aliases'
alias modcron='sudo nano /etc/crontab'
alias modenv='sudo nano /etc/environment'

## Chatbots
alias tbot='sudo docker run --memory=75MB --rm -d --workdir /home/scripts \
--name TBOT_TEST --network chatbots -v /root/scripts/tgram:/home/scripts -it \
tgbot && docker attach TBOT_TEST'
alias web='docker attach cbprod01'
alias tgram='cd /root/scripts/tgram'
alias tgramlogs='cd /root/scripts/tgram/logs'


## Steemit
alias createuser='sudo docker run --workdir /home/scripts --net=host -v /root/scripts:/home/scripts -it botsv1.01 python ./CreateSteemUser.py'
alias vote='sudo docker run --workdir /home/scripts --net=host -v /root/scripts:/home/scripts -it botsv1.01 python ./voteforpost.py'
alias voteasuser='sudo docker run --workdir /home/scripts --net=host -v /root/scripts:/home/scripts -it botsv1.01 python ./voteasuser.py'


## Docker
alias dockerbot='sudo docker run --rm -it --workdir /home/scripts --name TEST --network chatbots -v /root/scripts:/home/scripts dbot bash'
alias dockermem='sudo docker stats $(sudo docker ps | awk '\''{if(NR>1) print $NF}'\'')'
alias dockerps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Command}}\t{{.Image}}\t{{.Ports}}\t{{.ID}}'"
alias killdocks='sudo docker kill $(sudo docker ps -q)'
alias newdock='sudo docker run --net=host -v /root/scripts:/home/scripts -it botsv1.01 bash'
alias dockermem="sudo docker stats \$(sudo docker ps | awk '{if(NR>1) print \$NF}')"


## Directories
alias ini='cd /root/scripts/ini'
alias botlogs='cd /root/scripts/logs/chatbots'
alias logs='cd /root/scripts/logs'
alias scripts='cd /root/scripts'
alias syslog='cd /var/log'
alias cfg='cd /root/scripts/cfg'
alias json='cd /root/scripts/json'
alias sql='cd /root/scripts/sql'


## Utilities
alias webutil='sudo python /root/scripts/webutil.py'

## MySQL
alias sqlbot='sudo docker attach sqlclientbot || sudo docker run -it --name sqlclientbot --network chatbots --rm mysql sh -c '\''exec mysql -h"172.20.0.4" -P"3306" -u"root" -p"pizza"'\'''
alias sqldate='sudo docker attach sqlclientdate || sudo docker run -it --name sqlclientdate --network datecurate --rm mysql sh -c '\''exec mysql -h"172.20.0.3" -P"3306" -u"root" -p"pizza"'\'''
alias sqlroot='mysql -u root -p'
alias sqlse='sudo docker attach sqlclientSE || sudo docker run -it --name sqlclientSE --network steemengine --rm mysql sh -c '\''exec mysql -h"172.19.0.2" -P"3306" -u"root" -p"pizza"'\'''

