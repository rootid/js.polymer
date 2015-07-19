.PHONY : install_bower install_polymer update_polymer add_elements 

install_bower :
	@echo "Installing the bower"
	npm install bower
	@echo "installed bower use -g to install globally"

install_polymer :
	@echo "Installing polymer"	
	./node_modules/bower/bin/bower init
	./node_modules/bower/bin/bower install --save Polymer/polymer#^1.0.0
	unlink components
	ln -s $PWD/bower_components components
	@echo "Installed polymer"	

update_polymer :
	@echo "Updating polymer"
	bower update
	@echo "Updated polymer with latest version"

start_server :
	echo @ "starting the server in test directory"
	python -m SimpleHTTPServer 9000

add_ajax :
	echo @ "Adding ajax"
	./node_modules/bower/bin/bower install --save Polymer/core-ajax#^0.5
	./node_modules/bower/bin/bower install --save PolymerElements/iron-ajax#^1.0.0
	./node_modules/bower/bin/bower install --save PolymerElements/paper-button#^1.0.0

add_elements :
	echo @"Adding elements"
	./node_modules/bower/bin/bower install --save PolymerElements/iron-elements
	./node_modules/bower/bin/bower install --save PolymerElements/paper-elements
	./node_modules/bower/bin/bower install --save PolymerElements/gold-elements

add_goog_elements:
	echo @"Installing google elements"
	./node_modules/bower/bin/bower install --save GoogleWebComponents/google-map 
