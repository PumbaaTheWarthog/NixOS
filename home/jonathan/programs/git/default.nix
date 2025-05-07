{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "jonathansvaerke"; 
    userEmail = "jonathansvaerke@proton.me";
  };
}
