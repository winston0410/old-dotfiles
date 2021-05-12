# My dotfiles

## Ignored files

`.zshenv`

## Use this dotfiles in a new computer

```
git clone --bare https://github.com/USERNAME/dotfiles.git
$HOME/.dotfiles
```

```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

```
dotfiles checkout
```

## Reference

https://antelo.medium.com/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b
