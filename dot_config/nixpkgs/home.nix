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
      git-lfs
      wabt
      helix

      # language support
      tree-sitter
      gcc
      gtest
      clang-tools
      rustup
      nodejs
      nodePackages.typescript
      gnumake
      cmake
      ninja
      binaryen
      python311
      emscripten
      jdk

      # language servers
      sumneko-lua-language-server
      nodePackages_latest.vim-language-server
      nodePackages_latest.bash-language-server
      nodePackages_latest.typescript-language-server

      # formatters
      rust-analyzer
      stylua
      nodePackages_latest.prettier
      google-java-format

      # dependencies
      python310Packages.pynvim

      # applications
      firefox-devedition-bin
      thunderbird
      obsidian
      slack
      discord

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
      wget
      du-dust
      wasm-pack
      cargo-generate
      grim
      slurp
      yarn
      difftastic
      file
      ltrace
      strace
      unzip
    ];

    file = {
    };
  };

  services.dropbox = {
    enable = true;
    path = "${config.home.homeDirectory}/Dropbox";
  };
}
