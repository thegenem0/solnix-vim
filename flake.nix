{
  description = "solnix-vim";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs";
  };

  outputs = { nixpkgs, nixvim, flake-utils, ... }:
    let config = import ./config;
    in flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          config.allowUnfree = true;
          inherit system;
        };
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
        };
      in {
        packages = { default = nvim; };

        formatter = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;

        checks = {
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "solnix-vim";
          };
        };

        devShells.default = import ./shell.nix { inherit pkgs; };
      });
}
