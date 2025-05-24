{ config, pkgs, ... }: {
  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = true; # Whether to enable the open source NVIDIA kernel module.
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    nvidiaSettings = true; # Whether to enable nvidia-settings, NVIDIA’s GUI configuration tool.
  };
  services.xserver.videoDrivers = [ "nvidia" ];
}
