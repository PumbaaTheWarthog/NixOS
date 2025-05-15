{ config, pkgs, ... }: {
  hardware.nvidia = {
    enabled = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = true; # Whether to enable the open source NVIDIA kernel module.
    modesetting.enable = true;
    nvidiaSettings = true; # Whether to enable nvidia-settings, NVIDIA’s GUI configuration tool.
  };
  services.xserver.videoDrivers = [ "nvidia" ];
}
