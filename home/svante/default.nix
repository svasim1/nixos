{ pkgs, ... }: {
  imports = [
    ./firefox
    ./plasma
    ./vesktop
  ];

  home = {
    username = "svante";
    homeDirectory = "/home/svante";
    stateVersion = "26.05";
    packages = with pkgs; [
      alacritty
      vscodium-fhs
      opencode
    ];
  };
}