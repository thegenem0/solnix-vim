{ pkgs, ...}:
let
    pname = "supermaven";
    version = "v.1.0";
in
{
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      inherit pname version;
      src = pkgs.fetchFromGitHub {
        owner = "supermaven-inc";
        repo = "supermaven-nvim";
        rev = "main";
        hash = "sha256-1z3WKIiikQqoweReUyK5O8MWSRN5y95qcxM6qzlKMME=";
      };
    })
  ];

  extraConfigLua = ''
    require("supermaven-nvim").setup({});
  '';
}
