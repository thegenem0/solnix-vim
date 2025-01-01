{ pkgs, ...}:
let
    pname = "vim-manpager";
    version = "v.1.0";
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "lambdalisue";
        repo = "vim-manpager";
        rev = "master";
        hash = "sha256-VLYGk6RiT/Vej3woPmpOe9ebiDDQms6B8xKw1aGouoQ=";
      };
    })
  ];
}
