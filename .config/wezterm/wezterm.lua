local wezterm = require 'wezterm';

return {
    default_prog = {"/run/current-system/sw/bin/tmux"},
    font = wezterm.font("Hack Nerd Font", {weight = "Regular", italic = true}),
	font_size = "27.0"
}
