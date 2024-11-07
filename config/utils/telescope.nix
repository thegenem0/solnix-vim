{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>fs" = "live_grep";
      "<leader>ff" = "find_files";
      "<leader>fr" = "oldfiles";
      "<leader>fd" = "diagnostics";
    };
    settings = {
      defaults = {
        mappings = {
          i = {
            "<C-j>" = {
              __raw = "require('telescope.actions').move_selection_next";
            };
            "<C-k>" = {
              __raw = "require('telescope.actions').move_selection_previous";
            };
            "<C-u>" = false;
            "<C-d>" = false;
          };
        };
      };
    };
    extensions.fzf-native = { enable = true; };
  };
}
