source common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "brew install node"
    brew install node
    msg_ok "OK"
fi

# grunt-cli
if which grunt &> /dev/null; then
    msg_checking "grunt"
else
    msg_install "grunt" "npm install -g grunt-cli"
    npm install -g grunt-cli
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

# jshint
if which jshint &> /dev/null; then
    msg_checking "jshint"
else
    msg_install "jshint" "npm install jshint -g"
    npm install jshint -g
    msg_ok "OK"
fi

# csslint
if which csslint &> /dev/null; then
    msg_checking "csslint"
else
    msg_install "csslint" "npm install -g csslint"
    npm install -g csslint
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

# TMI (Too Many Images) - discover your image weight on the web
if which tmi &> /dev/null; then
    msg_checking "tmi"
else
    msg_install "tmi" "npm install -g tmi"
    npm install -g tmi
    msg_ok "OK"
fi

# grunt-init
if which grunt-init &> /dev/null; then
    msg_checking "grunt-init"
else
    msg_install "grunt-init" "npm install -g grunt-init"
    npm install -g grunt-init
    msg_ok "OK"
fi

# bower
if which bower &> /dev/null; then
    msg_checking "bower"
else
    msg_install "bower" "npm install -g bower"
    npm install -g bower
    msg_ok "OK"
fi

# bower-installer
if which bower-installer &> /dev/null; then
    msg_checking "bower-installer"
else
    msg_install "bower-installer" "npm install -g bower-installer"
    npm install -g bower-installer
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

# eslint
if which eslint &> /dev/null; then
    msg_checking "eslint"
else
    msg_install "eslint" "npm install -g eslint"
    npm install -g eslint
    msg_ok "OK"
fi
