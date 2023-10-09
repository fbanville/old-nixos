{ config, pkgs, ... }:
{

  # Bootloader.
  # Latest linux kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;
  networking.networkmanager.enable = true;
  time.timeZone = "America/Toronto";
  i18n.defaultLocale = "en_CA.UTF-8";
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver = {
    layout = "us";
    xkbVariant = "intl";
  };
  console.keyMap = "us-acentos";
  services.printing.enable = true;
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  users.users.fba = {
    isNormalUser = true;
    description = "François Banville";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    ];
  };
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "fba";
  # Workaround for GNOME autologin: 
  # https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    neofetch
    neovim
    git
    bitwarden-cli
    bat
    glow
  ];
  system.stateVersion = "23.05"; # Did you read the comment?
}
