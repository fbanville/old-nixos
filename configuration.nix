{ config, pkgs, home-manager, ... }:
{
  imports =
    [ 
      ./common/configuration.nix
      ./common/ssh.nix
      ./common/gnome.nix
    ];
   nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
  system.stateVersion = "23.05";
}
