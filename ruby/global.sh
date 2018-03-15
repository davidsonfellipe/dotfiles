source common/functions.sh

# update gems
if which gem &> /dev/null; then
    msg_checking "gem"
    sudo gem update --system
    msg_ok "gem"
fi

# chunky_png
if which chunky_png &> /dev/null; then
    msg_checking "chunky_png"
else
    msg_install "chunky_png" "gem install chunky_png"
    sudo gem install chunky_png
    msg_ok "chunky_png"
fi
