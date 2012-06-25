if [ -s "$HOME/.rvm/scripts/rvm" ]; then . "$HOME/.rvm/scripts/rvm"; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export LSCOLORS="DxGxcxdxCxegedabagacad"
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:$PATH
export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"

# GERAL
alias ls="ls -G"   
alias la='ls -la'
alias ll='ls -l'
alias cl='clear'
alias home='cd ~'
alias rt='reset'
alias trash='rm -fr ~/.Trash'
alias up='cd ..'
alias celar='clear'

# Locals
alias textedit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'
alias csslintUpdate='sudo npm install -g csslint'
alias sublime='cd /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/; ./subl'

#dropbox
alias dropbox='cd /Users/davidson/Dropbox'
alias labs='cd /Users/davidson/Dropbox/professional/LABS'
alias talks='cd /Users/davidson/Dropbox/professional/TALKS'

#Mongo
alias mongoRun='mongod --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'

#spec
alias specjs='rake spec:javascript'

# Python
alias site-packages-2.6='cd /opt/local/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages'  
alias pyclean='find . -name "*.pyc" -exec rm {} \;'