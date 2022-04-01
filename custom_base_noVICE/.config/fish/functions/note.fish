function note --argument name
	set -q name[1]
	v (date +"%m_%d_%Y")"_"$name".md"
end

