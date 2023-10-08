{ config, pkgs, home-manager, ... }:
{
  imports =
    [ 
      #<home-manager/nixos>
      ./hosts/vether.nix
      ./common/configuration.nix
      ./common/ssh.nix
    ];
   nix = {
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };
  system.stateVersion = "23.05";
}
