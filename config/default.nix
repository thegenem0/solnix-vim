{
  imports = [
    ./ui.nix
    ./keymaps.nix
    ./options.nix
    ./misc.nix
    ./lsp/default.nix
    ./lsp/fidget.nix
    # ./lsp/cmp.nix
    ./lsp/none-ls.nix
    ./lsp/treesitter.nix
    ./lsp/trouble.nix
    ./lsp/lspsaga.nix
    # ./lsp/elixir-tools.nix
    ./utils/auto-pairs.nix
    ./utils/autosave.nix
    ./utils/blankline.nix
    ./utils/manpager.nix
    ./utils/neo-tree.nix
    ./utils/lazygit.nix
    ./utils/obsidian.nix
    ./utils/telescope.nix
    ./utils/toggleterm.nix
    ./utils/which-key.nix
    ./utils/transparent.nix
    ./utils/direnv.nix
    ./utils/supermaven.nix
    ./utils/blink.nix
  ];

  colorschemes.catppuccin = {
    enable = true;
    settings = { flavour = "mocha"; };
  };
  plugins.web-devicons.enable = true;

  diagnostics = { virtual_lines.only_current_line = true; };
}
