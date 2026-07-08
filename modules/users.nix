{ ... }: {
  users.users.svante = {
    isNormalUser = true;
    description = "Svante";
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
