{...}:
{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "eza";
      lg = "lazygit";
    };
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    enableCompletion = true;
    dotDir = ".config/zsh";
    completionInit = "autoload -Uz compinit && zstyle ':completion:*' menu select && zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' && zmodload zsh/complist && compinit";
    initExtra = "unsetopt BEEP";
  };
}
