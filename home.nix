{ config, pkgs, ... }:

{

  imports = [
    ./apps/git.nix
    ./apps/sh.nix
    ./apps/tmux.nix
    ./apps/vim.nix
    ./apps/vscode.nix
    ./wm/gnome.nix
  ];

  home.username = "jbilger";
  home.homeDirectory = "/home/jbilger";
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
    python3
    spotify
    keepassxc
  ];

  programs.home-manager.enable = true;
  
  systemd.user.startServices = "sd-switch";
}
