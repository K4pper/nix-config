_:
{
    home.file.".config/uwsm/env" = {
        text = builtins.readFile ./env;
        executable = false;
    };
    home.file.".config/uwsm/env-hyprland" = {
        text = builtins.readFile ./env-hyprland;
        executable = false;
    };
}
