default:
	./vasm6502_oldstyle -Fbin -pad=234 -o rom.bin blink.s

eeprom:
	minipro -p AT28C256 -w rom.bin