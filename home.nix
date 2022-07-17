{ pkgs, ... }:

{
  programs.home-manager.enable = true;
  home = {
    username = "$USER";
    homeDirectory = "/Users/$USER";
    stateVersion = "22.05";
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  imports = [
    # nix
    # ./nix
    # ./direnv

    # git
    ./bundle/git

    # commands
    ./bundle/bat
    ./bundle/exa

    # shell
    ./bundle/zsh
    ./bundle/nushell
    ./bundle/starship
  ];
}
