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

# .git-completion
if [ -f ".git-completion.bash" ]; then
    msg_installing "~/.git-completion.bash"
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

# .profile
if [ -f ".bash_profile" ]; then
    msg_installing ".bash_profile"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/.bash_profile ~/.bash_profile
    source ~/.bash_profile
    msg_alert "For use on this session, type: source ~/.bash_profile"
fi

# .inputrc
if [ -f ".inputrc" ]; then
    msg_installing ".inputrc"
    sudo ln -s /Users/davidson/Dropbox/Labs/dotfiles/common/.inputrc ~/.inputrc
fi

# this file prevents the shell login message
touch ~/.hushlogin
