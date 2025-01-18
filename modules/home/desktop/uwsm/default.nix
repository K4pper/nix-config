_:
{
    home.file.".config/uwsm/env" = {
        text = builtins.readFile ./env;
        executable = false;
    };
}
