{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

  home = {
    username = "jonathan";
    homeDirectory = "/home/jonathan";
    stateVersion = "24.11";
    packages = with pkgs; [
      firefox
      vscode
    ];
  };

  imports = with ./programs/; [
    git.nix
    neovim.nix
    vscode.nix
  ];
}
