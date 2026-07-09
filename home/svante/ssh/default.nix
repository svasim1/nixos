{ ... }: {
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "*".identityFile = "~/.ssh/id_ed25519";
    };
    matchBlocks = {
      # placeholder
    };
  };
}
