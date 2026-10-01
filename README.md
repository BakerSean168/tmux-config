# tmux-config

Personal Tmux configuration, independently versioned for Linux/WSL/VPS use.

This repository owns Tmux behavior and plugins. Host selection/composition belongs to the personal configuration orchestration layer.

## Install directly

```bash
git clone git@github.com:BakerSean168/tmux-config.git ~/.config/tmux-config
~/.config/tmux-config/install.sh
```

The installer backs up an existing non-symlink `~/.tmux.conf`, symlinks it to this repository, and installs TPM when it is missing.

## Update

```bash
cd ~/.config/tmux-config
git pull --ff-only
```

Then reload Tmux with `prefix + r` or start a new server.
