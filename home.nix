{ config, pkgs, ... }:

{
  home.username = "stuart"; # TODO: change to your username and directory
  home.homeDirectory = "/home/stuart";
  home.stateVersion = "25.05";
 
  imports = [
    # import home manager configuration files
    ./config/home/hyprland
  ];
  home.packages = with pkgs; [
    rofi-wayland
    vesktop
    wl-clipboard
    spotify
    inputs.zen-browser.packages."${system}".specific
    steam
  ];

  home.file = {};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;
}