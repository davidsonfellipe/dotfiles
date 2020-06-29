source common/functions.sh



# nvm
if [ -f "/Users/davidson/.nvm" ]; then
    msg_installing "~/.nvm"
    export NVM_DIR="$HOME/.nvm" && (
    git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
    ) && \. "$NVM_DIR/nvm.sh"
fi

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "nvm alias default node"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install --lts
    nvm use default
    msg_ok "OK"
fi

# vtop
if which vtop &> /dev/null; then
    msg_checking "vtop"
else
    msg_install "vtop" "npm install vtop -g"
    npm install vtop -g
    msg_ok "OK"
fi

# jsinspect
if which jsinspect &> /dev/null; then
    msg_checking "jsinspect"
else
    msg_install "jsinspect" "npm install -g jsinspect"
    npm install -g jsinspect
    msg_ok "OK"
fi

# jscodeshift
if which jscodeshift &> /dev/null; then
    msg_checking "jscodeshift"
else
    msg_install "jscodeshift" "npm install -g jscodeshift"
    npm install -g jscodeshift
    msg_ok "OK"
fi

# pakmanager
if which pakmanager &> /dev/null; then
    msg_checking "pakmanager"
else
    msg_install "pakmanager" "npm install -g pakmanager"
    npm install -g pakmanager
    msg_ok "OK"
fi

# cpulimit
if which cpulimit &> /dev/null; then
    msg_checking "cpulimit"
else
    msg_install "cpulimit" "npm install -g cpulimit"
    npm install -g cpulimit
    msg_ok "OK"
fi

# commitizen
msg_install "commitizen" "npm install -g commitizen"
npm install -g commitizen
msg_ok "OK"

