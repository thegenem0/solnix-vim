{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Rust
    cargo
    rustc

    # Go
    go

    # Kotlin
    kotlin-native

    # Tools
    ripgrep
    jq
  ];
}
