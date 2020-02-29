# general
alias ls='ls -G'
alias la='ls -la'
alias ll='ls -l'
alias cl='clear'
alias home='cd ~'
alias rt='reset'
alias trash='rm -fr ~/.Trash'
alias ..='cd ..'
alias celar='clear'
alias tree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'
alias rmds='rm -f .DS_Store .localized;ls -laG'

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# net
alias whois='whois -h whois-servers.net'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias iplocal='ipconfig getifaddr en0'
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias netlisteners='lsof -i -P | grep LISTEN'

# dropbox
alias dotfiles='cd /Users/davidson/Dropbox/labs/dotfiles'
alias dropbox='cd /Users/davidson/Dropbox'
alias labs='cd /Users/davidson/Dropbox/labs'
alias webapp='cd /Users/davidson/projects/web'

# mongo
alias mongorun='mongod --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf &'

# python
alias pyclean='find . -name "*.pyc" -exec rm {} \;'
alias pydist='python setup.py sdist upload -r ipypi'
alias pydev='python setup.py develop --no-deps'
alias rmpyc='find . -iname "*.pyc" -delete'

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

#js
alias js-duplicate='jsinspect -t 30 -i '

# postgres
alias pgstart='postgres -D postgres/'

# bluetooth
# restart bluetooth daemon on macOSX without restarting (yosemite)
alias blue-stop='sudo kextunload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport'
alias blue-start='sudo kextload -b com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport'
alias blue-reset='blue-stop && blue-start'

# wheater
alias weather-nyc='curl "http://wttr.in/New+York"'
alias weather-rec='curl "http://wttr.in/Recife"'

# paths > general
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export NVM_DIR="path/to/nvm"
export PGHOST=localhost

# colors
export LSCOLORS="DxGxcxdxCxegedabagacad"

# prompt
export PS1='\[\033[01;32m\]➜  \[\033[01;31m\]\w\[\033[00m\]$(git branch &>/dev/null; if [ $? -eq 0 ]; then echo "\[\033[01;33m\] ($(git branch | grep ^*|sed s/\*\ //))\[\033[00m\]"; fi) $ '

ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future

export DYLD_LIBRARY_PATH="/usr/local/mysql/lib/"
export VERSIONER_PYTHON_PREFER_64_BIT=no
export VERSIONER_PYTHON_PREFER_32_BIT=yes
export ARCHFLAGS="-arch x86_64"

# counter-line-code
alias linecode-js='find . -name *.js | xargs wc -l'
alias linecode-css='find . -name *.css | xargs wc -l'
alias linecode-py='find . -name *.py | xargs wc -l'

# Setting PATH for Python 2.7
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:${PATH}"

### Add Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="~/terraform:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export MANPATH="/opt/local/share/man:$MANPATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Visual Studio Code (code)
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Pyenv
# if which pyenv > /dev/null; then curl https://pyenv.run | bash fi

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
