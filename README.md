<h1 align="center">
    My configuration files<br/><sup><sub>powered by  <a href="https://www.chezmoi.io/">chezmoi</a>
</h1>

## Pre-installation

Create a configuration file called `~/.config/chezmoi/chezmoi.toml` and define
the following variables.

```toml
[data]
  editor = "nvim"
  gitconfig.name = "David Park"
  gitconfig.email = "dpjungmin@gmail.com"
  shell = "/opt/brew/bin/fish"
```

## Installation

`sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply dpjungmin`

## Pull the latest changes

`chezmoi update`

## TODO

- Add Linux support

---

This is WIP.

This currently works for macOS only.

I use [alacritty](https://alacritty.org/) as my terminal emulator and [fish](https://fishshell.com/) for my shell.
