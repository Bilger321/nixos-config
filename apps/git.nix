{ config, pkgs, ...}:
{
  programs.git = {
    enable = true;
    lfs.enable = true;
    userName = "bilger321";
    userEmail = "bilger.jacob@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
