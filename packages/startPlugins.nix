{ pkgs }:
let
  inherit (pkgs) callPackage;
in {
  inherit (pkgs.vimPlugins)
    lz-n
    # Colorschemes
    onedarkpro-nvim
    tokyonight-nvim
    catppuccin-nvim
    vim-moonfly-colors
    gruber-darker-nvim
    citruszest-nvim
    oxocarbon-nvim
    kanagawa-paper-nvim
    # Dependencies
    nvim-web-devicons
    ;
}
