{ pkgs, ... }:
let
  gitlab-ci-ls = pkgs.rustPlatform.buildRustPackage rec {
    pname = "gitlab-ci-ls";
    version = "0.22.0";

    src = pkgs.fetchFromGitHub {
      owner = "alesbrelih";
      repo = "gitlab-ci-ls";
      rev = "${version}";
      sha256 = "sha256-RXM581tW78YzH+NQhkpsbHz6m+PAF7NQ5p3TFugPo+M=";
    };

    cargoHash = "sha256-PuNpkDjoJr1GttETWHA9X+LYNIJSgBXdZId5q2JSo6g=";

    nativeBuildInputs = with pkgs; [ pkg-config ];
    buildInputs = with pkgs; [ openssl ];

    doCheck = false;

    meta = with pkgs.lib; {
      description = "GitLab CI Language Server";
      homepage = "https://github.com/alesbrelih/gitlab-ci-ls";
      license = licenses.mit;
      maintainers = [];
    };
  };

in
{
  inherit gitlab-ci-ls;
}
