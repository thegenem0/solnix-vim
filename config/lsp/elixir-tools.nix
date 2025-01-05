{ pkgs, ... }:
let
  pname = "elixir";
  version = "stable";
in {
  extraPlugins = with pkgs.vimUtils;
    [
      (buildVimPlugin {
        inherit pname version;
        src = pkgs.fetchFromGitHub {
          owner = "elixir-tools";
          repo = "elixir-tools.nvim";
          rev = "stable";
          hash = "sha256-1VsXYWdpVDLoMbK15nxrBgjCbFbnCDvIqm0WC+onk5M=";
        };
      })
    ];

  extraConfigLua = ''
    vim.cmd('set runtimepath+=~/.nvim/plugged/elixir-tools.nvim') 

    local elixir = require("elixir")
    local elixirls = require("elixir.elixirls")

    elixir.setup({
      nextls = {
        enable = true,
      },
      elixirls = {
        enable = true,
        dialyzerEnabled = false,
        enableTestLenses = false,
      },
      projectionist = {
        enable = false,
      },
    })
  '';
}
