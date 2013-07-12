# My dotfiles

![Screen](http://f.cl.ly/items/2k391Z311j202h0H3f2u/Screen%20Shot%202013-05-18%20at%203.57.39%20AM.png)

## How to run

```
$ sh install
```

## Install via curl

```
$ curl -L https://raw.github.com/davidsonfellipe/dotfiles/master/install | sh
```

## Git Aliases

```
git st ~ status -sb
git ci ~ commit -m
git br ~ branch
git df ~ diff
git lg ~ git log -pgit ps
git co ~ git checkout
git tree ~ git log --graph --pretty=oneline --decorate
git pom ~ git push origin master
git ps ~ git push
git pl ~ git pull
git pp ~ git !"echo 'Pull'; git pull; echo 'Push'; git push"
git amend ~ git commit --amend -C HEAD
git ll   ~ git log --pretty=oneline --decorate --abbrev-commit --max-count=15
git lll  ~ git git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative
git rn ~ git log -M
git short ~ git shortlog -s -n
```

## Utils

```
.bash_profile ✔
.gitconfig ✔
.gitignore_global ✔
```

## Gems e etc...

```
=> homebrew ✔
=> node ✔
=> npm ✔
=> docpad ✔
=> jshint ✔
=> csslint ✔
=> phantomjs ✔
=> gem ✔
=> capistrano ✔
=> compass ✔
=> jekyll ✔
=> mongodb ✔
```

## License

Code is under [MIT](http://davidsonfellipe.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)