{ config, pkgs, ... }:
{
  imports =
    [ 
      <home-manager/nixos>
      ./hosts/vether.nix
      ./common/configuration.nix
      ./common/hm.nix
    ];
  system.stateVersion = "23.05";
}
