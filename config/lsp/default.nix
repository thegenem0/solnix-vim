{ pkgs, lib, ... }:
let
  custom-servers = import ./custom-servers.nix { inherit pkgs lib; };
in
{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        cssls.enable = true;
        docker_compose_language_service.enable = true;
        dockerls.enable = true;
        eslint.enable = true;
        gitlab_ci_ls = {
          enable = true;
          package = custom-servers.gitlab-ci-ls;
        };
        gopls.enable = true;
        gradle_ls ={
          enable = true;
          package = pkgs.vscode-extensions.vscjava.vscode-gradle;
        };
        jqls.enable = true;
        jsonls.enable = true;
        kotlin_language_server.enable = true;
        ltex.enable = true;
        lua_ls.enable = true;
        nixd.enable = true;
        pyright.enable = true;
        ruff_lsp.enable = true;
        tailwindcss.enable = true;
        terraformls.enable = true;
        tflint.enable = true;
        ts_ls.enable = true;
        yamlls.enable = true;
        zls.enable = true;
      };
    };
    rustaceanvim.enable = true;
  };
}
