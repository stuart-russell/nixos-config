{
  description = "My NixOS configuration flake";

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-25.05";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, home-manager, ... }: 
  let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      StuartOS = lib.nixosSystem { # TODO: Config name should match hostname
        inherit system;
        modules = [ 
        ./configuration.nix
        ];
      };
    };
    homeConfigurations = {
      stuart = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ 
          ./home.nix 
        ];
      };
    };
  };

}