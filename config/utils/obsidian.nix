{
  plugins.obsidian = {
    enable = true;
    settings = {
      dir = "~/Documents/obsidian";
      workspaces = [
        {
          name = "Notes";
          path = "~/Documents/obsidian/notes";
        }
        {
          name = "Templates";
          path = "~/Documents/obsidian/templates";
        }
      ];
      ui = { enabled = false; };

      daily_notes = {
        date_format = "%Y-%m-%d-%a";
        folder = "notes/dailies";
        template = "daily.md";
      };

      templates = {
        date_format = "%Y-%m-%d-%a";
        hour_format = "%H:%M";
        subdir = "templates";
      };
    };
  };
}
