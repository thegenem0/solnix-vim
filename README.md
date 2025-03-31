# NixVim Configuration

## Features

### Key Plugins

The configuration integrates plugins I use daily as well as some nice-to-haves:

- **UI Enhancements**:

  - `bufferline`: Manage buffers with ease.
  - `lualine`: A status line with customizable themes (e.g., Catppuccin).
  - `neo-tree`: A modern file explorer.
  - `noice`: LSP and other message handling with a nicer UI.

- **Development Utilities**:

  - `nvim-autopairs`: Automatic pairing of brackets and quotes.
  - `telescope`: Fuzzy finder with powerful extensions.
  - `treesitter`: Syntax highlighting and code manipulation.
  - `gitsigns`: Git integration for version control.
  - `trouble`: A diagnostic and quickfix list.
  - `cmp`: Autocompletion framework with LSP and snippet support.

- **Language-Specific Tools**:

  - `rustaceanvim`: Rust-specific enhancements.
  - `none-ls`: Provides linters, formatters, and other sources.
  - `lspsaga`: Adds advanced LSP features like hover docs and outlines.

- **Productivity**:
  - `obsidian`: Integration with Obsidian for note-taking.
  - `toggleterm`: Built-in terminal management (I'd recommend using `tmux` instead).
  - `transparent`: Transparent UI.
  - `direnv`: Environment-aware configurations for project work.

### Language Server Protocol (LSP) Support

The configuration supports language servers for various programming languages:

**Notable LSPs**: `bashls`, `clangd`, `cmake`, `dockerls`, `jsonls`, `yaml`,
`cssls`, `eslint`, `tailwindcss`, `pyright`, `gopls`, `rust-analyzer`, `kotlin_language_server`,
`terraformls`, `tflint`, `nixd`, `zls`.

Additional configurations are provided via `treesitter` for grammar parsing
and `none-ls` for advanced diagnostics and formatting.

Note: There are examples of both plugins that are readily available from NixVim,
and ones that are not yet in the repos.

---

## Usage Context

My development workflow involves using the following tools in pretty much all
of my repositories while on NixOS or using Nix as a package manager on other distros:

- **Devenv.nix**: Simplified development environments.
- **Direnv**: Directory-based environment variable management.

### Why NixVim?

The configuration includes only the libraries and plugins
necessary to ensure self-sufficiency.
You can start using the setup without worrying about external dependencies.

---

## Setup Instructions

- Clone the repository and run:

  ```bash
  git clone https://github.com/thegenem0/solnix-vim.git
  cd solnix-vim
  nix run .
  ```

- Alternatively, you can just run the flake directly:

  ```bash
  nix run github:thegenem0/solnix-vim
  ```

- On NixOS, you can add it to your flake inputs.
  An example of this can be found [here](https://github.com/thegenem0/solnix/blob/29c5879f049f6270b997a4e5c522a59132dbffd3/flake.nix#L21).

---

## Acknowledgments

A huge thanks to [**Mikael Fangel**](https://github.com/MikaelFangel) for
creating the original NixVim configuration that served as a base for this one

---

## License

This project is licensed under [MIT License](LICENSE).
