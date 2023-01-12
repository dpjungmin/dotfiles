<h1 align="center">
    My dotfiles<br/><sup><sub>powered by  <a href="https://www.chezmoi.io/">chezmoi</a>
</h1>

## Installation (macOS)

```shell
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply dpjungmin
```

## Installation (NixOS)

Install [home-manager] and run the following commands.

```shell
nix-env -iA nixos.chezmoi
chezmoi init --apply dpjungmin
cd ~/.config/nixpkgs
./update.sh
```

## Pull the latest changes

```shell
chezmoi update
```

---

I use [chezmoi] to manage my personal configuration files accross multiple machines.

I use [wezterm] as my terminal emulator and [fish] for my shell.

This currently works for **macOS** and **NixOS**.

[wezterm]: https://github.com/wez/wezterm
[chezmoi]: https://www.chezmoi.io/
[fish]: https://fishshell.com/
[home-manager]: https://github.com/nix-community/home-manager
