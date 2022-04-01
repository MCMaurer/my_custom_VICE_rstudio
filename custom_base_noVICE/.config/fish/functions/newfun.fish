function newfun --argument name
	set -q name[1]
	touch ~/.config/fish/functions/$name.fish
	echo function $name \n \t \n end >> ~/.config/fish/functions/$name.fish

	vim ~/.config/fish/functions/$name.fish
end
