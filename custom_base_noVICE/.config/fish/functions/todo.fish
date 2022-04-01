function todo --argument file path 
	set -q path[1]
	or set path '.'
	set -q file[1]
	or set file 'ToDo.md'
	set file_html (string split -r -m1 . $file)[1].html
	
	sed -i '/^# From Files$/,$d' $file
	printf '%s\n' '' '# From Files' '' >> $file
	printf '%s\n' '#### via todo.fish' '' >> $file
	ls -t $path | xargs grep --exclude-dir=.Rproj.user --exclude-dir=renv --exclude-dir=packrat --exclude=$file --exclude=$file_html --exclude=.Rhistory -HrnI 'TODO' | awk '{print $0,"\n"}' >> $file

	knit $file html
	
end
