source common/functions.sh

# homebrew
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    msg_install "Homebrew" "git@github.com:mxcl/homebrew/wiki/installation"
    /usr/bin/ruby -e "$(/usr/bin/curl -fsSL git@raw.github.com:mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
    ok "OK"
fi

# phantomjs
if which phantomjs &> /dev/null; then
    msg_checking "phantomjs"
else
    msg_install "phantomjs" "brew install phantomjs"
    brew install phantomjs
    msg_ok "OK"
fi

# mongo
if which mongod &> /dev/null; then
    msg_checking "mongodb"
else
    msg_install "mongodb" "brew install mongodb"
    brew install mongodb --with-openssl
    msg_ok "OK"
fi
