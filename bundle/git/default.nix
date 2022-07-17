{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    ignores = [
      "*~"
      "*.swp"
      ".DS_Store"
      ".direnv"
    ];
    userName = "Coordinate-Cat";
    userEmail = "tetrapasta02@gmail.com";
  };
}