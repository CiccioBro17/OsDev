ASM=nasm

SRC_DIR=src
BUILD_DIR=build

$(BUILD_DIR)/srto.uk.img: $(BUILD_DIR)/srto.uk.bin
	cp $(BUILD_DIR)/srto.uk.bin $(BUILD_DIR)/srto.uk.img
	truncate -s 1440k $(BUILD_DIR)/srto.uk.img

$(BUILD_DIR)/srto.uk.bin: $(SRC_DIR)/srto.uk.asm
	$(ASM) $(SRC_DIR)/srto.uk.asm -f bin -o $(BUILD_DIR)/srto.uk.bin
	