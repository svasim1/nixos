{ ... }: {
  users.users.svante = {
    isNormalUser = true;
    description = "Svante";
    extraGroups = [ "wheel" "networkmanager" ];
  };

  services.displayManager.autoLogin = {
    enable = true;
    user = "svante";
  };
}
