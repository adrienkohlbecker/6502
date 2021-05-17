default:
	(cd layout && ./make.sh)
	./vasm6502_oldstyle -Fbin -pad=234 -wdc02 -o rom.bin src/main.s
	hexdump -C rom.bin

eeprom:
	minipro -p AT28C256 -w rom.bin
