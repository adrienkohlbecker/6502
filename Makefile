default:
	./vasm6502_oldstyle -Fbin -pad=234 -o rom.bin blink.s
	hexdump -C rom.bin

eeprom:
	minipro -p AT28C256 -w rom.bin