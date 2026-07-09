{ pkgs, ... }: {
  home.packages = [ pkgs.vesktop ];

  xdg.configFile."autostart/vesktop.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Vesktop
    Exec=vesktop
    X-KDE-autostart-after=panel
  '';
}
