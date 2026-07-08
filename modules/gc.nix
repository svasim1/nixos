{ ... }: {
  nix.gc = {
    automatic = true;
    dates = "0 0 */3 * *";
    options = "--delete-older-than 3d";
  };
}
