{ config, pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions;
    [
      bbenoist.nix
      arcticicestudio.nord-visual-studio-code
      coolbear.systemd-unit-file
      davidanson.vscode-markdownlint
      github.vscode-pull-request-github
      jnoortheen.nix-ide
      ms-python.debugpy
      ms-python.python
      ms-python.vscode-pylance
      ms-toolsai.jupyter-keymap
      ms-vscode-remote.remote-ssh
      ms-vscode.cmake-tools
      ms-vscode.cpptools
      ms-vscode.cpptools-extension-pack
      redhat.ansible
      redhat.vscode-yaml
      rust-lang.rust-analyzer
      shardulm94.trailing-spaces
      tamasfe.even-better-toml
      timonwong.shellcheck
      twxs.cmake
      yzhang.markdown-all-in-one
    ];
  };

  imports = [
    "${
      fetchTarball { 
        url = "https://github.com/msteen/nixos-vscode-server/tarball/master";
        sha256 = "1rq8mrlmbzpcbv9ys0x88alw30ks70jlmvnfr2j8v830yy5wvw7h";
      }
    }/modules/vscode-server/home.nix"
  ];

  services.vscode-server = {
    enable = true;   
  };

}
