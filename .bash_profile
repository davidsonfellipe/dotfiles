# general
alias ls='ls -G'
alias la='ls -la'
alias ll='ls -l'
alias lw='ls -l'
alias lqq='ls -l'
alias cl='clear'
alias home='cd ~'
alias rt='reset'
alias trash='rm -fr ~/.Trash'
alias up='cd ..'
alias celar='clear'
alias tree='ls -R | grep ":$" | sed -e "s/:$//" -e "s/[^-][^\/]*\//--/g" -e "s/^/   /" -e "s/-/|/"'

# sofwares
alias textedit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'
alias sublime='cd /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/; ./subl'
alias rmpyc='find . -iname "*.pyc" -delete'

# dropbox
alias dotfiles='cd /Users/davidson/Dropbox/labs/dotfiles'
alias dropbox='cd /Users/davidson/Dropbox'
alias mestrado='cd /Users/davidson/Dropbox/study/mestrado'
alias labs='cd /Users/davidson/Dropbox/labs'
alias talks='cd /Users/davidson/Dropbox/talks'

# others dirs
alias projetos='cd /Users/davidson/Projetos'

# mongo
alias mongoRun='mongod --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf &'

# thumbor
alias thumborRun='thumbor -c conf/setting_thumbor_local.py -p 8887 &'

# spec
alias specjs='rake spec:javascript'

# python
alias pyclean='find . -name "*.pyc" -exec rm {} \;'
alias pydist='python setup.py sdist upload -r ipypi'
alias pydev='python setup.py develop --no-deps'

# compass
alias compassw='compass watch'

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# paths > general
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/npm/bin:${PATH}"
export ESPORTES_PATH="/Users/davidson/Projetos/esportes"

# paths > rvm
if [ -s "$HOME/.rvm/scripts/rvm" ]; then . "$HOME/.rvm/scripts/rvm"; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# paths > virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME

# colors
export LSCOLORS="DxGxcxdxCxegedabagacad"
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'