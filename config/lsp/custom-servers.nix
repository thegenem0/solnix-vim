{ pkgs, ... }:

let
  cargoHash = "sha256-fmsPkXwu8qy+SRyP5w940gqNmXg0V/p/vDSI7EIFrh0=";

  gitlab-ci-ls = pkgs.rustPlatform.buildRustPackage rec {
    pname = "gitlab-ci-ls";
    version = "0.22.0";

    src = pkgs.fetchFromGitHub {
      owner = "alesbrelih";
      repo = "gitlab-ci-ls";
      rev = "${version}";
      sha256 = "sha256-RXM581tW78YzH+NQhkpsbHz6m+PAF7NQ5p3TFugPo+M=";
    };

    inherit cargoHash;

    nativeBuildInputs = with pkgs; [ pkg-config ];
    buildInputs = with pkgs; [ openssl ];

    doCheck = false;

    meta = with pkgs.lib; {
      description = "GitLab CI Language Server";
      homepage = "https://github.com/alesbrelih/gitlab-ci-ls";
      license = licenses.mit;
      maintainers = [ ];
    };
  };

  protols = pkgs.rustPlatform.buildRustPackage rec {
    pname = "protols";
    version = "0.12.0";

    src = pkgs.fetchFromGitHub {
      owner = "coder3101";
      repo = "protols";
      rev = "${version}";
      sha256 = "sha256-v4ROQVoJmrukHFrxykr6EuBFXRuaBnPZ7f36ly7rPhg=";
    };

    inherit cargoHash;

    nativeBuildInputs = with pkgs; [ pkg-config ];
    buildInputs = with pkgs; [ openssl ];

    doCheck = false;

    meta = with pkgs.lib; {
      description = "Protobuf language server";
      homepage = "https://github.com/coder3101/protols";
      license = licenses.mit;
      maintainers = [ ];
    };
  };

in {
  inherit gitlab-ci-ls;
  inherit protols;
}
