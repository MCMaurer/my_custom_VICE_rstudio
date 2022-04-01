function tt --argument level path
	set -q level[1]
	or set level '100'
	set -q path[1]
	or set path '.'

	exa --color=always --all --header --tree --long --git --sort=mod --ignore-glob='.git|.Rproj.user' --level=$level $path
end
