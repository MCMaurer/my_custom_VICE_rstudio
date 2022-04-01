function rst_preview 
	conda activate cyv_documentation
	open http://0.0.0.0:8000/	
	sphinx-autobuild -b html --host 0.0.0.0 --port 8000 --poll . _build_html
 end
