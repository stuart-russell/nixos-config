{ config, pkgs, ... }:

{
  home.username = "stuart";
  home.homeDirectory = "/home/stuart";
  home.stateVersion = "25.05";
 
  imports = [
    # import home manager configuration files
    # ./config/home/example.nix
  ];
  home.packages = with pkgs; [
    rofi-wayland
    vesktop
    wl-clipboard
    spotify
    inputs.zen-browser.packages."${system}".specific
  ];

  home.file = {};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
}