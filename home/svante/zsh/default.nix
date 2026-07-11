{ ... }: {
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = "PROMPT='%F{green}[%n@%m%f:%~]$ '";
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/svante/nixos";
      nixclean = "read -q \"?Delete all but 5 newest generations? [y/N] \" && echo && sudo nix-env --delete-generations +5 --profile /nix/var/nix/profiles/system && sudo nix-collect-garbage";
    };
  };
}
