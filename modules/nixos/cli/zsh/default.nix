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
    localVariables = {
      SSH_AUTH_SOCK = "~/.1password/agent.sock";
    };
    completionInit = ''
      autoload -Uz compinit && 
      zstyle ':completion:*' menu select && 
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' && 
      zmodload zsh/complist && 
      compinit
      '';
    initExtra = "unsetopt BEEP";
  };
}
