{ pkgs, ... }:
# This is a system-level nix config file

{
  hardware.opengl.driSupport32Bit = true;
  programs.steam.enable = true;
  environment.systemPackages = [ pkgs.steam ];
}
