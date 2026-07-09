{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/desktop.nix
    ./modules/gc.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/packages.nix
    ./modules/secrets.nix
    ./modules/users.nix
    ./modules/home-manager.nix
  ];

  system.stateVersion = "26.05";
}
