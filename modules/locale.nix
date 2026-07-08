{ ... }: {
  time.timeZone = "Europe/Stockholm";

  i18n.defaultLocale = "en_US.UTF-8";

  console = {
    font = "Lat2-Terminus16";
    keyMap = "sv-latin1";
  };

  services.xserver.xkb.layout = "se";
}
