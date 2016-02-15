#!/bin/sh

git filter-branch --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "OLD_USER" ]
then
    cn="NEW_USER_NAME"
    cm="NEW_USER_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "OLD_USER" ]
then
    an="NEW_USER_NAME"
    am="NEW_USER_EMAIL"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'
