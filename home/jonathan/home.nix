{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/jonathan";
    stateVersion = "25.05";
    packages = with pkgs; [
      firefox
      vscode
    ];
  };

  imports = [
    ./programs
  ];
}
