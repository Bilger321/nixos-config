{ config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions;
    [
      bbenoist.nix
      ms-python.python
      ms-vscode-remote.remote-ssh
      rust-lang.rust-analyzer
    ];
  };
}
