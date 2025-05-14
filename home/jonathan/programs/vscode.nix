{ config, pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode; # Can be changed to vscodium
    profiles = {
      latex = {
        extensions = with pkgs.vscode-extensions; [
          james-yu.latex-workshop
        ];
        userSettings = {
          # Define user settings
        };
      };
      python = {
        extensions = with pkgs.vscode-extensions; [
          ms-python.python
          ms-python.vscode-pylance
          ms-python.debugpy
        ];
        userSettings = {
          # Define user settings
        };
      };
    };
  };
}
