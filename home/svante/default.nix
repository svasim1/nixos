{ pkgs, ... }: {
  imports = [
    ./firefox
    ./plasma
    ./vesktop
    ./ssh
  ];

  home = {
    username = "svante";
    homeDirectory = "/home/svante";
    stateVersion = "26.05";
    packages = with pkgs; [
      alacritty
      vscodium-fhs
      opencode
      fastfetch
    ];
  };
}