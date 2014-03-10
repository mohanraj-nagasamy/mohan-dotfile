# alias python="python3.2"
alias lein="/Users/mohanraj.nagasamy/tools/clojure-1.3.0/lein"

# Reverse search
bind '"\e[A": history-search-backward'
bind '"\e-[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'
export TERM="xterm-color"
source ~/.git-completion.sh

##PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
##PS1="\W \[\033[00;34m\] (\[\033[01;32m\]\w\[\033[00;;34m\]) >\[\033[00m\]"
# PS1="\[\033[00;34m\] (\[\033[01;32m\]\W\[\033[00;;34m\]) >\[\033[00m\]"

## Git aware prompt
PS1='\[\033[34m\]\W\[\033[0m\]$(__git_ps1 " (\[\033[35m\]%s\[\033[0m\])") \$ '
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"

export PROMPT_COMMAND='echo -ne "\\033]0;${PWD/#$HOME/~}\\007"'

# /Library/Java/JavaVirtualMachines/jdk1.7.0_40.jdk/Contents/Home
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

##export PATH=/Users/mohanraj.nagasamy/springsource/maven-2.2.1.RELEASE/bin:$PATH
export PATH=/Users/mohanraj.nagasamy/temp/javascript/scripted/bin:$PATH
export MAVEN_HOME=/Users/mohanraj.nagasamy/springsource_new/apache-maven-3.0.3
export JBOSS_HOME=/Users/mohanraj.nagasamy/p42/p42/jboss
export PATH=/Users/mohanraj.nagasamy/springsource_new/apache-maven-3.0.3/bin:$PATH
##export PATH=/Users/mohanraj.nagasamy/tools/clojure-1.3.0/lein:$PATH
export SCALA_HOME=/Users/mohanraj.nagasamy/tools/scala-2.10.2
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$SCALA_HOME/sbt/bin:$PATH
export PATH=/Users/mohanraj.nagasamy/tools/play-2.1.1:$PATH
# export PATH=/Users/mohanraj.nagasamy/tools/groovy-1.8.0/bin:$PATH

export GRADLE_HOME=/Users/mohanraj.nagasamy/tools/gradle-1.8
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=/Users/mohanraj.nagasamy/tools/android-sdk-mac_x86/tools:$PATH
# export PATH=/Users/mohanraj.nagasamy/Qt5.0.1/5.0.1/clang_64/bin:$PATH
export PATH=$PATH:.


###ln -s "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" ~/temp/subl
export EDITOR='subl -w'

##export MAVEN_OPTS="-Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,address=8787,suspend=n,server=y -Xms256m -Xmx512m -XX:MaxPermSize=128m"
export ANT_OPTS="-Xmx2048M -XX:MaxPermSize=512m -Djava.awt.headless=true" 
export MAVEN_OPTS=$ANT_OPTS
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

##Terminal History
export HISTCONTROL=erasedups
export HISTSIZE=10000
#shopt -s histappend

export FORGE_HOME=~/tools/forge-distribution-1.0.5.Final/
export PATH=$PATH:$FORGE_HOME/bin
# Setting PATH for Python 3.2
# The orginal version is saved in .bash_profile.pysave
# export PATH="/Library/Frameworks/Python.framework/Versions/3.2/bin:${PATH}"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:${PATH}"
# export PATH=/Users/mohanraj.nagasamy/tools/node-v0.8.14-darwin-x64/bin:$PATH
export PATH=/Users/mohanraj.nagasamy/tools/node-v0.10.12-darwin-x64/bin:$PATH
#export PATH=/Users/mohanraj.nagasamy/homebrew/bin:$PATH
export PATH=/Users/mohanraj.nagasamy/tools/phantomjs-1.9.0-macosx/bin:$PATH

#ImageMagick

# export MAGICK_HOME="/Users/mohanraj.nagasamy/tools/ImageMagick-6.8.3"
# export PATH="$PATH:$MAGICK_HOME/bin"
# export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

#postgress
# export PATH=/Users/mohanraj.nagasamy/tools/PostgreSQL/9.2/bin:$PATH
# export PGDATA=/Users/mohanraj.nagasamy/tools/PostgreSQL/9.2/data
# export PGDATABASE=postgres
# export PGUSER=postgres
# export PGPORT=5432
# export PGLOCALEDIR=/Users/mohanraj.nagasamy/tools/PostgreSQL/9.2/share/locale
# export MANPATH=$MANPATH:/Users/mohanraj.nagasamy/tools/PostgreSQL/9.2/share/man

export PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

## Ruby env

eval "$(rbenv init -)"

## iTerm

set meta-flag on
set input-meta on
set output-meta on
set convert-meta off


## dot files from https://github.com/roderik/dotfiles.git

source ~/dotfiles/.bash_profile
# source ~/dotfiles/.aliases
# source ~/dotfiles/.functions

#hub - github pull requester
# eval "$(hub alias -s)"


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/mohanraj.nagasamy/.gvm/bin/gvm-init.sh" ]] && source "/Users/mohanraj.nagasamy/.gvm/bin/gvm-init.sh"

# https://github.com/rupa/z
[[ -s "/Users/mohanraj.nagasamy/dotfiles/z/z.sh" ]] && source "/Users/mohanraj.nagasamy/dotfiles/z/z.sh"

# install tig for good git navigation
