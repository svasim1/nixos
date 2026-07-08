{ ... }: {
  programs.firefox = {
    enable = true;

    profiles.default = {
      id = 0;
      name = "Default";
      isDefault = true;

      search = {
        force = true;
        default = "ddg";
        privateDefault = "ddg";
      };

      settings = {
        # Dark mode
        "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";
        "ui.systemUsesDarkTheme" = 1;
        "widget.content.allow-gtk-dark-theme" = true;
        "widget.gtk.allow-dark-theme" = true;

        # Open previous tabs on startup
        "browser.startup.page" = 3;
      };
    };
  };
}
