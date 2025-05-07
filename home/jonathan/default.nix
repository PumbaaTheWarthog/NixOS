{ config, pkgs, ... }: {
  imports = [
    ./home.nix
    ./programs
  ];
}
