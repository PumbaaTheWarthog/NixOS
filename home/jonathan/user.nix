{ config, nixpkgs, ... }: {
  users.users.jonathan = {
    isNormalUser  = true;
    home  = "/home/jonathan";
    extraGroups = [
      "audio"
      "networkmanager"
      "video"
      "wheel"
    ];
  };

  imports = [
    ../../modules/desktop/gnome.nix
    ../../modules/desktop/hyprland.nix
  ];
}
