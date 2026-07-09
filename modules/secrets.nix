{ ... }: {
  age.identityPaths = [ "/home/svante/.ssh/id_ed25519" ];

  age.secrets."id_ed25519" = {
    file = ../secrets/id_ed25519.age;
    path = "/home/svante/.ssh/id_ed25519";
    owner = "svante";
    group = "users";
    mode = "600";
  };
}
