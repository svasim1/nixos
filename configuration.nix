{ lib, ... }: {
  imports = [
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

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];

  system.stateVersion = "26.05";
}
