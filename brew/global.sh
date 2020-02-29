source common/functions.sh

# homebrew
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    msg_install "Homebrew" "ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    msg_ok "OK"
fi

# homebrew
if which yarn &> /dev/null; then
    msg_checking "yarn"
else
    msg_install "yarn" "brew install yarn"
    brew install yarn
    msg_ok "OK"
fi

# wifi-password
if which wifi-password &> /dev/null; then
    msg_checking "wifi-password"
else
    msg_install "wifi-password" "brew install wifi-password"
    brew install wifi-password
    msg_ok "OK"
fi

brew install pyenv-virtualenv

sudo mkdir -p /data/db
ls -ld /data/db/
sudo chmod 0755 /data/db
