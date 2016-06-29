#remove need for .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

#git auto complete
if [ -f ~/.git-completion.bash ]; then
   ~/.git-completion.bash
fi

#git branch in prompt
source ~/.git-prompt.sh

#prompt w/o u@h
#export PS1="\n\e[0;32m[\e[0;31m\A \e[0;34m\w\e[0;33m\$(__git_ps1)\e[0;32m] \n\\$ \e[m\[$(tput sgr0)\]"

#prompt with u@h
export PS1="
\[$(tput bold)\]\[$(tput setaf 2)\][\u@\h \w (__git_ps1)]
$ "

#path additions
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

#less verbose by default
export LESS='-M'

#history stuff
export HISTTIMEFORMAT='%b %d %I:%M %p: '
export HISTCONTROL=ignoreboth
export HISTIGNORE="h:root:home:desk:c:pwd:exit:df:ls:history:clear"
# Huge history. Doesn't appear to slow things down, so why not?
export HISTSIZE=500000
export HISTFILESIZE=100000
# Avoid duplicate entries
export HISTCONTROL="erasedups:ignoreboth"

#opening shortcuts
alias st='open -a "Sublime Text"'
alias chr='open -a "Google Chrome"'
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'

#navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias root='cd /'
alias home='cd ~/'
alias desk='cd ~/Desktop'

#convenience shortcuts
alias c='clear'
alias h='history'

#add default flags
alias ls='ls -lah'
alias mkdir='mkdir -pv'
alias wget='wget -c'
alias df='df -h'
alias du='du -h'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -i'

#colors?
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
# export TERM=xterm-color