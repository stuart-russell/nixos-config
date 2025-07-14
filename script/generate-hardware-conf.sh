#!/usr/bin/env bash
sudo nixos-generate-config
cp /etc/nixos/hardware-configuration.nix ${PWD}

echo "Hardware configuration generated and copied to ~/nixos-config/hardware-configuration.nix"
