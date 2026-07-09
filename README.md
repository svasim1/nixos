# NixOS Configuration

Each machine has its own folder in `hosts/`. Shared config lives in `modules/`.

## Adding a new machine

```bash
# 1. Create machine folder
mkdir -p hosts/{newHost}

# 2. Generate hardware config
nixos-generate-config --show-hardware-config > hosts/{newHost}/hardware-configuration.nix

# 3. Create machine metadata
echo '{ arch = "x86_64-linux"; }' > hosts/{newHost}/machine-info.nix

# 4. Create machine config
cat > hosts/{newHost}/configuration.nix << 'EOF'
{ ... }: {
  imports = [ ./hardware-configuration.nix ];
  networking.hostName = "{newHost}";
}
EOF

# 5. Register machine in hosts/default.nix
#     {newHost} = mkMachine "{newHost}";

# 6. Create sbctl keys
sbctl create-keys

# 7. Import SSH key (optional)
./bin/import-ssh-key

# 8. Rebuild
sudo nixos-rebuild switch --flake .#{newHost}

# 9. Reboot, disable Secure Boot, enroll keys, re-enable
sbctl enroll-keys --microsoft
```
