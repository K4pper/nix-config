{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    clock24 = true;
    plugins = with pkgs.tmuxPlugins; [
      sensible
      yank
      {
    plugin = rose-pine;
      extraConfig = ''
        set -g @rose_pine_variant 'main'
      '';
      }
    ];

    extraConfig = ''
      # Fix color in nvim for alacritty
      set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"

      set -g allow-passthrough on

      set -ga update-environment TERM
      set -ga update-environment TERM_PROGRAM

      set -g escape-time 10

      # remap prefix from 'C-b' to 'C-a'
      unbind C-b
      set-option -g prefix C-a
      bind-key C-a send-prefix

      # Window bindings
      bind | split-window -h -c "#{pane_current_path}"
      bind - split-window -v -c "#{pane_current_path}"

      bind -n M-h select-pane -L
      bind -n M-j select-pane -D
      bind -n M-k select-pane -U
      bind -n M-l select-pane -R

      unbind '"'
      unbind %

      # Easier copy-mode
      setw -g  mode-keys vi
      bind Enter copy-mode
      bind -n M-Enter copy-mode
      bind -T  copy-mode-vi v send -X begin-selection
      bind -T  copy-mode-vi y send -X copy-pipe-and-cancel
      bind P paste-buffer
      bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel

      # Enable mouse
      set -g mouse on

      # shell
      set -gu default-command
      set -g default-shell "$SHELL"
      '';
  };
}

