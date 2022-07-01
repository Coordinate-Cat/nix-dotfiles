{ config, pkgs, ... }:

{
  home = {
    username = "ocat";
    homeDirectory = "/Users/ocat";
    stateVersion = "22.05";
  };
  sessionVariables = {
    EDITOR = "nvim";
  };
  programs = {
    home-manager.enable = true;
    bat = {
      enable = true;
      config = {
        theme = "gruvbox-dark";
        italic-text = "always";
      };
    };
    exa = {
      enable = true;
      enableAliases = true;
    };
    starship = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        add_newline = true;
      };
    };
  };
}