{ lib, pkgs, ... }:

{
  config = {
    extraConfigVim = ''
      autocmd BufRead,BufNewFile *.pl set filetype=prolog
    '';

    extraConfigLua = ''
      vim.opt.iskeyword:append("-")
      vim.wo.signcolumn = 'yes'
      vim.cmd([[
        command! W write
        command! Q quit
        command! Wq write | quit
        command! WQ write | quit
        noremap q <Nop>
        noremap Q q
      ]])
    '';

    opts = {
      updatetime = 100;

      number = true;
      relativenumber = true;
      splitbelow = true;
      splitright = true;
      scrolloff = 4;

      clipboard = "unnamedplus";
      shiftwidth = 4;
      tabstop = 4;
      expandtab = true;
      autoindent = true;
      smartindent = true;

      ignorecase = true;
      incsearch = true;
      smartcase = true;
      wildmode = "list:longest";
      signcolumn = "yes";

      swapfile = false;
      undofile = true; # Build-in persistent undo

      backspace = "indent,eol,start";

      mouse = "a";

      termguicolors = lib.mkForce pkgs.stdenv.isLinux;
    };
  };
}
