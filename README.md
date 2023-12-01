# nixos

This is my NixOS configuration. It is work in progress, learning flake and home-manager stuff.
It is not clear how I would reinstall on a new server. This is untested.

I've tried to manage my whole configuration with Nix but it looks just not possible yet.
I decided to try to complete the setup with a [[dotfile]] management system using only git and some aliases.



NixOS configuration files for all my worstations. It uses home-manager and flakes.
## New installation (hostname already exists in repo)
- Install NixOS using an appropriate ISO
- clone this repo
```
cd ~/.config
git clone https://github.com/fbanville/nixos.git
cd nixos
sudo ln -s /home/fba/.config/nixos/flake.nix /etc/nixos/flake.nix
sudo nixos-rebuild switch
```
## Create a new version
```
cd ~/.config/nixosff.


# change the necessary files
git add . --all
git commit -m "new stuff" 
sudo nixos-rebuild switch
```
## Update repo with newer version
To push the updated repo, one needs the .ssh/config and the .ssh/satori.key files
Then : 
```
cd ~/.config/nixos
git remote set-url origin git@github.com:fbanville/nixos.git
git push
```

## Adding a new machine
- find hardware module in https://github.com/NixOS/nixos-hardware/blob/master/flake.nix

