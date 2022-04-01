function fndw --argument pattern exclude exclude2 exclude3
	set -q exclude[1]
	set -q exclude2[2]
	set -q exclude3[3]
	#or set exclude3 '*.Rproj*'
	ls -tr . | xargs grep -HrniI --color=always --exclude='.Rhistory' --exclude='*.html' --exclude-dir='*.Rproj' --exclude-dir=$exclude --exclude-dir=$exclude2 --exclude-dir=$exclude3 "$pattern"
end
