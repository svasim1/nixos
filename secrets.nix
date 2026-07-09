let
  svante = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHEmNgsfG9v8F47BEBJrYgBb3odjit7A7NFlnRL+qGO5 svante@nixos";
in
{
  "secrets/id_ed25519.age".publicKeys = [ svante ];
}
