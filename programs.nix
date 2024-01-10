{ config, pkgs, ... }:
{
home-manager.users.stephan = {
    /* The home.stateVersion option does not have a default and must be set */
    home.stateVersion = "23.11";
    home.packages = [ 
      pkgs.thunderbird 
      pkgs.chromium 
      pkgs.typora 
      pkgs.bitwarden
      pkgs.gedit 
      pkgs.hyprland 
      pkgs.kitty 
      pkgs.dunst 
      pkgs.waybar
      pkgs.xdg-desktop-portal-hyprland
      pkgs.sway
      pkgs.hyprpaper
      pkgs.font-awesome
    ];
  };
}