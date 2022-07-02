{ config, pkgs, ... }:

{
  home = {
    username = "ocat";
    homeDirectory = "/Users/ocat";
    stateVersion = "22.05";
    packages = with pkgs; [
      # fzf
      # btop
      # neovim
      # neofetch

      ###[ SHELLS ]#############################################################
      zsh
      nushell
      ### https://github.com/NixOS/nixpkgs/tree/0a9a9e8ebc6d32fa613972bd34804e9c72c4343c/pkgs/shells
      ##########################################################################

      ###[ APP ]################################################################
      # iterm2
      # vscode
      # spotify
      # google-chrome
      ### https://github.com/NixOS/nixpkgs/tree/nixos-22.05/pkgs/applications
      ##########################################################################

      ###[ FONT ]###############################################################
      (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
      ### https://nixos.wiki/wiki/Fonts
      ##########################################################################
    ];
  };
  # sessionVariables = {
  #   EDITOR = "nvim";
  # };
  programs = {
    home-manager.enable = true;
    # zsh = {
    #   enable = true;
    #   shellAliases = {
    #     hms = "home-manager switch";
    #     update = "sudo nixos-rebuild switch";
    #   };
    #   history = {
    #     size = 10000;
    #     path = "${config.xdg.dataHome}/zsh/history";
    #   };
    # };
    # https://github.com/ahmedelgabri/dotfiles/blob/e8ffe6e5c2d4e7395936a55248255372d3330e7b/config/zsh.d/zsh/config/aliases.zsh
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
