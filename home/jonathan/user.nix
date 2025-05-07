{ config, nixpkgs, ... }: {
  users.users.jonathan = {
    isNormalUser  = true;
    home  = "/home/jonathan";
    description  = "Jonathan";
    extraGroups  = [ "wheel" "networkmanager" ];
  };
}
