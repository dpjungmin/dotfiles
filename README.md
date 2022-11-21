<h1 align="center">
    My dotfiles<br/><sup><sub>powered by  <a href="https://www.chezmoi.io/">chezmoi</a>
</h1>

## Pre-installation

Create a configuration file called `~/.config/chezmoi/chezmoi.toml` and define the following
variables.

```toml
[data]
  # Global git configurations
  gitconfig.name = "David Park"
  gitconfig.email = "dpjungmin@gmail.com"
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

I use [chezmoi] to manage my personal configuration files accross multiple machines.

I use [wezterm] as my terminal emulator and [fish] for my shell.

This currently works for **macOS**.

---

I am working on to make this work on **Arch Linux**.

[wezterm]: https://github.com/wez/wezterm
[chezmoi]: https://www.chezmoi.io/
[fish]: https://fishshell.com/
