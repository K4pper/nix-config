{
  programs.nixvim.autoCmd = [
    {
      event = ["TextYankPost"];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.highlight.on_yank()
          end
        '';
      };
    }
    {
      event = [
        "BufNewFile"
        "BufRead"
      ];
      pattern = [
        "*.bicep"
      ];
      command = "set filetype=bicep";
    }
    {
      event = [
        "BufNewFile"
        "BufRead"
      ];
      pattern = [
        "*.bicepparam"
      ];
      command = "set filetype=bicep-params";
    }
  ];
}
