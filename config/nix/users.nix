{ config, pkgs, ... }: 

{
  users.users.stuart = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "Stuart";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [ ];
  };

  programs.zsh.enable = true;

  networking.networkmanager.enable = true;
}