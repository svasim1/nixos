{ pkgs, ... }: {
  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;
  environment.plasma6.excludePackages = with pkgs.kdePackages; [ konsole kwalletmanager ];

  services.libinput.mouse = {
    accelProfile = "flat";
    accelSpeed = "-0.20";
  };

  environment.sessionVariables = {
    ELECTRON_FORCE_DARK_MODE = "1";
  };

  home-manager.users.svante.gtk = {
    enable = true;

    gtk2.force = true;

    theme = {
      name = "Breeze-Dark";
      package = pkgs.kdePackages.breeze-gtk;
    };

    iconTheme = {
      name = "breeze-dark";
      package = pkgs.kdePackages.breeze-icons;
    };

    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
