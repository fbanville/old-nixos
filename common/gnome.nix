{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnome.gnome-boxes
    gnomeExtensions.appindicator
    gnomeExtensions.bing-wallpaper-changer
    gnomeExtensions.transparent-top-bar-adjustable-transparency
    gnomeExtensions.pano
    #gnomeExtensions.weather
    gnomeExtensions.weather-oclock
    #gnomeExtensions.blur-my-shell
    gnomeExtensions.notification-banner-position
    #gnomeExtensions.custom-vpn-toggler
    gnome.adwaita-icon-theme
    gnomeExtensions.compiz-alike-magic-lamp-effect
    gnomeExtensions.quick-settings-tweaker
    gnomeExtensions.dash-to-dock
    gnomeExtensions.dash-to-dock-animator
    gnomeExtensions.gnome-40-ui-improvements
    gnomeExtensions.gesture-improvements
    mojave-gtk-theme
  ];

  fonts.fontconfig.enable = true;
  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    fira-code
    fira-code-symbols
  ];
}
