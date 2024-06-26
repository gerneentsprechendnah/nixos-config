
{inputs, vars, nixpkgs, nixpkgs-latest, home-manager, nix-pandoc, nix-colors, hypridle, hyprland, home-manager-latest, nur, nixgl, hyprspace, plasma-manager, nixos-hardware, ... }:

let
  system = "x86_64-linux";                                  # System Architecture

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;                              # Allow Proprietary Software
  };

  latest = import nixpkgs-latest {
    inherit system;
    config.allowUnfree = true;
  };

  lib = nixpkgs.lib;
in
{

# DEPRECATED Desktop Profile
desktop = lib.nixosSystem {                               
    inherit system;
    specialArgs = {
      inherit inputs system latest vars hyprland nix-colors hypridle hyprspace nix-pandoc;
      host = {
        hostName = "desktop";
        mainMonitor = "DP-1";
        secondMonitor = "DP-2";
      };
    };
    modules = [
     nur.nixosModules.nur
     ./desktop
     ./configuration.nix

      home-manager.nixosModules.home-manager {
        home-manager.extraSpecialArgs = {
           inherit (inputs.nix-colors.lib-contrib {inherit pkgs;}) gtkThemeFromScheme;
	        };
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
      }
    ];
  };
 

laptop = lib.nixosSystem {                                # Laptop Profile
    inherit system;
    specialArgs = {
      inherit inputs system latest vars hyprland nix-colors hypridle hyprspace nix-pandoc;
      host = {
        hostName = "laptop";
        mainMonitor = "eDP-1";
        secondMonitor = "";
      };
    };
    modules = [
      ./laptop
      ./configuration.nix

      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
      }
    ];
  };

surface = lib.nixosSystem {                                # Surface Profile
    inherit system;
    specialArgs = {
      inherit inputs system latest vars hyprland nix-colors hypridle hyprspace nix-pandoc nixos-hardware;
      host = {
        hostName = "surface";
        mainMonitor = "eDP-1";
        secondMonitor = "";
      };
    };
    modules = [
      ./surface
      ./configuration.nix

      nixos-hardware.nixosModules.microsoft-surface-go


      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
      }
    ];
  };

}

