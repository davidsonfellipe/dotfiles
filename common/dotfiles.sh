source common/functions.sh

# .ssh/config
if [ -f "ssh/config" ]; then
    msg_installing "~/.ssh/config"
    cp ssh/config ~/.ssh/config
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    msg_installing "~/.gitconfig"
    cp git/.gitconfig ~/.gitconfig
fi

# .editorconfig
if [ -f ".editorconfig" ]; then
    msg_installing "~/.editorconfig"
    cp .editorconfig ~/.editorconfig
fi

# .osx
if [ -f "osx/.osx" ]; then
    msg_installing "~/.osx"
    cp osx/.osx ~/.osx
    killall Finder
fi

# .gitignore_global
if [ -f "git/.gitignore_global" ]; then
    msg_installing "~/.gitignore_global"
    cp git/.gitignore_global ~/.gitignore_global
    git config --global core.excludesfile ~/.gitignore_global
fi

# .profile
if [ -f ".bash_profile" ]; then
    msg_installing ".bash_profile"
    cp .bash_profile ~/.bash_profile
    source ~/.bash_profile
    msg_alert "For use on this session, type: source ~/.bash_profile"
fi
