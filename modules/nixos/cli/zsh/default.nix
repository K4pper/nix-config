{...}:
{
  programs.zsh = {
    enable = true;
    shellAliases = {};
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    completionInit = " autoload -U compinit && compinit zstyle && ':completion:*' menu select";
  };
}
