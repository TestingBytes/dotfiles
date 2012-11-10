export PATH=$PATH:/opt/local/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

test -r /sw/bin/init.sh && . /sw/bin/init.sh

  if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
  fi

export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql83/bin:/Users/sam/.gem/ruby/1.8/bin:$PATH

export CLICOLOR=1

# Source-Highlight
export LESSOPEN="| /opt/local/bin/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# History Settings
export HISTCONTROL=erasedups
export HISTSIZE=10000

# Aliases
alias ..='cd ..'
alias copy='cp'
alias pine='alpine'
alias dir='ls -lh'
alias l='ls -lh'
alias ls='ls -lh'
alias type='cat'
alias o='open'
alias mkdir='mkdir -p'
alias login='login -f sam'
alias grep='grep -i --color=auto'
alias trop='top -o cpu'

# Aliases - Apps
alias vi='vim'
alias v='vim'
alias t='/Users/sam/Dropbox/scripts/todo.sh -d ~/todo.cfg'
alias cpan='sudo cpan'

#alias q='qlmanage -p "$@" >& /dev/null'
alias q='ruby ~/bin/quicklook.rb'
alias drop='ruby ~/bin/drop.rb'

# Aliases - Mac Ports
alias search='port search'
alias install='sudo port install'


# Setting PATH for MacPython 2.5
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

# Prompt

# COLORS
LIGHT_GRAY="\[\033[0;37m\]";
BLUE="\[\033[1;36m\]";
RED="\[\033[0;31m\]"; 
LIGHT_RED="\[\033[1;31m\]"; 
GREEN="\[\033[0;32m\]"; 
WHITE="\[\033[1;37m\]"; 
YELLOW="\[\033[1;33m\]";

# GIT PROMPT 
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \(\1\)/';
}
function parse_git_status {
    git status 2> /dev/null | sed -e '/(working directory clean)$/!d' | wc -l;
}
function check_git_changes {
    [ `parse_git_status` -ne 1 ] && tput setaf 1 || tput setaf 2
}

PROMPT="$LIGHT_GRAY[\u@\h:\w]$WHITE\[\$(check_git_changes)\]\$(parse_git_branch)$LIGHT_GRAY"

# EXIT STATUS
function check_exit_status {
    EXITSTATUS="$?" 
    if [ "${EXITSTATUS}" -ne 0 ]
     then
         export PS1="${PROMPT}${LIGHT_RED}!${LIGHT_GRAY}$ "
     else
         export PS1="${PROMPT} $ ${LIGHT_GRAY}"
     fi
 }

 PROMPT_COMMAND=check_exit_status

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
