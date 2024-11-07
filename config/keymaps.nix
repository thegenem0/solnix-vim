{
  globals.mapleader = " ";

  keymaps = [
    # Global
    {
      key = "<leader>e";
      action = "<CMD>Neotree toggle<CR>";
      options.desc = "Toggle NeoTree";
    }

    # Splits/Buffers
    {
      key = "<leader>sh";
      action = "<CMD>split<CR>";
      options.desc = "Split horizontal";
    }
    {
      key = "<leader>sv";
      action = "<CMD>vsplit<CR>";
      options.desc = "Split vertical";
    }
    {
      mode = "n";
      key = "<leader>p";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options.desc = "Buffer Cycle Prev";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>BufferLineCycleNext<cr>";
      options.desc = "Buffer Cycle Next";
    }


    # File
    {
      mode = "n";
      key = "<leader>f";
      action = "+find/file";
    }
    {
      # Format file
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options.desc = "Format the current buffer";
    }

    # Terminal
    {
      # Escape terminal mode using ESC
      mode = "t";
      key = "<esc>";
      action = "<C-\\><C-n>";
      options.desc = "Escape terminal mode";
    }

    # Trouble
     {
      mode = "n";
      key = "<leader>ts";
      action = "<CMD>Trouble symbols toggle pinned=true win.relative=win win.position=right<cr>";
      options.desc = "Symbols";
    }
    {
      mode = "n";
      key = "<leader>tr";
      action = "<CMD>Trouble diagnostics toggle filter.buf=0 focus=true<cr>";
      options.desc = "Buffer Diagnostics (Trouble)";
    }

    # LSP
    {
      mode = "n";
      key = "<leader>ca";
      action = "<CMD>Lspsaga code_action<CR>";
      options.desc = "Code action";
    }
    {
      mode = "n";
      key = "K";
      action = "<CMD>Lspsaga hover_doc<CR>";
      options.desc = "Hover doc";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<CMD>Lspsaga peek_definition<CR>";
      options.desc = "Peek definition";
    }
    {
      mode = "n";
      key = "<leader>rn";
      action = "<CMD>Lspsaga rename<CR>";
      options.desc = "Rename";
    }
    {
      key = "<leader>co";
      action = "<CMD>Lspsaga outline<CR>";
      options.desc = "Outline";
    }

    # Misc
    {
      mode = "n";
      key = "<Up>";
      action = "<Nop>";
      options.desc = "Disabled arrow up";
    }
    {
      mode = "n";
      key = "<Down>";
      action = "<Nop>";
      options.desc = "Disabled arrow down";
    }
    {
      mode = "n";
      key = "<Left>";
      action = "<Nop>";
      options.desc = "Disabled arrow left";
    }
    {
      mode = "n";
      key = "<Right>";
      action = "<Nop>";
      options.desc = "Disabled arrow right";
    }
    {
      mode = "n";
      key = "<leader>ch";
      action = ":nohl<CR>";
      options.desc = "Clear Search Highlights";
    }
    {
      mode = "n";
      key = "x";
      action = "'_x";
      options.desc = "Delete Char without Copy";
    }
  ];
}
