{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "svante-nixos";

  services.xserver.videoDrivers = [ "amdgpu" ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.libinput.mouse = {
    accelProfile = "flat";
    accelSpeed = "-0.20";
  };

  # Early GPU init
  boot.initrd.kernelModules = [ "amdgpu" ];
}
