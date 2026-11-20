# tmux-config

Personal Tmux configuration, independently versioned for Linux/WSL/VPS use.

This repository owns Tmux behavior and plugins. Host selection/composition belongs to the personal configuration orchestration layer.

## Install directly

```bash
git clone https://github.com/BakerSean168/tmux-config.git ~/.config/tmux-config
~/.config/tmux-config/install.sh
```

The installer backs up an existing non-symlink `~/.tmux.conf`, symlinks it to this repository, and installs TPM when it is missing.

## Update

```bash
cd ~/.config/tmux-config
git pull --ff-only
```

Then reload Tmux with `prefix + r` or start a new server.

## What is included

- `Ctrl+a` prefix, `|` / `-` panes and mouse support.
- `tmux-sensible` and `tmux-resurrect` via TPM (installed by `install.sh`).
- Reload config using `prefix + r`.

Tmux, Git and a compatible shell must be installed separately. The installer
backs up an existing `~/.tmux.conf`; host-specific preferences remain on
the local machine. Licensed under [MIT](LICENSE).
