{ pkgs, ... }: {
  programs.zsh.enable = true;
  users.users.svante = {
    isNormalUser = true;
    description = "Svante";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };

  services.displayManager.autoLogin = {
    enable = true;
    user = "svante";
  };
}
