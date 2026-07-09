{ pkgs, ... }: {
  home.packages = [ pkgs.spotify ];

  xdg.configFile."autostart/spotify.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Spotify
    Exec=spotify
    X-KDE-autostart-after=panel
  '';
}
