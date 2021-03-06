########## Finder ##########

# Change to nth foremost Finder window
#'coz asdf are nearer than 123
alias xda="xd 1"
alias xds="xd 2"
alias xdd="xd 3"
alias xdf="xd 4"
alias xdg="xd 5"
alias xdh="xd 6"
alias xdj="xd 7"
alias xdk="xd 8"
alias xdl="xd 9"
alias xdm="xd 10"

# Because xda is most used
alias x="cd $HOME/Desktop && xda > /dev/null 2> /dev/null"

# Change to Desktop
alias z="cd $HOME/Desktop/"

# Open PWD in Finder
alias op="open ."

# show hidden files
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# hide hidden files
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Recursively delete `.DS_Store` files
alias cleanmac="find . -type f -name '*.DS_Store' -ls -delete"

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

alias ic="unset HISTFILE && echo 'unset histfile'" # Terminal Incognito. So that dangerous commands dont remain in history to be accidentally run again


########## git shorthand ##########

alias cm="git add -A && git commit -a -m"
alias cl="git clone"
alias st="git status"

# Squash and Merge command
alias sm="echo \"run 'git merge --squash <feature-branch>'\nand then commit\""

# drop all uncommitted changes
alias drop="git clean -f && git stash save --keep-index && git stash drop"

alias push="git push"
alias up="git push && git pull"

alias list="git log --oneline"
alias latest="git log -1 HEAD"

########## npm & yarn ##########

alias i="yarn install"
alias ni="npm install"
alias dev="npm run dev"
alias globals="npm list -g --depth=0"
 
alias clean="rm -rf node_modules .next dist build packed"
alias go="clean && i && a && dev"


# Vars defines in myz.sh
alias src="source $MYZSH"

alias dot="code $DOTFOLDER"
alias opza="s $MYZSH"
alias aliases="s $ALIASES"
alias funcs="s $FUNCS"

# Pretty print PATH
alias path='echo -e ${PATH//:/\\n}' 

# Search in History
alias hs="history | grep "


########## Python, Pip, Virtualenv ##########

alias avenv="source ./venv/bin/activate"

########## Youtube-dl ##########

alias ydl="youtube-dl "
alias adl="youtube-dl --extract-audio --audio-format mp3 "

alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport"











