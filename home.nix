{ config, pkgs, ... }:

{

  imports = [
    ./apps/git.nix
    ./apps/gnome.nix
    ./apps/sh.nix
    ./apps/tmux.nix
    ./apps/vim.nix
    ./apps/vscode.nix
  ];

  home.username = "jbilger";
  home.homeDirectory = "/home/jbilger";
  home.stateVersion = "24.05";
  home.packages = with pkgs; [
    hello
    tree
    fastfetch
    python3
    nix-tree
    spotify
    vscode
    steam
    keepassxc
  ];

  programs.home-manager.enable = true;
  
  systemd.user.startServices = "sd-switch";
}
