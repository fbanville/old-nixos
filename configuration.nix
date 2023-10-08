{ config, pkgs, ... }:
{
  imports =
    [ 
      <home-manager/nixos>
      ./hosts/vether.nix
      ./common/configuration.nix
      ./common/hm.nix
      ./common/ssh.nix
    ];
  system.stateVersion = "23.05";
}
