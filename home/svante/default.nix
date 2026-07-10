{ pkgs, ... }: {
  imports = [
    ./firefox
    ./plasma
    ./vesktop
    ./ssh
    ./spotify
    ./neovim
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
      vlc
      prismlauncher
    ];
  };

  xdg.mimeApps.enable = true;
  xdg.configFile."mimeapps.list".force = true;
  xdg.mimeApps.defaultApplications = {
    "video/mp4" = "vlc.desktop";
    "video/x-matroska" = "vlc.desktop";
    "video/webm" = "vlc.desktop";
    "video/avi" = "vlc.desktop";
    "video/x-msvideo" = "vlc.desktop";
    "video/mpeg" = "vlc.desktop";
    "video/ogg" = "vlc.desktop";
    "video/x-ogm+ogg" = "vlc.desktop";
    "video/quicktime" = "vlc.desktop";
    "video/x-ms-wmv" = "vlc.desktop";
    "video/x-flv" = "vlc.desktop";
    "video/x-m4v" = "vlc.desktop";
    "video/3gpp" = "vlc.desktop";
    "video/3gpp2" = "vlc.desktop";
    "application/ogg" = "vlc.desktop";
    "application/x-ogg" = "vlc.desktop";
    "application/x-matroska" = "vlc.desktop";
  };
}
