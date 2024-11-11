{
  plugins = {
    bufferline = {
      enable = true;
      settings = {
        options = {
          numbers = "none";
          offsets = [{
            filetype = "NeoTree";
            text = "File Explorer";
            text_align = "center";
            padding = 1;
            color = "transparent";
            hl = "Directory";
          }];
        };
      };
    };

    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = true;
        trouble = true;
      };
    };

    lualine = {
      enable = true;
      settings = {
        options = {
          icons_enabled = false;
          theme = "catppuccin";
          component_separators = "|";
          section_separators = "";
        };
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [ "branch" ];
          lualine_c = [{
            __unkeyed_1 = "filename";
            path = 1;
          }];
          lualine_x = [ "encoding" "fileformat" "filetype" ];
          lualine_y = [ "progress" ];
          lualine_z = [ "location" ];
        };
      };
    };

    noice = {
      enable = true;
      settings = {
        lsp = {
          override = {
            "cmp.entry.get_documentation" = true;
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
          };
        };
      };
    };

    notify = {
      enable = true;
      backgroundColour = "#000000";
      render = "minimal";
      stages = "fade";
      timeout = 2000;
      extraOptions = {
        icons = {
          ERROR = "";
          WARN = "";
          INFO = "";
          DEBUG = "";
          TRACE = "✎";
        };
      };
    };

    render-markdown.enable = true;
  };
}
