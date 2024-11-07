{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        gopls.enable = true;
        kotlin_language_server.enable = true;
        nixd.enable = true;
        ruff_lsp.enable = true;
        pyright.enable = true;
      };
    };
    rustaceanvim.enable = true;
  };
}
