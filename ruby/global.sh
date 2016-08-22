source common/functions.sh

# update gems
if which gem &> /dev/null; then
    msg_checking "gem"
    sudo gem update --system
    msg_ok "gem"
fi

# capistrano
if which cap &> /dev/null; then
    msg_checking "capistrano"
else
    msg_install "capistrano" "gem install capistrano"
    sudo gem install capistrano
    msg_ok "capistrano"
fi

# chunky_png
if which chunky_png &> /dev/null; then
    msg_checking "chunky_png"
else
    msg_install "chunky_png" "gem install chunky_png"
    sudo gem install chunky_png
    msg_ok "chunky_png"
fi

# jekyll
if which jekyll &> /dev/null; then
    msg_checking "jekyll"
else
    msg_install "jekyll" "gem install jekyll"
    sudo gem install jekyll
    msg_ok "jekyll"
fi
