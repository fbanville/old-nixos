# home-manager configuration for user fba
#

{ config, pkgs, home-manager, ... }:
{
  home.stateVersion = "23.05";
  home.username = "fba";
  home.homeDirectory = "/home/fba";
  programs.bash = {
    enable = true;
    shellAliases = {
      vi = "nvim";
    };
  };
  programs.oh-my-posh = {
    enable = true;
  };
  home.packages = [
  ];
  home.file = {
  };
  home.sessionVariables = {
    EDITOR = "nvim";
  };
  programs.git = {
    enable = true;
    userName = "François Banville";
    userEmail = "waf@banber.org";
  };
}
