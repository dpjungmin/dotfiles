<h1 align="center">
    My dotfiles<br/><sup><sub>powered by  <a href="https://www.chezmoi.io/">chezmoi</a>
</h1>

## Pre-installation

Create a configuration file called `~/.config/chezmoi/chezmoi.toml` and define
the following variables.

```toml
[data]
  alacritty.font = "Lekton NF" # Your favorite nerd font
  editor = "nvim" # This will be the $EDITOR envvar
  gitconfig.name = "David Park"
  gitconfig.email = "dpjungmin@gmail.com"
  shell = "/opt/brew/bin/fish" # The path to your shell
```

## Installation

```shell
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply dpjungmin
```

## Pull the latest changes

```shell
chezmoi update
```

## TODO

- Add Linux support

---

I use [chezmoi](https://www.chezmoi.io/) to manage my personal configuration
files accross multiple machines.

I use [alacritty](https://alacritty.org/) as my terminal emulator and [fish](https://fishshell.com/) for my shell.

This currently works for macOS only.
