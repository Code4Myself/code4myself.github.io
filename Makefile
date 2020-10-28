HUGO := hugo
ASSETS_DIR := assets/js/vendor/
STATIC_DIR := static/
build-js:
	mkdir -p $(ASSETS_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(ASSETS_DIR)
	cp node_modules/popper.js/dist/umd/popper.min.js $(ASSETS_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(ASSETS_DIR)

	mkdir -p $(STATIC_DIR)/elements/fa-sprites/
	cp node_modules/bootstrap-icons/bootstrap-icons.svg $(STATIC_DIR)/elements/
	cp node_modules/feather-icons/dist/feather-sprite.svg $(STATIC_DIR)/elements/
	cp node_modules/@fortawesome/fontawesome-free/sprites/* $(STATIC_DIR)/elements/fa-sprites/
build: build-js
	$(HUGO)
serve: build-js
	$(HUGO) server
