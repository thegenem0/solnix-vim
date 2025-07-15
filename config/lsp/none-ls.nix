{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        credo.enable = true;
        dotenv_linter.enable = true;
        golangci_lint.enable = true;
        ktlint.enable = true;
        markdownlint = {
          enable = true;
          settings = { args = [ "--disable MD015" ]; };
        };
        statix.enable = true;
        stylelint.enable = true;
        terraform_validate.enable = true;
        tfsec.enable = true;
        todo_comments.enable = true;
        zsh.enable = true;
      };
      formatting = {
        gofmt.enable = true;
        goimports.enable = true;
        ktlint.enable = true;
        markdownlint.enable = true;
        nixfmt.enable = true;
        prettierd = {
          enable = true;
          disableTsServerFormatter = true;
        };
        shellharden.enable = true;
        shfmt.enable = true;
        stylelint.enable = true;
        stylua.enable = true;
        terraform_fmt.enable = true;
        yamlfmt.enable = true;
      };
      hover = {
        dictionary.enable = true;
        printenv.enable = true;
      };
    };
  };
}
