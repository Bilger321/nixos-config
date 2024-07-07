{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      x11 = "DISPLAY=localhost:10 ";
      sudo = "sudo ";
      vi = "vim";
      ls = "ls --color=auto";
    };
    initExtra =
    ''
      export PS1='[\u@\h \W]\$ '
    '';
  };
}
