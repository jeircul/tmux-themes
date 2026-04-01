# Contributing a New Theme

Thanks for wanting to add a theme! Here's everything you need.

## Theme file format

All themes live in `themes/` as `<theme-name>.tmuxtheme` files. Use the powerline format below — it produces clean, consistent status bars across all terminal emulators.

### Template

Copy this and substitute your palette colors (replace every `#xxxxxx` value):

```tmux
# <Theme Name>
# Palette: <link to upstream palette>
# <key color role comments, e.g.: bg=#1e1e2e accent=#89b4fa text=#cdd6f4>

set -g mode-style "fg=<ACCENT>,bg=<SURFACE>"

set -g message-style "fg=<ACCENT>,bg=<SURFACE>"
set -g message-command-style "fg=<ACCENT>,bg=<SURFACE>"

set -g pane-border-style "fg=<SURFACE>"
set -g pane-active-border-style "fg=<ACCENT>"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=<ACCENT>,bg=<BG>"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=<BG>,bg=<ACCENT>,bold] #S #[fg=<ACCENT>,bg=<BG>,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=<BG>,bg=<BG>,nobold,nounderscore,noitalics]#[fg=<ACCENT>,bg=<BG>] #{prefix_highlight} #[fg=<SURFACE>,bg=<BG>,nobold,nounderscore,noitalics]#[fg=<ACCENT>,bg=<SURFACE>] %Y-%m-%d  %I:%M %p #[fg=<ACCENT>,bg=<SURFACE>,nobold,nounderscore,noitalics]#[fg=<BG>,bg=<ACCENT>,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=<BG>,bg=<BG>,nobold,nounderscore,noitalics]#[fg=<ACCENT>,bg=<BG>] #{prefix_highlight} #[fg=<SURFACE>,bg=<BG>,nobold,nounderscore,noitalics]#[fg=<ACCENT>,bg=<SURFACE>] %Y-%m-%d  %H:%M #[fg=<ACCENT>,bg=<SURFACE>,nobold,nounderscore,noitalics]#[fg=<BG>,bg=<ACCENT>,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=<TEXT>,bg=<BG>"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=<TEXT>,bg=<BG>"
setw -g window-status-format "#[fg=<BG>,bg=<BG>,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=<BG>,bg=<BG>,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=<BG>,bg=<SURFACE>,nobold,nounderscore,noitalics]#[fg=<ACCENT>,bg=<SURFACE>,bold] #I  #W #F #[fg=<SURFACE>,bg=<BG>,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=<HIGHLIGHT>]#[bg=<BG>]#[fg=<BG>]#[bg=<HIGHLIGHT>]"
set -g @prefix_highlight_output_suffix ""
```

### Color roles

| Placeholder | Role | Example (Catppuccin Mocha) |
|---|---|---|
| `<BG>` | Darkest background (status bar) | `#11111b` (crust) |
| `<SURFACE>` | Elevated surface (active window bg) | `#45475a` (surface1) |
| `<ACCENT>` | Primary accent color | `#89b4fa` (blue) |
| `<TEXT>` | Inactive window / subdued text | `#cdd6f4` (text) |
| `<HIGHLIGHT>` | Prefix highlight accent (often yellow/orange) | `#f9e2af` (yellow) |

For **light themes**, swap `<BG>` to the lightest background and `<TEXT>` to a dark foreground color — see `catppuccin-latte.tmuxtheme` for a reference.

## Checklist

- [ ] File is `themes/<theme-name>.tmuxtheme` (lowercase, hyphen-separated)
- [ ] All colors use `#rrggbb` hex format (no terminal color names or `colourN`)
- [ ] A comment at the top links to the upstream palette
- [ ] The 12h/24h clock `if-shell` block is included
- [ ] `@prefix_highlight_output_prefix/suffix` are set
- [ ] Theme is listed in `README.md` under the correct section
- [ ] ShellCheck passes: `shellcheck themes/<theme-name>.tmuxtheme` (or run the CI)

## Naming conventions

- Single palette, dark variant: `<palette>-dark` (e.g. `gruvbox-dark`)
- Single palette, light variant: `<palette>-light` (e.g. `solarized-light`)
- Palette with named flavors: `<palette>-<flavor>` (e.g. `catppuccin-mocha`)
