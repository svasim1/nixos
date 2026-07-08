{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    curl
    git
    gh
    vscodium
    vscodium-fhs
    opencode
  ];
}
