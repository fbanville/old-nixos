{ config, pkgs, ... }:
{
  home-manager.users.fba = { pkgs, ... } : {
    home.stateVersion = "23.05";
    programs.bash = {
      enable = true;
      shellAliases = {
        vi = "nvim";
      };
    };
    programs.oh-my-posh = {
      enable = true;
    };
  };
}
