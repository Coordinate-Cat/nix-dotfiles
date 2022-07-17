{ config, pkgs, ... }:

{
  # https://github.com/noib3/dotfiles/blob/master/home.nix
  # https://github.com/akkesm/dotfiles/blob/4365d28c8bf92e66368f09d45844c3e420323cf5/home/configuration/neovim/default.nix

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;

    extraConfig = ''
      luafile ${./init.lua}
    '';
  };
}



