function knit --argument input_file output_format
	set -q output_format[1]
	or set output_format html
	set output_file (string split -r -m1 . $input_file)[1].$output_format
	pandoc -c ~/Documents/pandoc.css -s $input_file -o $output_file
end
