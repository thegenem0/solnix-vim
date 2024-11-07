{
  imports = [
    ./cmp.nix
    ./ui.nix
    ./keymaps.nix
    ./options.nix
    ./treesitter.nix
    ./neo-tree.nix
    ./lsp/default.nix
    ./lsp/fidget.nix
    ./lsp/none-ls.nix
    ./lsp/trouble.nix
    ./lsp/lspsaga.nix
    ./utils/auto-pairs.nix
    ./utils/autosave.nix
    ./utils/blankline.nix
    ./utils/lazygit.nix
    ./utils/telescope.nix
    ./utils/toggleterm.nix
    ./utils/which-key.nix
    ./utils/transparent.nix
    ./utils/direnv.nix
  ];

  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "mocha";
    };
  };
  plugins.web-devicons.enable = true;

  diagnostics = { virtual_lines.only_current_line = true; };
}
