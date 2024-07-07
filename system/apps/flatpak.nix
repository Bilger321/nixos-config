{ ... }:
# This is a system-level nix config file

{
  # Need some flatpaks
  services.flatpak.enable = true;
  xdg.portal.enable = true;
}
