function gitig
	find . -size +100M | sed 's|^\./||g' | cat >> .gitignore; awk '!NF || !seen[$0]++' .gitignore; and sort -u .gitignore > .gitignore_new; and mv .gitignore_new .gitignore
end
