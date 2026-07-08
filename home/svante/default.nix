{ pkgs, ... }: {
  home = {
    username = "svante";
    homeDirectory = "/home/svante";
    stateVersion = "26.05";
  };

  programs.firefox.enable = true;
}
