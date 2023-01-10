{ config, pkgs, lib, ... }:

{
  home = {
    packages = with pkgs; [
      # core
      wezterm
      fish
      starship
      vim
      neovim
      git

      # language support
      tree-sitter
      gcc
      gtest
      rustup
      nodejs
      nodePackages_latest.typescript

      # language servers
      sumneko-lua-language-server
      nodePackages_latest.vim-language-server
      nodePackages_latest.bash-language-server
      nodePackages_latest.typescript-language-server

      # formatters
      rust-analyzer
      stylua
      nodePackages_latest.prettier

      # dependencies
      python310Packages.pynvim

      # applications
      firefox
      thunderbird
      obsidian

      # utils
      exa
      bat
      ripgrep
      igrep
      fd
      lazygit
      fortune
      htop
      btop
      dolphin
      wofi
      hyprpaper
      cmatrix
      chezmoi
      eww-wayland
      jq
      delta
      fzf
      zoxide
    ];

    file = {
    };
  };
}
