source common/functions.sh

# ln for Sublime
if [ -f "/usr/local/bin/subl" ]; then
    msg_checking "ln for Sublime"
else
    ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi
