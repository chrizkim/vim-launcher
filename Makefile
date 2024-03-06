SCRIPT_FILE=launch.applescript
ICON_FILE=vim.icns
BUILD_DIR=build
OUTPUT_PATH=$(BUILD_DIR)/Vim.app

all: build_dir build seticon

build_dir:
	mkdir -p $(BUILD_DIR)

build:
	rm -rf $(OUTPUT_PATH)
	osacompile -x -o $(OUTPUT_PATH) $(SCRIPT_FILE)

seticon:
	cp $(ICON_FILE) $(OUTPUT_PATH)/Contents/Resources/droplet.icns

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all build_dir build seticon clean
