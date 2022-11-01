<h1 align="center">
    My dotfiles<br/><sup><sub>powered by  <a href="https://www.chezmoi.io/">chezmoi</a>
</h1>

## Pre-installation

You must have [fish] and a [nerd-font] installed on your machine.

Create a configuration file called `~/.config/chezmoi/chezmoi.toml` and define
the following variables.

```toml
[data]
  # Alacritty font settings
  alacritty.font.family = "Lekton Nerd Font" # nerd-font installed on your machine
  alacritty.font.size = "24"

  # The $EDITOR envvar will be set to this value
  editor = "nvim"

  # Global git configurations
  gitconfig.name = "David Park"
  gitconfig.email = "dpjungmin@gmail.com"

  # Path to fish shell
  shell = "/usr/local/bin/fish"

  # "dark" or "light"
  theme = "light"
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

I use [chezmoi] to manage my personal configuration files accross multiple
machines.

I use [alacritty] as my terminal emulator and [fish] for my shell.

This currently works for **macOS** and **Arch Linux**.

---

I am changing my terminal emulator to [wezterm], which is configured for
**macOS** only for now.


[alacritty]: https://alacritty.org/
[chezmoi]: https://www.chezmoi.io/
[fish]: https://fishshell.com/
[nerd-font]: https://www.nerdfonts.com/
[wezterm]: https://github.com/wez/wezterm
