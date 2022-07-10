{ pkgs, ... }:

{
  programs.home-manager.enable = true;
  home = {
    username = "$USER";
    homeDirectory = "/Users/$USER";
    stateVersion = "22.05";
  };

  imports = [
    # nix
    # ./nix
    # ./direnv

    # commands
    # ./bat
    ./bundle/exa

    # shell
    ./bundle/starship
    ./bundle/zsh
  ];
}
