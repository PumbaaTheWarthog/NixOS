{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/jonathan";
    stateVersion = "24.11";
    packages = with pkgs; [
      firefox
      tree
    ];
  };

  imports = [
    ./programs
  ];
}
