{ config, pkgs, ... }: {
  hardware.nvidia = {
    enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = false; # Whether to enable the open source NVIDIA kernel module.
    modesetting.enable = true;
    nvidiaSettings = true; # Whether to enable nvidia-settings, NVIDIA’s GUI configuration tool.
  };
}
