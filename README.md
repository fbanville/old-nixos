# nixos
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
cd ~/.config/nixos
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
