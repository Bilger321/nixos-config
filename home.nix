{ config, pkgs, ... }:

{

  imports = [
    ./user/apps/git.nix
    ./user/apps/sh.nix
    ./user/apps/tmux.nix
    ./user/apps/vim.nix
    ./user/apps/vscode.nix
    ./user/wm/gnome.nix
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
