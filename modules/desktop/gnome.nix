{ config, pkgs, ... }: {
  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false;
  };

  services.gnome = {
    core-utilities.enable = false;
    core-developer-tools.enable = false;
    games.enable = false;
  };
}
