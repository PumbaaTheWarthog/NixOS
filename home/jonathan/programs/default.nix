{ config, pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./firefox.nix
    ./ghostty.nix
    ./git.nix
    ./neovim.nix
    ./vscode.nix
  ];
}
