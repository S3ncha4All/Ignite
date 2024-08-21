{
  description = "Ignite basic config flake";
  input = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {self, nixpkgs, ...} @inputs:
    {
      nixosConfigurations = {
        default = nixpkgs.lib.nixosSystem {
	  extraSpecialArgs = {inherit inputs;};
          modules = [
            ./flames/codeforge/configuration.nix
	  ];
        };
      };
    };
};

