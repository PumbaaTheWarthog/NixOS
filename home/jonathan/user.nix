{ config, nixpkgs, ... }: {
  users.users.jonathan = {
    isNormalUser  = true;
    home  = "/home/jonathan";
  };

  imports = [
    ../../modules/desktop/gnome.nix
    ../../modules/desktop/hyprland.nix
  ];
}
