<h1 align="center">
    My dotfiles<br/><sup><sub>powered by  <a href="https://www.chezmoi.io/">chezmoi</a>
</h1>

## Pre-installation

Create a configuration file called `~/.config/chezmoi/chezmoi.toml` and define
the following variables.

```toml
[data]
  alacritty.font = "Lekton NF" # Your favorite nerd-font installed on your machine
  editor = "nvim" # The $EDITOR envvar will be set to this value

  # Global git configurations
  gitconfig.name = "David Park"
  gitconfig.email = "dpjungmin@gmail.com"

  # The path to your favorite shell (fish shell is recommended for the current settings)
  shell = "/usr/bin/fish"
```

## Installation

```shell
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply dpjungmin
```

## Pull the latest changes

```shell
chezmoi update
```

---

I use [chezmoi](https://www.chezmoi.io/) to manage my personal configuration
files accross multiple machines.

I use [alacritty](https://alacritty.org/) as my terminal emulator and [fish](https://fishshell.com/) for my shell.

This currently works for **macOS** and **Arch Linux**.
