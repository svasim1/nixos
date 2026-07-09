{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "svante-nixos";

  # Early GPU init
  boot.initrd.kernelModules = [ "amdgpu" ];


}
