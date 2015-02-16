# bpkg
if which bpkg &> /dev/null; then
    msg_checking "bpkg"
else
    msg_install "bpkg" "curl -Lo- http://get.bpkg.io| bash"
    curl -Lo- http://get.bpkg.io| bash
    msg_ok "OK"
fi
