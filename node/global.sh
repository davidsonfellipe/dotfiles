source common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "brew install node"
    brew install node
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
