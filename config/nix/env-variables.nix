{ config, pkgs, ... }: 

{
  environment.sessionVariables = {
    EDITOR = "vscode";
    VISUAL = "vscode";
    TERM = "xterm-kitty";
    RANGER_LOAD_DEFAULT_RC = "FALSE";
    WLR_NO_HARDWARE_CURSORS = "1";

    #Electron
    NIXOS_OZONE_WL = "1";
    XDG_SESSION_TYPE = "wayland";
    XDG_CURRENT_DESKTOP = "Hyprland";
    QT_QPA_PLATFORM = "wayland";
    MOZ_ENABLE_WAYLAND = "1";
  };
}