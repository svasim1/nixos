let
  svante = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOohNVZazqZsf0QV/arC5OrEMI45UXgSqzDDJwbG9+Ic svante@nixos";
in
{
  "secrets/id_ed25519.age".publicKeys = [ svante ];
}
