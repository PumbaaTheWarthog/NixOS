{ config, pkgs, ... }: {

  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      auto-optimise-store = true;
    };
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  boot = {
    kernelParams = [ "nohibernate" ];
    tmp.cleanOnBoot = true;
    loader = {
      systemd-boot = {
        enable = true;
        windows.windows11.title = "BloatOS";
        configurationLimit = 5;
        editor = false;
      };
      efi.canTouchVariables = true;
      timeout = 60;
    };
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    package = pkgs.bluez;
  };

  services.pipewire = {
    audio.enable = true; # Whether to use PipeWire as the primary sound server
    enable = true;
    jack.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };
  security.rtkit.enable = true;

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    enableIPv6 = false;
    firewall.enable = true;
  };

  services.printing.enable = true;

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Europe/Copenhagen";

  documentation.nixos.enable = false;
  system.stateVersion = "24.11";

}
