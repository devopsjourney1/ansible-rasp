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
alias python='python3'

# Custom OS
alias lscron='cat /etc/crontab'
alias modbash='sudo nano ~/.bashrc'
alias modalias='sudo nano ~/.bash_aliases'
alias modcron='sudo nano /etc/crontab'
alias modenv='sudo nano /etc/environment'
alias shared='cd /media/usb-ssd/shared'


## Docker
alias dockerps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Command}}\t{{.Image}}\t{{.Ports}}\t{{.ID}}'"
alias killdocks='docker kill $(docker ps -q)'
alias rmdocks='docker rm $(docker ps -aq --filter "status=exited")'
alias dockermem="docker stats \$(docker ps | awk '{if(NR>1) print \$NF}')"


## Directories
alias logs='cd /media/usb-ssd/logs'
alias scripts='cd /media/usb-ssd/scripts'
alias syslog='cd /var/log'
