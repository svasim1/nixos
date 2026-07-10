{ ... }: {
  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "*".IdentityFile = "~/.ssh/id_ed25519";
      "ananas.h.krlsg.se ananas" = {
        HostName = "ananas.h.krlsg.se";
        User = "svante";
      };
      "papaya.h.krlsg.se papaya" = {
        HostName = "emma-server";
        User = "svante";
        ProxyJump = "ananas";
      };
    };
  };
}
