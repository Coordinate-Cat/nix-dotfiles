{ pkgs, ... }:

{
  home.packages = with pkgs; [
  #   zsh-autosuggestions
  #   zsh-completions
  #   zsh-history-substring-search
  #   zsh-syntax-highlighting
  ];

  programs.zsh = {
    enable = true;
    autocd = false;
    enableAutosuggestions = false;
    shellAliases = {
      ".." = "cd ..";
      "ls1" = "clear && exa -1 --icons";
      "lsa" = "clear && exa -a";
      "lsh" = "clear && exa -h";
      "lsl" = "clear && exa -l";
      "lsr" = "clear && exa -r";
      "lsaa" = "clear && exa -A";
      "lsf" = "clear && exa -F";
      "lsrr" = "clear && exa -R";
      "lss" = "clear && exa -lS";
      "lst" = "clear && exa -lt";
    };
    initExtra = ''
      function cd() {
        builtin cd "$@" && clear && exa -la --icons
      }
      alias cd="cd"
    '';
  };
}