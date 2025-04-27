{
  plugins = {
    luasnip.enable = true;

    cmp-buffer = { enable = true; };

    cmp-emoji = { enable = true; };

    cmp-nvim-lsp = { enable = true; };

    cmp-path = { enable = true; };

    cmp_luasnip = { enable = true; };

    cmp = { enable = true; };

    blink-cmp = {
      enable = true;
      settings = {
        appearance = {
          nerd_font_variant = "normal";
          use_nvim_cmp_as_default = false;
        };

        completion = {

          documentation = { auto_show = true; };

          accept = {
            auto_brackets = {
              enabled = true;
              semantic_token_resolution = { enabled = false; };
            };
          };
        };

        keymap = {
          preset = "enter";
          "<Up>" = [ "select_prev" "fallback" ];
          "<Down>" = [ "select_next" "fallback" ];
          "<C-space>" = [ "show" "show_documentation" "hide_documentation" ];
        };

        signature = { enabled = true; };

        sources = {
          lsp = { fallbacks = [ ]; };
          path = [ ];
          snippets = [ ];
          buffer = [ ];
        };

      };
    };

  };
}
