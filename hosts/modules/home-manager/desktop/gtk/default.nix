{ pkgs, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "rose-pine";
      package = pkgs.rose-pine-icon-theme;
    };
    theme = { name = "rose-pine-gtk-theme"; package = pkgs.rose-pine-gtk-theme; };

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
      name = "BreezeX-RosePine-Linux";
      package = pkgs.rose-pine-cursor;
    };
  };
  home.sessionVariables = {
    GTK_THEME = "rose-pine";
    XCURSOR_THEME = "BreezeX-RosePine-Linux";
  };
}

