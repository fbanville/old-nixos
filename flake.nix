{
  description = "François Banville NixOS config.";
  inputs = {
    nixpkgs.url        = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware";
    home-manager.url   = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, nixpkgs, nix, nixos-hardware, home-manager }: {
    nixosConfigurations = {
      satori = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          nixos-hardware.nixosModules.framework
          ./hosts/satori.nix
          ./configuration.nix
          home-manager.nixosModules.home-manager {
            home-manager.useUserPackages = true;
            home-manager.users.fba = import ./fba/hm.nix;
          }
        ];
      };
      vether = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/vether.nix
          ./configuration.nix
          home-manager.nixosModules.home-manager {
            home-manager.useUserPackages = true;
            home-manager.users.fba = import ./fba/hm.nix;
          }
        ];
      };
      ether = nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./hosts/ether.nix
          ./configuration.nix
          home-manager.nixosModules.home-manager {
            home-manager.useUserPackages = true;
            home-manager.users.fba = import ./fba/hm.nix;
          }
        ];
      };
    };
  };
}
