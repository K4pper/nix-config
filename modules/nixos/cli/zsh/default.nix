{...}:
{
  programs.zsh = {
    enable = true;
    shellAliases = {};
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    dotDir = ".config/zsh";
    completionInit = "autoload -U compinit && compinit && zstyle ':completion:*' menu select"
  };
}
