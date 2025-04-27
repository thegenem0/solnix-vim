{
  plugins.transparent = {
    enable = true;
    luaConfig.pre = ''
      require("transparent").clear_prefix("NeoTree")
      require("transparent").clear_prefix("Trouble")
      require("transparent").clear_prefix("BufferLine")
    '';

    settings = { extra_groups = [ "help" "terminal" "dashboard" ]; };
  };
}
