{
  description = "solnixVim";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixvim, flake-utils, ... }:
    let config = import ./config;
    in flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
        };
      in
      {
        packages = {
          default = nvim;
        };


        formatter = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;

        checks = {
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "solnixVim";
          };
        };

        devShells.default = import ./shell.nix { inherit pkgs; };
      }) // {

        nixosModules.solnixVim = { pkgs, ... } : {
          programs.neovim = {
            enable = true;
            package = self.packages.${pkgs.stdenv.system}.default;
          };
        };

        homeManagerModules.solnixVim = { pkgs, ... }: {
          programs.neovim = {
            enable = true;
            package = self.packages.${pkgs.stdenv.system}.default;
          };
        };
    };
}
