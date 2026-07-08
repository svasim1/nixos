{ ... }: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users.svante = import ../home/svante;
  };
}
