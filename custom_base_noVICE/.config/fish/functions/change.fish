function change --argument old_phrase new_phrase
	# changes all instances of old_phrase in the current directory to new_phrase. NOT on filenames, just in files

grep -rli $old_phrase ./* | xargs -i@ sed -i "s/$old_phrase/$new_phrase/g" @
 	 
 end
