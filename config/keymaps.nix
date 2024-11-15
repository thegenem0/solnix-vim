{
  globals.mapleader = " ";

  keymaps = [
    # Global
    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>Neotree toggle<CR>";
      options.desc = "Toggle NeoTree";
    }

    # Splits/Buffers
    {
      mode = "n";
      key = "<leader>sh";
      action = "<CMD>split<CR>";
      options.desc = "Split horizontal";
    }
    {
      mode = "n";
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
      # Format file
      mode = "n";
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
      options.desc = "Format the current buffer";
    }

    # Terminal
    {
      mode = "n";
      key = "<leader>tt";
      action = "<CMD>ToggleTerm<CR>";
      options.desc = "Toggle Terminal";
    }
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
      key = "<leader>cd";
      action = "<CMD>Lspsaga peek_definition<CR>";
      options.desc = "Check definition";
    }
    {
      mode = "n";
      key = "<leader>gd";
      action = "<CMD>lua vim.lsp.buf.definition()<CR>";
      options.desc = "Goto definition";
    }
    {
      mode = "n";
      key = "<leader>rn";
      action = "<CMD>Lspsaga rename<CR>";
      options.desc = "Rename";
    }
    {
      mode = "n";
      key = "<leader>co";
      action = "<CMD>Lspsaga outline<CR>";
      options.desc = "Outline";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<CMD>RustLsp renderDiagnostic current<CR>";
      options.desc = "Render diagnostic";
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
      action = "\"_x";
      options.desc = "Delete Char without Copy";
    }
  ];
}
