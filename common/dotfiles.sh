source common/functions.sh

# .ssh/config
if [ -f "ssh/config" ]; then
    msg_installing "~/.ssh/config"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/ssh/config ~/.ssh/config
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    msg_installing "~/.gitconfig"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/git/.gitconfig ~/.gitconfig
fi

# .editorconfig
if [ -f ".editorconfig" ]; then
    msg_installing "~/.editorconfig"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/.editorconfig ~/.editorconfig
fi

# .osx
if [ -f "osx/.osx" ]; then
    msg_installing "~/.osx"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/osx/.osx ~/.osx
    killall Finder
fi

# .gitignore_global
if [ -f "git/.gitignore_global" ]; then
    msg_installing "~/.gitignore_global"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/git/.gitignore_global ~/.gitignore_global
    git config --global core.excludesfile ~/.gitignore_global
fi

# .profile
if [ -f ".bash_profile" ]; then
    msg_installing ".bash_profile"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/.bash_profile ~/.bash_profile
    source ~/.bash_profile
    msg_alert "For use on this session, type: source ~/.bash_profile"
fi

# this file prevents the shell login message
touch ~/.hushlogin

# mysql
sudo ln -s /usr/local/mysql/lib/libmysqlclient.18.dylib /usr/lib/libmysqlclient.18.dylib

