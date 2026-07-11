{ ... }: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = "PROMPT='%F{green}[%n@%m%f:%~]$ '";
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/svante/nixos";
    };
  };
}
