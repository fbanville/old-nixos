{
  config,
  pkgs,
  ...
}: {
  # Bootloader.
  # Latest linux kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.networkmanager.enable = true;
  networking.firewall.enable = true;

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

  # remove autologin, cool but unsafe :-)
  # services.xserver.displayManager.autoLogin.enable = true;
  # services.xserver.displayManager.autoLogin.user = "fba";
  # # Workaround for GNOME autologin:
  # # https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  # systemd.services."getty@tty1".enable = false;
  # systemd.services."autovt@tty1".enable = false;

  services.printing.enable = true;
  services.printing.drivers = with pkgs; [hplipWithPlugin];
  hardware.sane.enable = true;
  hardware.sane.extraBackends = with pkgs; [hplipWithPlugin];
  hardware.opengl = {
    enable = true;
    driSupport32Bit = true;
  };

  services.tailscale.enable = true;
  services.flatpak.enable = true;
  services.onedrive.enable = true;

  programs.steam.enable = true;

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
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "libvirtd"
      "kvm"
      "audio"
      "disk"
      "video"
      "network"
      "systemd-journal"
      "lp"
      "scanner"
    ];
    packages = with pkgs; [
      firefox
    ];
  };

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    neofetch
    neovim
    bitwarden-cli
    bat
    glow
    gnumake
    chromium
    obsidian
    # plex-media-player broken
    plexamp
    inetutils # for telnet
  ];
  system.stateVersion = "23.05"; # Did you read the comment?
}
