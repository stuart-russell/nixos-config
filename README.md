# NixOS Configuration
My personal NixOS configuration featuring Home Manager and Hyprland (eventually), built with flakes for reproducible system management.

# Install
1. `git clone https://github.com/stuart-russell/nixos-config.git ~/.nixos-config`
2. Find all TODO messages and update names/hostnames
3. `sh ./script/generate-hardware-conf.sh`
4. `sudo nixos-rebuild switch --flake ~/.nixos-config#<HOSTNAME>`
5. `home-manager switch --flake ~/.nixos-config#<USERNAME>`
