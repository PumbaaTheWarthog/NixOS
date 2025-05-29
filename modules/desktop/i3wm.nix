{ config, pkgs, ... }: {
  services.xserver = {
    enable = true;
    windowManager.i3.enable = true;
    displayManager.gdm.enable = true;
    displayManager.gdm.wayland = false;
  };
}