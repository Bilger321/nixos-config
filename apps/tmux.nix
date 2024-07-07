{ config, pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    extraConfig =
      ''
        bind C-a send-prefix
        set -g prefix C-a
        unbind C-b

        # index at 1
        set -s escape-time 1
        set -g base-index 1
        setw -g pane-base-index 1

        # make it easy to reload the config (CTRL+r)
        bind r source-file ~/.tmux.conf \; display "Config reloaded!"

        # screen-like bindings
        # Uncomment latter section to allow for SSH sessions to split as expected
        bind | split-window -h #"ssh -4 $(tmux display-message -p '#W')"
        bind _ split-window -v #"ssh -4 $(tmux display-message -p '#W')"

        bind Q kill-pane

        bind k confirm-before -p "kill-window #W? (y/n)" kill-window

        bind -r C-h select-window -t :-
        bind -r C-l select-window -t :+

        bind -n F11 select-window -t :-
        bind -n F12 select-window -t :+

        # disabling mouse mode
        setw -g mouse off

        # setting the colors
        set -g status-style fg=white,bg=default
        setw -g window-status-style fg=white,bg=default
        setw -g window-status-current-style fg=black,bg=yellow

        # pane border colors
        set -g pane-border-style fg='#666666',bg=default
        set -g pane-active-border-style fg=blue,bg=default

        set -g status-left-length 40
        set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"

        set -g status-right-length 40
        set -g status-right "#[fg=green]%I:%M%p #[fg=yellow]%a #[fg=cyan]%B %d, %Y"

        # center the status bar
        set -g status-justify centre

        setw -g monitor-activity on
        set -g visual-activity on

        # Set 256 color mode
        set -g default-terminal "screen-256color"
      '';
  };
}
