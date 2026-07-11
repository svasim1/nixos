# NixOS Configuration

Each machine has a directory in `hosts/` (e.g. `desktop/`, `laptop/`). Shared config lives in `modules/`.

The flake attr that NixOS picks via `--flake .` must match `networking.hostName`.
With auto-detection, `rebuild` works without `#...` on any running machine.
On a **clean install** (ISO hostname `nixos`), pass the flake explicitly.

| Machine  | Directory       | Hostname                 | Flake attr               |
|----------|-----------------|--------------------------|--------------------------|
| Desktop  | `hosts/desktop/`| `svante-nixos`           | `"svante-nixos"`         |
| Laptop   | `hosts/laptop/` | `svante-nixos-laptop`    | `"svante-nixos-laptop"`  |

## Adding a new machine

```bash
# 1. Pick a role name and a network-unique hostname
#    role="laptop"
#    host="svante-nixos-laptop"

# 2. Create machine folder
mkdir -p hosts/${role}

# 3. Generate hardware config
nixos-generate-config --show-hardware-config > hosts/${role}/hardware-configuration.nix

# 4. Create machine metadata
echo '{ arch = "x86_64-linux"; }' > hosts/${role}/machine-info.nix

# 5. Create machine config
cat > hosts/${role}/configuration.nix << EOF
{ ... }: {
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "${host}";
}
EOF

# 6. Register machine in hosts/default.nix
#     "${host}" = mkMachine "${role}";

# 7. Create sbctl keys
sbctl create-keys

# 8. Import SSH key
./bin/import-ssh-key

# 9. Rebuild
#   post-install (hostname already set → auto-detects):
sudo nixos-rebuild switch --flake /home/svante/nixos
#   clean install (ISO hostname is "nixos" → explicit):
sudo nixos-rebuild switch --flake /home/svante/nixos#${host}

# 10. Reboot, disable Secure Boot, enroll keys, re-enable
sbctl enroll-keys --microsoft
```
