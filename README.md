![Shellcheck](https://github.com/jeircul/tmux-themes/actions/workflows/shellcheck.yml/badge.svg)

# tmux-themes

A collection of clean, powerline-style tmux status bar themes. All themes use consistent `#rrggbb` hex colors and the same powerline segment format so they look sharp across terminals.

## 📦 Installation via [TPM](https://github.com/tmux-plugins/tpm) (recommended)

1. Add plugin to the list of TPM plugins in `.tmux.conf`:

   ```tmux
   set -g @plugin 'jeircul/tmux-themes'
   ```

2. Use <kbd>prefix</kbd>–<kbd>I</kbd> to install `tmux-themes`.
3. When you want to update `tmux-themes` use <kbd>prefix</kbd>–<kbd>U</kbd>.

<details>
<summary>📦 Manual Installation</summary>

1. Clone the repo:

   ```sh
   git clone https://github.com/jeircul/tmux-themes ~/.config/tmux/plugins/tmux-themes
   ```

2. Add this line to the bottom of `.tmux.conf`:

   ```tmux
   run-shell ~/.config/tmux/plugins/tmux-themes/theme.tmux
   ```

3. Use <kbd>prefix</kbd>–<kbd>R</kbd> to reload the TMUX environment.
</details>

## 🚀 Usage

Add one line to `.tmux.conf` to choose your theme:

```tmux
set -g @tmux-statusline-theme 'catppuccin-mocha'
```

If no theme is set, `tokyonight-night` is used as the default.

## 🎨 Available Themes

### Catppuccin

| Theme | Flavor | Style |
|---|---|---|
| `catppuccin-mocha` | Mocha | Dark |
| `catppuccin-macchiato` | Macchiato | Dark |
| `catppuccin-frappe` | Frappé | Dark |
| `catppuccin-latte` | Latte | Light |

```tmux
set -g @tmux-statusline-theme 'catppuccin-mocha'
set -g @tmux-statusline-theme 'catppuccin-macchiato'
set -g @tmux-statusline-theme 'catppuccin-frappe'
set -g @tmux-statusline-theme 'catppuccin-latte'
```

### Tokyonight

| Theme | Style |
|---|---|
| `tokyonight-night` | Dark (default) |
| `tokyonight-storm` | Dark |
| `tokyonight-moon` | Dark |
| `tokyonight-day` | Light |

```tmux
set -g @tmux-statusline-theme 'tokyonight-night'
set -g @tmux-statusline-theme 'tokyonight-storm'
set -g @tmux-statusline-theme 'tokyonight-moon'
set -g @tmux-statusline-theme 'tokyonight-day'
```

### Gruvbox

| Theme | Style |
|---|---|
| `gruvbox-dark` | Dark |
| `gruvbox-light-hard` | Light |

```tmux
set -g @tmux-statusline-theme 'gruvbox-dark'
set -g @tmux-statusline-theme 'gruvbox-light-hard'
```

### Solarized

| Theme | Style |
|---|---|
| `solarized-dark` | Dark |
| `solarized-light` | Light |

```tmux
set -g @tmux-statusline-theme 'solarized-dark'
set -g @tmux-statusline-theme 'solarized-light'
```

### Other

| Theme | Style |
|---|---|
| `ayu-light` | Light |
| `two-firewatch-light` | Light |

```tmux
set -g @tmux-statusline-theme 'ayu-light'
set -g @tmux-statusline-theme 'two-firewatch-light'
```

## 🔌 Plugin Support

Themes include built-in support for [tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight). The highlight colors are tuned per-theme.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for how to add a new theme.

## ⚖ License

[MIT license](LICENSE)
