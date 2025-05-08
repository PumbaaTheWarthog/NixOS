{ config, nixpkgs, ... }: {
  users.users.jonathan = {
    isNormalUser  = true;
    home  = "/home/jonathan";
  };

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
