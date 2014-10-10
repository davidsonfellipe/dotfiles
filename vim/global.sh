source common/functions.sh

# clone the neobundle plugin, to manage vim plugins
if [ ! -d "$HOME/.vim/bundle/neobundle.vim/.git" ]; then
    msg_installing "Installing neobundle..."
    git clone git@github.com:Shougo/neobundle.vim.git $HOME/.vim/bundle/neobundle.vim
else
    msg_ok "neobundle is already installed."
fi

# vim's plugins
if [[ $OSX && `which vim 2> /dev/null` ]]; then

    msg_installing "Installing/Updating vim's plugins..."
    vim -f +NeoBundleInstall +qall

    if [ $? -eq 0 ]; then
        msg_ok "vim's plugins updated successfuly.";
    else
        msg_alert "We had a problem while updating vim's plugins.";
    fi
fi
