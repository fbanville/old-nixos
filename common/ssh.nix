{ config, pkgs, ... }:
{
  services.openssh = {
    enable = true;
    passwordAuthentication = true;
  };
  networking.firewall.allowedTCPPort = [ 22 ];
}


