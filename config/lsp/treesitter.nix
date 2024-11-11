{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        vim
        regex
        lua
        luadoc
        luap
        bash
        markdown
        markdown_inline
        html
        json
        javascript
        tsx
        typescript
        yaml
        go
        python
        rust
        nix
        zig
        c
        cpp
        cmake
        make
      ];
    };
    treesitter-context = {
      enable = true;
      settings = { max_lines = 2; };
    };
    rainbow-delimiters.enable = true;
  };
}
