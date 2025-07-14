# Edit this configuration file to define what should be installed on
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      # Import modularised configuration files
      ./config/nix/boot.nix
      ./config/nix/display.nix
      ./config/nix/env-variables.nix
      ./config/nix/hyprland.nix
      ./config/nix/locale.nix
      ./config/nix/nvidia.nix
      ./config/nix/packages.nix
      ./config/nix/sound.nix
      ./config/nix/steam.nix
      ./config/nix/users.nix
    ];
  
  #Experimental
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "stuart"; # TODO: Set your hostname

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #Version
  system.stateVersion = "25.05";
}