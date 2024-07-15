{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;

      globalstatus = true;

      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch"];
        lualine_c = ["filename" "diff"];
      };
    };
  };
}
