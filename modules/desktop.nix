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
}
