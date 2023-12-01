# Dotfile Management System

## Initial setup

```
git init --bare /home/fba/.cfg
alias config='git --git-dir=/home/fba/.cfg/ --work-tree=/home/fba'
config config --local status.showUntrackedFiles no
```

Note that I have already created an alias for config in home-manager bash setup.

The config config sets the git repository to ignore the untracked files when executing a config status.

To add a file to be tracked, it is as simple as :

```
config add .ssh/config
config add .ssh/satori.key
config commit -m "ssh"
config remote add origin git@github.com:fbanville/cfg.git
config push -u origin main
```

## Adding additional files

```
config add ~/.mozilla/firefox
config commit -m firefox
config push
```





