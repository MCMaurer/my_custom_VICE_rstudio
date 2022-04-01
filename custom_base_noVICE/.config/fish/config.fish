# set color theme and greeting
set -g theme_color_scheme dracula 
set -g fish_greeting "if the filepath you followed led you to this, of what use was the filepath?"

# this makes CTRL+g change you from insert or visual mode to normal mode in vim keybindings, instead of escape. Tried to set this to "fd" but there was no timeout so you could never type those two letters without executing the command 

bind -s -M insert \cg "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"

bind -s -M visual \cg "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"

# set background color in vim visual mode to red
set fish_color_selection --background=red

# trying to set color scheme manually
set fish_color_comment --background=red
