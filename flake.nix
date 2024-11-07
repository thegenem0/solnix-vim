{
  description = "solnixVim";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs";
  };

  outputs = { nixpkgs, nixvim, flake-utils, ... }:
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
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };

        nixosModules.solnixVim = _ : {
          programs.neovim = {
            enable = true;
            package = nvim;
          };
        };

        homeManagerModules.solnixVim = _ : {
          programs.neovim = {
            enable = true;
            package = nvim;
          };
        };

        formatter = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;

        checks = {
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "solnixVim";
          };
        };

        devShells.default = import ./shell.nix { inherit pkgs; };
      });
}
