{ pkgs }:

with pkgs; [
  # Language servers
  nixd
  nil
  lua-language-server
  tinymist

  # Formatters
  stylua
  nixfmt-rfc-style
  
  # utilities
  ripgrep
  fd
  fzf
  bat
  delta # syntax highlighter pager for git (opt fzf-lua dep)
  chafa # terminal image previewer (fzf-lua opt dep)
]
