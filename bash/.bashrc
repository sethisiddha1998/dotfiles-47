# The bashrc of Evan Pete Walsh >> epwalsh.com :: epwalsh10@gmail.com
#
# Last Modified: Fri Mar 11 16:45:26 2016
#
# This file is sourced for interactive non-login shells in a linux environment.
# This file also sources every time .bash_profile is sourced.

# Vim-like keybindings
set -o vi

# Command prompt --------------------------------------------------------- {{{
bldblk='\e[1;30m' # Black - Bold
lightpink='\033[38;5;165m'
lightblue='\033[38;5;033m'
txtrst='\e[0m'    # Text Reset

HOST_PREFIX=$(echo $HOSTNAME | sed 's/\..*$//')
print_before_the_prompt() {
    printf "\n$lightblue[%s:%s] $bldblk%s $lightpink%s$txtrst\n" "$HOST_PREFIX" "$USER" "$PWD" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PS1='\[\e[1;30m\]->> \[\e[0m\]'
# ------------------------------------------------------------------------ }}}

# System-specific aliases and settings ----------------------------------- {{{
case "${OSTYPE}" in
    # Mac OS X ----------------------------------------------------- {{{
    darwin*)
    alias iCloud='cd /Users/epwalsh/Library/Mobile\ Documents/com~apple~CloudDocs'
    alias tmux="TERM=screen-256color-bce tmux"
    alias linux10='ssh epwalsh@linux10.stat.iastate.edu'
    alias mypro="ssh epwalsh@10.0.1.163"
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app/'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app/'
    alias 511='cd ~/coursework/MATH-511/'
    alias 515='cd ~/coursework/MATH-515/'
    alias 516='cd ~/coursework/MATH-516/'
    alias 641='cd ~/coursework/STAT-641/'
    alias 642='cd ~/coursework/STAT-642/'
    alias tmux-py2='tmux new-session "tmux source-file ~/.vim/tmux-ipython2"'
    alias ecw='ssh pete@162.243.59.58'
    alias impact1='ssh epwalsh@impact1.stat.iastate.edu'
    alias aflex='ssh epwalsh@aflex.vrac.iastate.edu'
    alias julia="exec '/Applications/Julia-0.4.3.app/Contents/Resources/julia/bin/julia'"
    alias ls='ls -FG'
    alias la='ls -a'

    source /usr/local/bin/virtualenvwrapper.sh
    workon py279
    ;;
    # -------------------------------------------------------------- }}}
    # Linux -------------------------------------------------------- {{{
    linux*)
    alias ls='ls -FG --color'
    alias la='ls -a'
    ;;
    # -------------------------------------------------------------- }}}
esac
# ------------------------------------------------------------------------ }}}