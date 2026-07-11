{ nixpkgs, lanzaboote, home-manager, agenix, plasma-manager }:
let
  lib = nixpkgs.lib;

  commonModules = [
    ../configuration.nix
    lanzaboote.nixosModules.lanzaboote
    home-manager.nixosModules.home-manager
    agenix.nixosModules.default
    {
      home-manager.sharedModules = [ plasma-manager.homeModules.plasma-manager ];
    }
  ];

  mkMachine = name:
    let
      info = import (./. + "/${name}/machine-info.nix");
    in
    nixpkgs.lib.nixosSystem {
      system = info.arch;
      modules = commonModules ++ [ (./. + "/${name}/configuration.nix") ];
    };
in
{
  "svante-nixos" = mkMachine "desktop";
}
