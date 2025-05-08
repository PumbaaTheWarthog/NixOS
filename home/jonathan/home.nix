{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/jonathan";
    stateVersion = "unstable";
    packages = with pkgs; [
      firefox
      vscode
    ];
  };
}
