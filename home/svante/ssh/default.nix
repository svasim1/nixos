{ ... }: {
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "*".identityFile = "~/.ssh/id_ed25519";
    };
    matchBlocks = {
      "ananas.h.krlsg.se ananas" = {
        hostname = "ananas.h.krlsg.se";
        user = "svante";
      };
      "papaya.h.krlsg.se papaya" = {
        hostname = "emma-server";
        user = "svante";
        proxyJump = "ananas";
      };
    };
  };
}
