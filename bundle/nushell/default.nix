{ pkgs, ... }:

{
  home.packages = with pkgs; [
    nushell
  ];
}