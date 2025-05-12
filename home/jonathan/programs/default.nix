{ config, pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./git.nix
    ./neovim.nix
    ./vscode.nix
  ];
}
