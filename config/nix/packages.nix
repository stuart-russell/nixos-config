{ config, pkgs, ... }: 

{
  environment.systemPackages = with pkgs; [
    nano
    vim
    curl
    git
    gnumake
    unzip
    kdePackages.sddm
    kitty
    vscode
  ];
}