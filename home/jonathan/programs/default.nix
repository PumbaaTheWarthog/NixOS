{ config, pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./ghostty.nix
    ./git.nix
    ./neovim.nix
    ./vscode.nix
  ];
}
