#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

theme_option="@tmux-statusline-theme"
default_theme="tokyonight-night"

get_tmux_option() {
	local option default_value option_value
	option="$1"
	default_value="$2"
	option_value="$(tmux show-option -gqv "$option")"
	if [ -z "$option_value" ]; then
		echo "$default_value"
	else
		echo "$option_value"
	fi
}

main() {
	local theme theme_file
	theme="$(get_tmux_option "$theme_option" "$default_theme")"
	theme_file="$CURRENT_DIR/themes/${theme}.tmuxtheme"

	if [ ! -f "$theme_file" ]; then
		tmux display-message "tmux-themes: unknown theme '${theme}'. Check available themes in ~/.tmux.conf."
		# Fall back to default so tmux stays functional
		theme_file="$CURRENT_DIR/themes/${default_theme}.tmuxtheme"
	fi

	tmux source-file "$theme_file"
}

main
