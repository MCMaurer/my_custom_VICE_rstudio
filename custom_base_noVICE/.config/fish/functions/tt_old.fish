function tt_old --argument level path
	set -q level[1]
	or set level '100'
	set -q path[1]
	or set path '.'
	tree -tCaI '.git|.Rproj.user' -L $level $path
end
