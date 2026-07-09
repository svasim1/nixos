# NixOS Configuration

## New machine setup

```bash
# 1. Generate hardware config
nixos-generate-config --show-hardware-config > hardware-configuration.nix

# 2. Create sbctl keys (Lanzaboote needs these before first build)
sbctl create-keys

# 3. Import your SSH key (paste from file storage)
./bin/import-ssh-key

# 4. Rebuild
sudo nixos-rebuild switch --flake .

# 5. Reboot, disable Secure Boot in firmware, enroll keys, re-enable
sbctl enroll-keys --microsoft
```
