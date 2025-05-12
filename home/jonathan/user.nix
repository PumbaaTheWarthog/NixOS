{ config, nixpkgs, ... }: {
  users.users.jonathan = {
    isNormalUser  = true;
    home  = "/home/jonathan";
    extraGroups = [
      "audio"
      "networkmanager"
      "root"
      "wheel"
    ];
  };

  imports = [
    ../../modules/desktop/gnome.nix
    ../../modules/desktop/hyprland.nix
  ];
}
