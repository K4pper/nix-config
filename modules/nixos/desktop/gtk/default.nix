{ pkgs, ... }:{
    gtk = {
      enable = true;
      # iconTheme = { 
      #   name = "Dracula";
      #   package = pkgs.dracula-icon-theme;
      # };
      iconTheme = { 
        name = "rose-pine";
        package = pkgs.rose-pine-icon-theme;
      };
      theme = {
        name = "rose-pine-gtk-theme";
        package = pkgs.rose-pine-gtk-theme;
      };
      gtk3.extraConfig = {
        Settings = ''
          gtk-application-prefer-dark-theme=1
        '';
      };
      gtk4.extraConfig = {
        Settings = ''
          gtk-application-prefer-dark-theme=1
        '';
      };
      cursorTheme = {
        name = "rose-pine-cursor";
        package = pkgs.rose-pine-cursor;
      };
    };
    home.sessionVariables = {
     XCURSOR_THEME = "BreezeX-RoséPine";
     GTK_THEME = "rose-pine";
    };
}
