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
       # vi = "nvim";
      vi = "hx";
      ls = "eza";
      lsd = "eza --long --header --git --only-dirs";
      lss = "eza --long --header --git --sort size";
      lsn = "eza --long --header --git --sort name";
      lsm = "eza --long --header --git --sort mod";
      lse = "eza --long --header --git --sort ext";
      z  = "zoxide";
      cat = "bat";
      top = "btm";
      ps = "procs";
      config = "git --git-dir=/home/fba/.cfg/ --work-tree=/home/fba";
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
    # EDITOR = "nvim";
    EDITOR = "hx";
  };
  programs.git = {
    enable = true;
    userName = "François Banville";
    userEmail = "waf@banber.org";
  };
  programs.direnv.enable = true;
  nixpkgs.config.allowUnfreePredicate = _: true;
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      #vscodevim.vim
      yzhang.markdown-all-in-one
      mgt19937.typst-preview
      kamadorueda.alejandra
      rust-lang.rust-analyzer
    ];
  };
  programs.atuin = {
    enable = true;
    settings = {
      sync_address = "https://history.banber.org";
      sync_frequency = "5m";
      # dialect = "uk";
      # key_path = config.sops.secrets.atuin_key.path;
    };
  };
}
