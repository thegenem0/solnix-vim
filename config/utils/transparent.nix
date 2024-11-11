{
  plugins.transparent = {
    enable = true;
    luaConfig.post = ''
      require("transparent").clear_prefix("BufferLine")
      require("transparent").clear_prefix("NeoTree")
      require("transparent").clear_prefix("Trouble")
    '';

    settings = { 
      extra_groups = [ "help" "terminal" "dashboard" ]; 
    };
  };
}
