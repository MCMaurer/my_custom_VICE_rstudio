function fnd --argument pattern level path 
	set -q path[1]
	or set path '.'
	set -q level[1]
	or set level 1000000000
	
	#exa --all --long --git --sort=mod (fd -HI -d $level $pattern $path)
	find $path -maxdepth $level -iname "*$pattern*" -printf "%T@ %Tc %p\n" | sort -n | cut -f2- -d " "
end
