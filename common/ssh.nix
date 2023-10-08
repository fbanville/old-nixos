{ config, pkgs, ... }:
{
  services.openssh = {
    enable = true;
    settings = {
       PasswordAuthentication = true;
    };
  };
  networking.firewall.allowedTCPPorts = [ 22 ];
}


