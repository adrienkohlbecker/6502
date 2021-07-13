EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AK's_Library:71256SA U1
U 1 1 60BD56E8
P 2100 1950
F 0 "U1" H 2100 2000 50  0000 C CNN
F 1 "71256SA" H 2100 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2100 1850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 2100 1850 50  0001 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
Entry Wire Line
	1350 1150 1450 1250
Entry Wire Line
	1350 1250 1450 1350
Entry Wire Line
	1350 1350 1450 1450
Entry Wire Line
	1350 1450 1450 1550
Entry Wire Line
	1350 1550 1450 1650
Entry Wire Line
	1350 1650 1450 1750
Entry Wire Line
	1350 1750 1450 1850
Entry Wire Line
	1350 1850 1450 1950
Entry Wire Line
	1350 1950 1450 2050
Entry Wire Line
	1350 2050 1450 2150
Entry Wire Line
	1350 2150 1450 2250
Entry Wire Line
	1350 2250 1450 2350
Entry Wire Line
	1350 2350 1450 2450
Entry Wire Line
	1350 2450 1450 2550
Entry Wire Line
	1350 2550 1450 2650
$Comp
L power:VCC #PWR01
U 1 1 60BE1297
P 2100 1050
F 0 "#PWR01" H 2100 900 50  0001 C CNN
F 1 "VCC" H 2115 1223 50  0000 C CNN
F 2 "" H 2100 1050 50  0001 C CNN
F 3 "" H 2100 1050 50  0001 C CNN
	1    2100 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60BE1B0C
P 2100 2850
F 0 "#PWR02" H 2100 2600 50  0001 C CNN
F 1 "GND" H 2105 2677 50  0000 C CNN
F 2 "" H 2100 2850 50  0001 C CNN
F 3 "" H 2100 2850 50  0001 C CNN
	1    2100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1250 1600 1250
Wire Wire Line
	1600 1350 1450 1350
Wire Wire Line
	1450 1450 1600 1450
Wire Wire Line
	1600 1550 1450 1550
Wire Wire Line
	1450 1650 1600 1650
Wire Wire Line
	1600 1750 1450 1750
Wire Wire Line
	1450 1850 1600 1850
Wire Wire Line
	1600 1950 1450 1950
Wire Wire Line
	1450 2050 1600 2050
Wire Wire Line
	1600 2150 1450 2150
Wire Wire Line
	1450 2250 1600 2250
Wire Wire Line
	1600 2350 1450 2350
Wire Wire Line
	1450 2450 1600 2450
Wire Wire Line
	1600 2550 1450 2550
Wire Wire Line
	1450 2650 1600 2650
Entry Wire Line
	2750 1950 2850 2050
Entry Wire Line
	2750 2050 2850 2150
Entry Wire Line
	2750 2150 2850 2250
Entry Wire Line
	2750 2250 2850 2350
Entry Wire Line
	2750 2350 2850 2450
Entry Wire Line
	2750 2450 2850 2550
Entry Wire Line
	2750 2550 2850 2650
Entry Wire Line
	2750 2650 2850 2750
Wire Wire Line
	2600 1950 2750 1950
Wire Wire Line
	2750 2050 2600 2050
Wire Wire Line
	2600 2150 2750 2150
Wire Wire Line
	2750 2250 2600 2250
Wire Wire Line
	2600 2350 2750 2350
Wire Wire Line
	2750 2450 2600 2450
Wire Wire Line
	2600 2550 2750 2550
Wire Wire Line
	2750 2650 2600 2650
Text Label 2650 1950 0    50   ~ 0
Q0
Text Label 2650 2050 0    50   ~ 0
Q1
Text Label 2650 2150 0    50   ~ 0
Q2
Text Label 2650 2250 0    50   ~ 0
Q3
Text Label 2650 2350 0    50   ~ 0
Q4
Text Label 2650 2450 0    50   ~ 0
Q5
Text Label 2650 2550 0    50   ~ 0
Q6
Text Label 2650 2650 0    50   ~ 0
Q7
Text Label 1450 2650 0    50   ~ 0
A14
Text Label 1450 2550 0    50   ~ 0
A13
Text Label 1450 2450 0    50   ~ 0
A12
Text Label 1450 2350 0    50   ~ 0
A11
Text Label 1450 2250 0    50   ~ 0
A10
Text Label 1450 2150 0    50   ~ 0
A9
Text Label 1450 2050 0    50   ~ 0
A8
Text Label 1450 1950 0    50   ~ 0
A7
Text Label 1450 1850 0    50   ~ 0
A6
Text Label 1450 1750 0    50   ~ 0
A5
Text Label 1450 1650 0    50   ~ 0
A4
Text Label 1450 1550 0    50   ~ 0
A3
Text Label 1450 1450 0    50   ~ 0
A2
Text Label 1450 1350 0    50   ~ 0
A1
Text Label 1450 1250 0    50   ~ 0
A0
Text GLabel 2650 1600 2    50   Input ~ 0
~WE
Text GLabel 2650 1450 2    50   Input ~ 0
~OE
Text GLabel 2600 1250 2    50   Input ~ 0
~CS0
Wire Wire Line
	2600 1450 2650 1450
Wire Wire Line
	2650 1600 2600 1600
$Comp
L AK's_Library:71256SA U3
U 1 1 60BDF19B
P 3900 1950
F 0 "U3" H 3900 2000 50  0000 C CNN
F 1 "71256SA" H 3900 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3900 1850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 3900 1850 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
Entry Wire Line
	3150 1150 3250 1250
Entry Wire Line
	3150 1250 3250 1350
Entry Wire Line
	3150 1350 3250 1450
Entry Wire Line
	3150 1450 3250 1550
Entry Wire Line
	3150 1550 3250 1650
Entry Wire Line
	3150 1650 3250 1750
Entry Wire Line
	3150 1750 3250 1850
Entry Wire Line
	3150 1850 3250 1950
Entry Wire Line
	3150 1950 3250 2050
Entry Wire Line
	3150 2050 3250 2150
Entry Wire Line
	3150 2150 3250 2250
Entry Wire Line
	3150 2250 3250 2350
Entry Wire Line
	3150 2350 3250 2450
Entry Wire Line
	3150 2450 3250 2550
Entry Wire Line
	3150 2550 3250 2650
$Comp
L power:VCC #PWR07
U 1 1 60BDF1B0
P 3900 1050
F 0 "#PWR07" H 3900 900 50  0001 C CNN
F 1 "VCC" H 3915 1223 50  0000 C CNN
F 2 "" H 3900 1050 50  0001 C CNN
F 3 "" H 3900 1050 50  0001 C CNN
	1    3900 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60BDF1B6
P 3900 2850
F 0 "#PWR08" H 3900 2600 50  0001 C CNN
F 1 "GND" H 3905 2677 50  0000 C CNN
F 2 "" H 3900 2850 50  0001 C CNN
F 3 "" H 3900 2850 50  0001 C CNN
	1    3900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1250 3400 1250
Wire Wire Line
	3400 1350 3250 1350
Wire Wire Line
	3250 1450 3400 1450
Wire Wire Line
	3400 1550 3250 1550
Wire Wire Line
	3250 1650 3400 1650
Wire Wire Line
	3400 1750 3250 1750
Wire Wire Line
	3250 1850 3400 1850
Wire Wire Line
	3400 1950 3250 1950
Wire Wire Line
	3250 2050 3400 2050
Wire Wire Line
	3400 2150 3250 2150
Wire Wire Line
	3250 2250 3400 2250
Wire Wire Line
	3400 2350 3250 2350
Wire Wire Line
	3250 2450 3400 2450
Wire Wire Line
	3400 2550 3250 2550
Wire Wire Line
	3250 2650 3400 2650
Entry Wire Line
	4550 1950 4650 2050
Entry Wire Line
	4550 2050 4650 2150
Entry Wire Line
	4550 2150 4650 2250
Entry Wire Line
	4550 2250 4650 2350
Entry Wire Line
	4550 2350 4650 2450
Entry Wire Line
	4550 2450 4650 2550
Entry Wire Line
	4550 2550 4650 2650
Entry Wire Line
	4550 2650 4650 2750
Wire Wire Line
	4400 1950 4550 1950
Wire Wire Line
	4550 2050 4400 2050
Wire Wire Line
	4400 2150 4550 2150
Wire Wire Line
	4550 2250 4400 2250
Wire Wire Line
	4400 2350 4550 2350
Wire Wire Line
	4550 2450 4400 2450
Wire Wire Line
	4400 2550 4550 2550
Wire Wire Line
	4550 2650 4400 2650
Text Label 4450 1950 0    50   ~ 0
Q0
Text Label 4450 2050 0    50   ~ 0
Q1
Text Label 4450 2150 0    50   ~ 0
Q2
Text Label 4450 2250 0    50   ~ 0
Q3
Text Label 4450 2350 0    50   ~ 0
Q4
Text Label 4450 2450 0    50   ~ 0
Q5
Text Label 4450 2550 0    50   ~ 0
Q6
Text Label 4450 2650 0    50   ~ 0
Q7
Text Label 3250 2650 0    50   ~ 0
A14
Text Label 3250 2550 0    50   ~ 0
A13
Text Label 3250 2450 0    50   ~ 0
A12
Text Label 3250 2350 0    50   ~ 0
A11
Text Label 3250 2250 0    50   ~ 0
A10
Text Label 3250 2150 0    50   ~ 0
A9
Text Label 3250 2050 0    50   ~ 0
A8
Text Label 3250 1950 0    50   ~ 0
A7
Text Label 3250 1850 0    50   ~ 0
A6
Text Label 3250 1750 0    50   ~ 0
A5
Text Label 3250 1650 0    50   ~ 0
A4
Text Label 3250 1550 0    50   ~ 0
A3
Text Label 3250 1450 0    50   ~ 0
A2
Text Label 3250 1350 0    50   ~ 0
A1
Text Label 3250 1250 0    50   ~ 0
A0
Text GLabel 4450 1600 2    50   Input ~ 0
~WE
Text GLabel 4450 1450 2    50   Input ~ 0
~OE
Text GLabel 2600 3650 2    50   Input ~ 0
~CS1
Wire Wire Line
	4400 1450 4450 1450
Wire Wire Line
	4450 1600 4400 1600
$Comp
L AK's_Library:71256SA U5
U 1 1 60BF4BBA
P 5700 1950
F 0 "U5" H 5700 2000 50  0000 C CNN
F 1 "71256SA" H 5700 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5700 1850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 5700 1850 50  0001 C CNN
	1    5700 1950
	1    0    0    -1  
$EndComp
Entry Wire Line
	4950 1150 5050 1250
Entry Wire Line
	4950 1250 5050 1350
Entry Wire Line
	4950 1350 5050 1450
Entry Wire Line
	4950 1450 5050 1550
Entry Wire Line
	4950 1550 5050 1650
Entry Wire Line
	4950 1650 5050 1750
Entry Wire Line
	4950 1750 5050 1850
Entry Wire Line
	4950 1850 5050 1950
Entry Wire Line
	4950 1950 5050 2050
Entry Wire Line
	4950 2050 5050 2150
Entry Wire Line
	4950 2150 5050 2250
Entry Wire Line
	4950 2250 5050 2350
Entry Wire Line
	4950 2350 5050 2450
Entry Wire Line
	4950 2450 5050 2550
Entry Wire Line
	4950 2550 5050 2650
$Comp
L power:VCC #PWR011
U 1 1 60BF4BCF
P 5700 1050
F 0 "#PWR011" H 5700 900 50  0001 C CNN
F 1 "VCC" H 5715 1223 50  0000 C CNN
F 2 "" H 5700 1050 50  0001 C CNN
F 3 "" H 5700 1050 50  0001 C CNN
	1    5700 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60BF4BD5
P 5700 2850
F 0 "#PWR012" H 5700 2600 50  0001 C CNN
F 1 "GND" H 5705 2677 50  0000 C CNN
F 2 "" H 5700 2850 50  0001 C CNN
F 3 "" H 5700 2850 50  0001 C CNN
	1    5700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1250 5200 1250
Wire Wire Line
	5200 1350 5050 1350
Wire Wire Line
	5050 1450 5200 1450
Wire Wire Line
	5200 1550 5050 1550
Wire Wire Line
	5050 1650 5200 1650
Wire Wire Line
	5200 1750 5050 1750
Wire Wire Line
	5050 1850 5200 1850
Wire Wire Line
	5200 1950 5050 1950
Wire Wire Line
	5050 2050 5200 2050
Wire Wire Line
	5200 2150 5050 2150
Wire Wire Line
	5050 2250 5200 2250
Wire Wire Line
	5200 2350 5050 2350
Wire Wire Line
	5050 2450 5200 2450
Wire Wire Line
	5200 2550 5050 2550
Wire Wire Line
	5050 2650 5200 2650
Entry Wire Line
	6350 1950 6450 2050
Entry Wire Line
	6350 2050 6450 2150
Entry Wire Line
	6350 2150 6450 2250
Entry Wire Line
	6350 2250 6450 2350
Entry Wire Line
	6350 2350 6450 2450
Entry Wire Line
	6350 2450 6450 2550
Entry Wire Line
	6350 2550 6450 2650
Entry Wire Line
	6350 2650 6450 2750
Wire Wire Line
	6200 1950 6350 1950
Wire Wire Line
	6350 2050 6200 2050
Wire Wire Line
	6200 2150 6350 2150
Wire Wire Line
	6350 2250 6200 2250
Wire Wire Line
	6200 2350 6350 2350
Wire Wire Line
	6350 2450 6200 2450
Wire Wire Line
	6200 2550 6350 2550
Wire Wire Line
	6350 2650 6200 2650
Text Label 6250 1950 0    50   ~ 0
Q0
Text Label 6250 2050 0    50   ~ 0
Q1
Text Label 6250 2150 0    50   ~ 0
Q2
Text Label 6250 2250 0    50   ~ 0
Q3
Text Label 6250 2350 0    50   ~ 0
Q4
Text Label 6250 2450 0    50   ~ 0
Q5
Text Label 6250 2550 0    50   ~ 0
Q6
Text Label 6250 2650 0    50   ~ 0
Q7
Text Label 5050 2650 0    50   ~ 0
A14
Text Label 5050 2550 0    50   ~ 0
A13
Text Label 5050 2450 0    50   ~ 0
A12
Text Label 5050 2350 0    50   ~ 0
A11
Text Label 5050 2250 0    50   ~ 0
A10
Text Label 5050 2150 0    50   ~ 0
A9
Text Label 5050 2050 0    50   ~ 0
A8
Text Label 5050 1950 0    50   ~ 0
A7
Text Label 5050 1850 0    50   ~ 0
A6
Text Label 5050 1750 0    50   ~ 0
A5
Text Label 5050 1650 0    50   ~ 0
A4
Text Label 5050 1550 0    50   ~ 0
A3
Text Label 5050 1450 0    50   ~ 0
A2
Text Label 5050 1350 0    50   ~ 0
A1
Text Label 5050 1250 0    50   ~ 0
A0
Text GLabel 6250 1600 2    50   Input ~ 0
~WE
Text GLabel 6250 1450 2    50   Input ~ 0
~OE
Text GLabel 4400 1250 2    50   Input ~ 0
~CS2
Wire Wire Line
	6200 1450 6250 1450
Wire Wire Line
	6250 1600 6200 1600
$Comp
L AK's_Library:71256SA U7
U 1 1 60BF4C17
P 7500 1950
F 0 "U7" H 7500 2000 50  0000 C CNN
F 1 "71256SA" H 7500 1900 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7500 1850 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 7500 1850 50  0001 C CNN
	1    7500 1950
	1    0    0    -1  
$EndComp
Entry Wire Line
	6750 1150 6850 1250
Entry Wire Line
	6750 1250 6850 1350
Entry Wire Line
	6750 1350 6850 1450
Entry Wire Line
	6750 1450 6850 1550
Entry Wire Line
	6750 1550 6850 1650
Entry Wire Line
	6750 1650 6850 1750
Entry Wire Line
	6750 1750 6850 1850
Entry Wire Line
	6750 1850 6850 1950
Entry Wire Line
	6750 1950 6850 2050
Entry Wire Line
	6750 2050 6850 2150
Entry Wire Line
	6750 2150 6850 2250
Entry Wire Line
	6750 2250 6850 2350
Entry Wire Line
	6750 2350 6850 2450
Entry Wire Line
	6750 2450 6850 2550
Entry Wire Line
	6750 2550 6850 2650
$Comp
L power:VCC #PWR015
U 1 1 60BF4C2C
P 7500 1050
F 0 "#PWR015" H 7500 900 50  0001 C CNN
F 1 "VCC" H 7515 1223 50  0000 C CNN
F 2 "" H 7500 1050 50  0001 C CNN
F 3 "" H 7500 1050 50  0001 C CNN
	1    7500 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60BF4C32
P 7500 2850
F 0 "#PWR016" H 7500 2600 50  0001 C CNN
F 1 "GND" H 7505 2677 50  0000 C CNN
F 2 "" H 7500 2850 50  0001 C CNN
F 3 "" H 7500 2850 50  0001 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1250 7000 1250
Wire Wire Line
	7000 1350 6850 1350
Wire Wire Line
	6850 1450 7000 1450
Wire Wire Line
	7000 1550 6850 1550
Wire Wire Line
	6850 1650 7000 1650
Wire Wire Line
	7000 1750 6850 1750
Wire Wire Line
	6850 1850 7000 1850
Wire Wire Line
	7000 1950 6850 1950
Wire Wire Line
	6850 2050 7000 2050
Wire Wire Line
	7000 2150 6850 2150
Wire Wire Line
	6850 2250 7000 2250
Wire Wire Line
	7000 2350 6850 2350
Wire Wire Line
	6850 2450 7000 2450
Wire Wire Line
	7000 2550 6850 2550
Wire Wire Line
	6850 2650 7000 2650
Entry Wire Line
	8150 1950 8250 2050
Entry Wire Line
	8150 2050 8250 2150
Entry Wire Line
	8150 2150 8250 2250
Entry Wire Line
	8150 2250 8250 2350
Entry Wire Line
	8150 2350 8250 2450
Entry Wire Line
	8150 2450 8250 2550
Entry Wire Line
	8150 2550 8250 2650
Entry Wire Line
	8150 2650 8250 2750
Wire Wire Line
	8000 1950 8150 1950
Wire Wire Line
	8150 2050 8000 2050
Wire Wire Line
	8000 2150 8150 2150
Wire Wire Line
	8150 2250 8000 2250
Wire Wire Line
	8000 2350 8150 2350
Wire Wire Line
	8150 2450 8000 2450
Wire Wire Line
	8000 2550 8150 2550
Wire Wire Line
	8150 2650 8000 2650
Text Label 8050 1950 0    50   ~ 0
Q0
Text Label 8050 2050 0    50   ~ 0
Q1
Text Label 8050 2150 0    50   ~ 0
Q2
Text Label 8050 2250 0    50   ~ 0
Q3
Text Label 8050 2350 0    50   ~ 0
Q4
Text Label 8050 2450 0    50   ~ 0
Q5
Text Label 8050 2550 0    50   ~ 0
Q6
Text Label 8050 2650 0    50   ~ 0
Q7
Text Label 6850 2650 0    50   ~ 0
A14
Text Label 6850 2550 0    50   ~ 0
A13
Text Label 6850 2450 0    50   ~ 0
A12
Text Label 6850 2350 0    50   ~ 0
A11
Text Label 6850 2250 0    50   ~ 0
A10
Text Label 6850 2150 0    50   ~ 0
A9
Text Label 6850 2050 0    50   ~ 0
A8
Text Label 6850 1950 0    50   ~ 0
A7
Text Label 6850 1850 0    50   ~ 0
A6
Text Label 6850 1750 0    50   ~ 0
A5
Text Label 6850 1650 0    50   ~ 0
A4
Text Label 6850 1550 0    50   ~ 0
A3
Text Label 6850 1450 0    50   ~ 0
A2
Text Label 6850 1350 0    50   ~ 0
A1
Text Label 6850 1250 0    50   ~ 0
A0
Text GLabel 8050 1600 2    50   Input ~ 0
~WE
Text GLabel 8050 1450 2    50   Input ~ 0
~OE
Text GLabel 4400 3650 2    50   Input ~ 0
~CS3
Wire Wire Line
	8000 1450 8050 1450
Wire Wire Line
	8050 1600 8000 1600
$Comp
L AK's_Library:71256SA U2
U 1 1 60C12BC8
P 2100 4350
F 0 "U2" H 2100 4400 50  0000 C CNN
F 1 "71256SA" H 2100 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2100 4250 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 2100 4250 50  0001 C CNN
	1    2100 4350
	1    0    0    -1  
$EndComp
Entry Wire Line
	1350 3550 1450 3650
Entry Wire Line
	1350 3650 1450 3750
Entry Wire Line
	1350 3750 1450 3850
Entry Wire Line
	1350 3850 1450 3950
Entry Wire Line
	1350 3950 1450 4050
Entry Wire Line
	1350 4050 1450 4150
Entry Wire Line
	1350 4150 1450 4250
Entry Wire Line
	1350 4250 1450 4350
Entry Wire Line
	1350 4350 1450 4450
Entry Wire Line
	1350 4450 1450 4550
Entry Wire Line
	1350 4550 1450 4650
Entry Wire Line
	1350 4650 1450 4750
Entry Wire Line
	1350 4750 1450 4850
Entry Wire Line
	1350 4850 1450 4950
Entry Wire Line
	1350 4950 1450 5050
$Comp
L power:VCC #PWR03
U 1 1 60C12BDD
P 2100 3450
F 0 "#PWR03" H 2100 3300 50  0001 C CNN
F 1 "VCC" H 2115 3623 50  0000 C CNN
F 2 "" H 2100 3450 50  0001 C CNN
F 3 "" H 2100 3450 50  0001 C CNN
	1    2100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60C12BE3
P 2100 5250
F 0 "#PWR04" H 2100 5000 50  0001 C CNN
F 1 "GND" H 2105 5077 50  0000 C CNN
F 2 "" H 2100 5250 50  0001 C CNN
F 3 "" H 2100 5250 50  0001 C CNN
	1    2100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3650 1600 3650
Wire Wire Line
	1600 3750 1450 3750
Wire Wire Line
	1450 3850 1600 3850
Wire Wire Line
	1600 3950 1450 3950
Wire Wire Line
	1450 4050 1600 4050
Wire Wire Line
	1600 4150 1450 4150
Wire Wire Line
	1450 4250 1600 4250
Wire Wire Line
	1600 4350 1450 4350
Wire Wire Line
	1450 4450 1600 4450
Wire Wire Line
	1600 4550 1450 4550
Wire Wire Line
	1450 4650 1600 4650
Wire Wire Line
	1600 4750 1450 4750
Wire Wire Line
	1450 4850 1600 4850
Wire Wire Line
	1600 4950 1450 4950
Wire Wire Line
	1450 5050 1600 5050
Entry Wire Line
	2750 4350 2850 4450
Entry Wire Line
	2750 4450 2850 4550
Entry Wire Line
	2750 4550 2850 4650
Entry Wire Line
	2750 4650 2850 4750
Entry Wire Line
	2750 4750 2850 4850
Entry Wire Line
	2750 4850 2850 4950
Entry Wire Line
	2750 4950 2850 5050
Entry Wire Line
	2750 5050 2850 5150
Wire Wire Line
	2600 4350 2750 4350
Wire Wire Line
	2750 4450 2600 4450
Wire Wire Line
	2600 4550 2750 4550
Wire Wire Line
	2750 4650 2600 4650
Wire Wire Line
	2600 4750 2750 4750
Wire Wire Line
	2750 4850 2600 4850
Wire Wire Line
	2600 4950 2750 4950
Wire Wire Line
	2750 5050 2600 5050
Text Label 2650 4350 0    50   ~ 0
Q0
Text Label 2650 4450 0    50   ~ 0
Q1
Text Label 2650 4550 0    50   ~ 0
Q2
Text Label 2650 4650 0    50   ~ 0
Q3
Text Label 2650 4750 0    50   ~ 0
Q4
Text Label 2650 4850 0    50   ~ 0
Q5
Text Label 2650 4950 0    50   ~ 0
Q6
Text Label 2650 5050 0    50   ~ 0
Q7
Text Label 1450 5050 0    50   ~ 0
A14
Text Label 1450 4950 0    50   ~ 0
A13
Text Label 1450 4850 0    50   ~ 0
A12
Text Label 1450 4750 0    50   ~ 0
A11
Text Label 1450 4650 0    50   ~ 0
A10
Text Label 1450 4550 0    50   ~ 0
A9
Text Label 1450 4450 0    50   ~ 0
A8
Text Label 1450 4350 0    50   ~ 0
A7
Text Label 1450 4250 0    50   ~ 0
A6
Text Label 1450 4150 0    50   ~ 0
A5
Text Label 1450 4050 0    50   ~ 0
A4
Text Label 1450 3950 0    50   ~ 0
A3
Text Label 1450 3850 0    50   ~ 0
A2
Text Label 1450 3750 0    50   ~ 0
A1
Text Label 1450 3650 0    50   ~ 0
A0
Text GLabel 2650 4000 2    50   Input ~ 0
~WE
Text GLabel 2650 3850 2    50   Input ~ 0
~OE
Text GLabel 6200 1250 2    50   Input ~ 0
~CS4
Wire Wire Line
	2600 3850 2650 3850
Wire Wire Line
	2650 4000 2600 4000
$Comp
L AK's_Library:71256SA U4
U 1 1 60C12C25
P 3900 4350
F 0 "U4" H 3900 4400 50  0000 C CNN
F 1 "71256SA" H 3900 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 3900 4250 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 3900 4250 50  0001 C CNN
	1    3900 4350
	1    0    0    -1  
$EndComp
Entry Wire Line
	3150 3550 3250 3650
Entry Wire Line
	3150 3650 3250 3750
Entry Wire Line
	3150 3750 3250 3850
Entry Wire Line
	3150 3850 3250 3950
Entry Wire Line
	3150 3950 3250 4050
Entry Wire Line
	3150 4050 3250 4150
Entry Wire Line
	3150 4150 3250 4250
Entry Wire Line
	3150 4250 3250 4350
Entry Wire Line
	3150 4350 3250 4450
Entry Wire Line
	3150 4450 3250 4550
Entry Wire Line
	3150 4550 3250 4650
Entry Wire Line
	3150 4650 3250 4750
Entry Wire Line
	3150 4750 3250 4850
Entry Wire Line
	3150 4850 3250 4950
Entry Wire Line
	3150 4950 3250 5050
$Comp
L power:VCC #PWR09
U 1 1 60C12C3A
P 3900 3450
F 0 "#PWR09" H 3900 3300 50  0001 C CNN
F 1 "VCC" H 3915 3623 50  0000 C CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60C12C40
P 3900 5250
F 0 "#PWR010" H 3900 5000 50  0001 C CNN
F 1 "GND" H 3905 5077 50  0000 C CNN
F 2 "" H 3900 5250 50  0001 C CNN
F 3 "" H 3900 5250 50  0001 C CNN
	1    3900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3650 3400 3650
Wire Wire Line
	3400 3750 3250 3750
Wire Wire Line
	3250 3850 3400 3850
Wire Wire Line
	3400 3950 3250 3950
Wire Wire Line
	3250 4050 3400 4050
Wire Wire Line
	3400 4150 3250 4150
Wire Wire Line
	3250 4250 3400 4250
Wire Wire Line
	3400 4350 3250 4350
Wire Wire Line
	3250 4450 3400 4450
Wire Wire Line
	3400 4550 3250 4550
Wire Wire Line
	3250 4650 3400 4650
Wire Wire Line
	3400 4750 3250 4750
Wire Wire Line
	3250 4850 3400 4850
Wire Wire Line
	3400 4950 3250 4950
Wire Wire Line
	3250 5050 3400 5050
Entry Wire Line
	4550 4350 4650 4450
Entry Wire Line
	4550 4450 4650 4550
Entry Wire Line
	4550 4550 4650 4650
Entry Wire Line
	4550 4650 4650 4750
Entry Wire Line
	4550 4750 4650 4850
Entry Wire Line
	4550 4850 4650 4950
Entry Wire Line
	4550 4950 4650 5050
Entry Wire Line
	4550 5050 4650 5150
Wire Wire Line
	4400 4350 4550 4350
Wire Wire Line
	4550 4450 4400 4450
Wire Wire Line
	4400 4550 4550 4550
Wire Wire Line
	4550 4650 4400 4650
Wire Wire Line
	4400 4750 4550 4750
Wire Wire Line
	4550 4850 4400 4850
Wire Wire Line
	4400 4950 4550 4950
Wire Wire Line
	4550 5050 4400 5050
Text Label 4450 4350 0    50   ~ 0
Q0
Text Label 4450 4450 0    50   ~ 0
Q1
Text Label 4450 4550 0    50   ~ 0
Q2
Text Label 4450 4650 0    50   ~ 0
Q3
Text Label 4450 4750 0    50   ~ 0
Q4
Text Label 4450 4850 0    50   ~ 0
Q5
Text Label 4450 4950 0    50   ~ 0
Q6
Text Label 4450 5050 0    50   ~ 0
Q7
Text Label 3250 5050 0    50   ~ 0
A14
Text Label 3250 4950 0    50   ~ 0
A13
Text Label 3250 4850 0    50   ~ 0
A12
Text Label 3250 4750 0    50   ~ 0
A11
Text Label 3250 4650 0    50   ~ 0
A10
Text Label 3250 4550 0    50   ~ 0
A9
Text Label 3250 4450 0    50   ~ 0
A8
Text Label 3250 4350 0    50   ~ 0
A7
Text Label 3250 4250 0    50   ~ 0
A6
Text Label 3250 4150 0    50   ~ 0
A5
Text Label 3250 4050 0    50   ~ 0
A4
Text Label 3250 3950 0    50   ~ 0
A3
Text Label 3250 3850 0    50   ~ 0
A2
Text Label 3250 3750 0    50   ~ 0
A1
Text Label 3250 3650 0    50   ~ 0
A0
Text GLabel 4450 4000 2    50   Input ~ 0
~WE
Text GLabel 4450 3850 2    50   Input ~ 0
~OE
Text GLabel 6200 3650 2    50   Input ~ 0
~CS5
Wire Wire Line
	4400 3850 4450 3850
Wire Wire Line
	4450 4000 4400 4000
$Comp
L AK's_Library:71256SA U6
U 1 1 60C12C82
P 5700 4350
F 0 "U6" H 5700 4400 50  0000 C CNN
F 1 "71256SA" H 5700 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5700 4250 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 5700 4250 50  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
Entry Wire Line
	4950 3550 5050 3650
Entry Wire Line
	4950 3650 5050 3750
Entry Wire Line
	4950 3750 5050 3850
Entry Wire Line
	4950 3850 5050 3950
Entry Wire Line
	4950 3950 5050 4050
Entry Wire Line
	4950 4050 5050 4150
Entry Wire Line
	4950 4150 5050 4250
Entry Wire Line
	4950 4250 5050 4350
Entry Wire Line
	4950 4350 5050 4450
Entry Wire Line
	4950 4450 5050 4550
Entry Wire Line
	4950 4550 5050 4650
Entry Wire Line
	4950 4650 5050 4750
Entry Wire Line
	4950 4750 5050 4850
Entry Wire Line
	4950 4850 5050 4950
Entry Wire Line
	4950 4950 5050 5050
$Comp
L power:VCC #PWR013
U 1 1 60C12C97
P 5700 3450
F 0 "#PWR013" H 5700 3300 50  0001 C CNN
F 1 "VCC" H 5715 3623 50  0000 C CNN
F 2 "" H 5700 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60C12C9D
P 5700 5250
F 0 "#PWR014" H 5700 5000 50  0001 C CNN
F 1 "GND" H 5705 5077 50  0000 C CNN
F 2 "" H 5700 5250 50  0001 C CNN
F 3 "" H 5700 5250 50  0001 C CNN
	1    5700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3650 5200 3650
Wire Wire Line
	5200 3750 5050 3750
Wire Wire Line
	5050 3850 5200 3850
Wire Wire Line
	5200 3950 5050 3950
Wire Wire Line
	5050 4050 5200 4050
Wire Wire Line
	5200 4150 5050 4150
Wire Wire Line
	5050 4250 5200 4250
Wire Wire Line
	5200 4350 5050 4350
Wire Wire Line
	5050 4450 5200 4450
Wire Wire Line
	5200 4550 5050 4550
Wire Wire Line
	5050 4650 5200 4650
Wire Wire Line
	5200 4750 5050 4750
Wire Wire Line
	5050 4850 5200 4850
Wire Wire Line
	5200 4950 5050 4950
Wire Wire Line
	5050 5050 5200 5050
Entry Wire Line
	6350 4350 6450 4450
Entry Wire Line
	6350 4450 6450 4550
Entry Wire Line
	6350 4550 6450 4650
Entry Wire Line
	6350 4650 6450 4750
Entry Wire Line
	6350 4750 6450 4850
Entry Wire Line
	6350 4850 6450 4950
Entry Wire Line
	6350 4950 6450 5050
Entry Wire Line
	6350 5050 6450 5150
Wire Wire Line
	6200 4350 6350 4350
Wire Wire Line
	6350 4450 6200 4450
Wire Wire Line
	6200 4550 6350 4550
Wire Wire Line
	6350 4650 6200 4650
Wire Wire Line
	6200 4750 6350 4750
Wire Wire Line
	6350 4850 6200 4850
Wire Wire Line
	6200 4950 6350 4950
Wire Wire Line
	6350 5050 6200 5050
Text Label 6250 4350 0    50   ~ 0
Q0
Text Label 6250 4450 0    50   ~ 0
Q1
Text Label 6250 4550 0    50   ~ 0
Q2
Text Label 6250 4650 0    50   ~ 0
Q3
Text Label 6250 4750 0    50   ~ 0
Q4
Text Label 6250 4850 0    50   ~ 0
Q5
Text Label 6250 4950 0    50   ~ 0
Q6
Text Label 6250 5050 0    50   ~ 0
Q7
Text Label 5050 5050 0    50   ~ 0
A14
Text Label 5050 4950 0    50   ~ 0
A13
Text Label 5050 4850 0    50   ~ 0
A12
Text Label 5050 4750 0    50   ~ 0
A11
Text Label 5050 4650 0    50   ~ 0
A10
Text Label 5050 4550 0    50   ~ 0
A9
Text Label 5050 4450 0    50   ~ 0
A8
Text Label 5050 4350 0    50   ~ 0
A7
Text Label 5050 4250 0    50   ~ 0
A6
Text Label 5050 4150 0    50   ~ 0
A5
Text Label 5050 4050 0    50   ~ 0
A4
Text Label 5050 3950 0    50   ~ 0
A3
Text Label 5050 3850 0    50   ~ 0
A2
Text Label 5050 3750 0    50   ~ 0
A1
Text Label 5050 3650 0    50   ~ 0
A0
Text GLabel 6250 4000 2    50   Input ~ 0
~WE
Text GLabel 6250 3850 2    50   Input ~ 0
~OE
Text GLabel 8000 1250 2    50   Input ~ 0
~CS6
Wire Wire Line
	6200 3850 6250 3850
Wire Wire Line
	6250 4000 6200 4000
$Comp
L AK's_Library:71256SA U8
U 1 1 60C12CDF
P 7500 4350
F 0 "U8" H 7500 4400 50  0000 C CNN
F 1 "71256SA" H 7500 4300 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7500 4250 50  0001 C CNN
F 3 "https://nl.mouser.com/datasheet/2/698/REN_71256SA_DST_20200629-1996300.pdf" H 7500 4250 50  0001 C CNN
	1    7500 4350
	1    0    0    -1  
$EndComp
Entry Wire Line
	6750 3550 6850 3650
Entry Wire Line
	6750 3650 6850 3750
Entry Wire Line
	6750 3750 6850 3850
Entry Wire Line
	6750 3850 6850 3950
Entry Wire Line
	6750 3950 6850 4050
Entry Wire Line
	6750 4050 6850 4150
Entry Wire Line
	6750 4150 6850 4250
Entry Wire Line
	6750 4250 6850 4350
Entry Wire Line
	6750 4350 6850 4450
Entry Wire Line
	6750 4450 6850 4550
Entry Wire Line
	6750 4550 6850 4650
Entry Wire Line
	6750 4650 6850 4750
Entry Wire Line
	6750 4750 6850 4850
Entry Wire Line
	6750 4850 6850 4950
Entry Wire Line
	6750 4950 6850 5050
$Comp
L power:VCC #PWR017
U 1 1 60C12CF4
P 7500 3450
F 0 "#PWR017" H 7500 3300 50  0001 C CNN
F 1 "VCC" H 7515 3623 50  0000 C CNN
F 2 "" H 7500 3450 50  0001 C CNN
F 3 "" H 7500 3450 50  0001 C CNN
	1    7500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 60C12CFA
P 7500 5250
F 0 "#PWR018" H 7500 5000 50  0001 C CNN
F 1 "GND" H 7505 5077 50  0000 C CNN
F 2 "" H 7500 5250 50  0001 C CNN
F 3 "" H 7500 5250 50  0001 C CNN
	1    7500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3650 7000 3650
Wire Wire Line
	7000 3750 6850 3750
Wire Wire Line
	6850 3850 7000 3850
Wire Wire Line
	7000 3950 6850 3950
Wire Wire Line
	6850 4050 7000 4050
Wire Wire Line
	7000 4150 6850 4150
Wire Wire Line
	6850 4250 7000 4250
Wire Wire Line
	7000 4350 6850 4350
Wire Wire Line
	6850 4450 7000 4450
Wire Wire Line
	7000 4550 6850 4550
Wire Wire Line
	6850 4650 7000 4650
Wire Wire Line
	7000 4750 6850 4750
Wire Wire Line
	6850 4850 7000 4850
Wire Wire Line
	7000 4950 6850 4950
Wire Wire Line
	6850 5050 7000 5050
Entry Wire Line
	8150 4350 8250 4450
Entry Wire Line
	8150 4450 8250 4550
Entry Wire Line
	8150 4550 8250 4650
Entry Wire Line
	8150 4650 8250 4750
Entry Wire Line
	8150 4750 8250 4850
Entry Wire Line
	8150 4850 8250 4950
Entry Wire Line
	8150 4950 8250 5050
Entry Wire Line
	8150 5050 8250 5150
Wire Wire Line
	8000 4350 8150 4350
Wire Wire Line
	8150 4450 8000 4450
Wire Wire Line
	8000 4550 8150 4550
Wire Wire Line
	8150 4650 8000 4650
Wire Wire Line
	8000 4750 8150 4750
Wire Wire Line
	8150 4850 8000 4850
Wire Wire Line
	8000 4950 8150 4950
Wire Wire Line
	8150 5050 8000 5050
Text Label 8050 4350 0    50   ~ 0
Q0
Text Label 8050 4450 0    50   ~ 0
Q1
Text Label 8050 4550 0    50   ~ 0
Q2
Text Label 8050 4650 0    50   ~ 0
Q3
Text Label 8050 4750 0    50   ~ 0
Q4
Text Label 8050 4850 0    50   ~ 0
Q5
Text Label 8050 4950 0    50   ~ 0
Q6
Text Label 8050 5050 0    50   ~ 0
Q7
Text Label 6850 5050 0    50   ~ 0
A14
Text Label 6850 4950 0    50   ~ 0
A13
Text Label 6850 4850 0    50   ~ 0
A12
Text Label 6850 4750 0    50   ~ 0
A11
Text Label 6850 4650 0    50   ~ 0
A10
Text Label 6850 4550 0    50   ~ 0
A9
Text Label 6850 4450 0    50   ~ 0
A8
Text Label 6850 4350 0    50   ~ 0
A7
Text Label 6850 4250 0    50   ~ 0
A6
Text Label 6850 4150 0    50   ~ 0
A5
Text Label 6850 4050 0    50   ~ 0
A4
Text Label 6850 3950 0    50   ~ 0
A3
Text Label 6850 3850 0    50   ~ 0
A2
Text Label 6850 3750 0    50   ~ 0
A1
Text Label 6850 3650 0    50   ~ 0
A0
Text GLabel 8050 4000 2    50   Input ~ 0
~WE
Text GLabel 8050 3850 2    50   Input ~ 0
~OE
Text GLabel 8000 3650 2    50   Input ~ 0
~CS7
Wire Wire Line
	8000 3850 8050 3850
Wire Wire Line
	8050 4000 8000 4000
Wire Bus Line
	1350 800  3150 800 
Connection ~ 4950 800 
Wire Bus Line
	4950 800  6750 800 
Connection ~ 3150 800 
Wire Bus Line
	3150 800  4950 800 
Connection ~ 6750 800 
Wire Bus Line
	2850 5500 4650 5500
Connection ~ 6450 5500
Wire Bus Line
	6450 5500 8250 5500
Connection ~ 4650 5500
Wire Bus Line
	4650 5500 6450 5500
Entry Wire Line
	9050 1150 9150 1250
Entry Wire Line
	9050 1250 9150 1350
Entry Wire Line
	9050 1350 9150 1450
Wire Wire Line
	9150 1250 9300 1250
Wire Wire Line
	9300 1350 9150 1350
Wire Wire Line
	9150 1450 9300 1450
Text Label 9150 1250 0    50   ~ 0
A15
Text Label 9150 1350 0    50   ~ 0
A16
Text Label 9150 1450 0    50   ~ 0
A17
Text GLabel 10300 1250 2    39   Output ~ 0
~CS0
Text GLabel 10300 1350 2    39   Output ~ 0
~CS1
Text GLabel 10300 1450 2    39   Output ~ 0
~CS2
Text GLabel 10300 1550 2    39   Output ~ 0
~CS3
Text GLabel 10300 1650 2    39   Output ~ 0
~CS4
Text GLabel 10300 1750 2    39   Output ~ 0
~CS5
Text GLabel 10300 1850 2    39   Output ~ 0
~CS6
Text GLabel 10300 1950 2    39   Output ~ 0
~CS7
$Comp
L AK's_Library:74AC11138 U9
U 1 1 60EBB8AD
P 9800 1550
F 0 "U9" H 9550 2000 50  0000 C CNN
F 1 "74AC11138" H 10050 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9800 1550 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/74ac11138.pdf" H 9800 1550 50  0001 C CNN
	1    9800 1550
	1    0    0    -1  
$EndComp
Text GLabel 9300 1750 0    50   Input ~ 0
G1
Text GLabel 9300 1850 0    39   Input ~ 0
~G2A
Text GLabel 9300 1950 0    39   Input ~ 0
~G2B
$Comp
L power:VCC #PWR021
U 1 1 60EBC848
P 9800 950
F 0 "#PWR021" H 9800 800 50  0001 C CNN
F 1 "VCC" H 9815 1123 50  0000 C CNN
F 2 "" H 9800 950 50  0001 C CNN
F 3 "" H 9800 950 50  0001 C CNN
	1    9800 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60EBE2EB
P 9300 3200
F 0 "#PWR020" H 9300 2950 50  0001 C CNN
F 1 "GND" V 9305 3027 50  0000 C CNN
F 2 "" H 9300 3200 50  0001 C CNN
F 3 "" H 9300 3200 50  0001 C CNN
	1    9300 3200
	0    1    1    0   
$EndComp
Entry Wire Line
	9050 4000 9150 4100
Entry Wire Line
	9050 4100 9150 4200
Entry Wire Line
	9050 4200 9150 4300
Entry Wire Line
	9050 4300 9150 4400
Entry Wire Line
	9050 4400 9150 4500
Entry Wire Line
	9050 4500 9150 4600
Entry Wire Line
	9050 4600 9150 4700
Entry Wire Line
	9050 4700 9150 4800
Entry Wire Line
	9050 4800 9150 4900
Entry Wire Line
	9050 4900 9150 5000
Entry Wire Line
	9050 5000 9150 5100
Entry Wire Line
	9050 5100 9150 5200
Entry Wire Line
	9050 5200 9150 5300
Entry Wire Line
	9050 5300 9150 5400
Entry Wire Line
	9050 5400 9150 5500
Wire Wire Line
	9300 5500 9150 5500
Wire Wire Line
	9150 5400 9300 5400
Wire Wire Line
	9300 5300 9150 5300
Wire Wire Line
	9150 5200 9300 5200
Wire Wire Line
	9300 5100 9150 5100
Wire Wire Line
	9150 5000 9300 5000
Wire Wire Line
	9300 4900 9150 4900
Wire Wire Line
	9150 4800 9300 4800
Wire Wire Line
	9300 4700 9150 4700
Wire Wire Line
	9150 4600 9300 4600
Wire Wire Line
	9300 4500 9150 4500
Wire Wire Line
	9150 4400 9300 4400
Wire Wire Line
	9300 4300 9150 4300
Wire Wire Line
	9150 4200 9300 4200
Wire Wire Line
	9300 4100 9150 4100
Text Label 9300 4100 2    50   ~ 0
A14
Text Label 9300 4200 2    50   ~ 0
A13
Text Label 9300 4300 2    50   ~ 0
A12
Text Label 9300 4400 2    50   ~ 0
A11
Text Label 9300 4500 2    50   ~ 0
A10
Text Label 9250 4600 2    50   ~ 0
A9
Text Label 9250 4700 2    50   ~ 0
A8
Text Label 9250 4800 2    50   ~ 0
A7
Text Label 9250 4900 2    50   ~ 0
A6
Text Label 9250 5000 2    50   ~ 0
A5
Text Label 9250 5100 2    50   ~ 0
A4
Text Label 9250 5200 2    50   ~ 0
A3
Text Label 9250 5300 2    50   ~ 0
A2
Text Label 9250 5400 2    50   ~ 0
A1
Text Label 9250 5500 2    50   ~ 0
A0
Wire Wire Line
	9300 6300 9150 6300
Wire Wire Line
	9150 6200 9300 6200
Wire Wire Line
	9300 6100 9150 6100
Wire Wire Line
	9150 6000 9300 6000
Wire Wire Line
	9300 5900 9150 5900
Wire Wire Line
	9150 5800 9300 5800
Wire Wire Line
	9300 5700 9150 5700
Wire Wire Line
	9150 5600 9300 5600
Text Label 9250 6300 2    50   ~ 0
Q0
Text Label 9250 6200 2    50   ~ 0
Q1
Text Label 9250 6100 2    50   ~ 0
Q2
Text Label 9250 6000 2    50   ~ 0
Q3
Text Label 9250 5900 2    50   ~ 0
Q4
Text Label 9250 5800 2    50   ~ 0
Q5
Text Label 9250 5700 2    50   ~ 0
Q6
Entry Wire Line
	9150 4000 9050 3900
Entry Wire Line
	9150 3900 9050 3800
Entry Wire Line
	9150 3800 9050 3700
Wire Wire Line
	9300 4000 9150 4000
Wire Wire Line
	9150 3900 9300 3900
Wire Wire Line
	9300 3800 9150 3800
Text Label 9300 4000 2    50   ~ 0
A15
Text Label 9300 3900 2    50   ~ 0
A16
Text Label 9300 3800 2    50   ~ 0
A17
$Comp
L power:VCC #PWR019
U 1 1 6103A280
P 9300 3100
F 0 "#PWR019" H 9300 2950 50  0001 C CNN
F 1 "VCC" V 9315 3273 50  0000 C CNN
F 2 "" H 9300 3100 50  0001 C CNN
F 3 "" H 9300 3100 50  0001 C CNN
	1    9300 3100
	0    -1   -1   0   
$EndComp
Text GLabel 9300 3300 0    39   Output ~ 0
~OE
Text GLabel 9300 3400 0    39   Output ~ 0
~WE
Text Label 9250 5600 2    50   ~ 0
Q7
Entry Wire Line
	9050 5500 9150 5600
Entry Wire Line
	9050 5600 9150 5700
Entry Wire Line
	9050 5700 9150 5800
Entry Wire Line
	9050 5800 9150 5900
Entry Wire Line
	9050 5900 9150 6000
Entry Wire Line
	9050 6000 9150 6100
Entry Wire Line
	9050 6100 9150 6200
Entry Wire Line
	9050 6200 9150 6300
Connection ~ 8250 5500
Text GLabel 9300 3500 0    50   Output ~ 0
G1
Text GLabel 9300 3600 0    39   Output ~ 0
~G2A
Text GLabel 9300 3700 0    39   Output ~ 0
~G2B
$Comp
L power:GND #PWR022
U 1 1 6115AA1E
P 9800 2250
F 0 "#PWR022" H 9800 2000 50  0001 C CNN
F 1 "GND" H 9805 2077 50  0000 C CNN
F 2 "" H 9800 2250 50  0001 C CNN
F 3 "" H 9800 2250 50  0001 C CNN
	1    9800 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x33 J1
U 1 1 6115B872
P 9500 4700
F 0 "J1" H 9580 4742 50  0000 L CNN
F 1 "Conn_01x33" H 9580 4651 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x33_P2.54mm_Vertical" H 9500 4700 50  0001 C CNN
F 3 "~" H 9500 4700 50  0001 C CNN
	1    9500 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6117AF1C
P 2150 6150
F 0 "C4" H 2265 6196 50  0000 L CNN
F 1 "0.1uF" H 2265 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2188 6000 50  0001 C CNN
F 3 "~" H 2150 6150 50  0001 C CNN
	1    2150 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6117C356
P 1700 6150
F 0 "C3" H 1815 6196 50  0000 L CNN
F 1 "0.1uF" H 1815 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1738 6000 50  0001 C CNN
F 3 "~" H 1700 6150 50  0001 C CNN
	1    1700 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 611B0BF9
P 1250 6150
F 0 "C2" H 1365 6196 50  0000 L CNN
F 1 "0.1uF" H 1365 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1288 6000 50  0001 C CNN
F 3 "~" H 1250 6150 50  0001 C CNN
	1    1250 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 611B0BFF
P 800 6150
F 0 "C1" H 915 6196 50  0000 L CNN
F 1 "0.1uF" H 915 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 838 6000 50  0001 C CNN
F 3 "~" H 800 6150 50  0001 C CNN
	1    800  6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 611CB738
P 3950 6150
F 0 "C8" H 4065 6196 50  0000 L CNN
F 1 "0.1uF" H 4065 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3988 6000 50  0001 C CNN
F 3 "~" H 3950 6150 50  0001 C CNN
	1    3950 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 611CB73E
P 3500 6150
F 0 "C7" H 3615 6196 50  0000 L CNN
F 1 "0.1uF" H 3615 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3538 6000 50  0001 C CNN
F 3 "~" H 3500 6150 50  0001 C CNN
	1    3500 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 611CB744
P 3050 6150
F 0 "C6" H 3165 6196 50  0000 L CNN
F 1 "0.1uF" H 3165 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3088 6000 50  0001 C CNN
F 3 "~" H 3050 6150 50  0001 C CNN
	1    3050 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 611CB74A
P 2600 6150
F 0 "C5" H 2715 6196 50  0000 L CNN
F 1 "0.1uF" H 2715 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2638 6000 50  0001 C CNN
F 3 "~" H 2600 6150 50  0001 C CNN
	1    2600 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 611E552B
P 4400 6150
F 0 "C9" H 4515 6196 50  0000 L CNN
F 1 "0.1uF" H 4515 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4438 6000 50  0001 C CNN
F 3 "~" H 4400 6150 50  0001 C CNN
	1    4400 6150
	1    0    0    -1  
$EndComp
Connection ~ 1250 6000
Wire Wire Line
	1250 6000 800  6000
Connection ~ 1700 6000
Wire Wire Line
	1700 6000 1250 6000
Connection ~ 2150 6000
Wire Wire Line
	2150 6000 1700 6000
Connection ~ 2600 6000
Wire Wire Line
	2600 6000 2150 6000
Connection ~ 3050 6000
Wire Wire Line
	3050 6000 2600 6000
Connection ~ 3500 6000
Wire Wire Line
	3500 6000 3050 6000
Connection ~ 3950 6000
Wire Wire Line
	3950 6000 3500 6000
Wire Wire Line
	4400 6000 3950 6000
Wire Wire Line
	800  6300 1050 6300
Connection ~ 1250 6300
Wire Wire Line
	1250 6300 1700 6300
Connection ~ 1700 6300
Wire Wire Line
	1700 6300 2150 6300
Connection ~ 2150 6300
Wire Wire Line
	2150 6300 2600 6300
Connection ~ 2600 6300
Wire Wire Line
	2600 6300 3050 6300
Connection ~ 3050 6300
Wire Wire Line
	3050 6300 3500 6300
Connection ~ 3500 6300
Wire Wire Line
	3500 6300 3950 6300
Connection ~ 3950 6300
Wire Wire Line
	3950 6300 4400 6300
$Comp
L power:VCC #PWR05
U 1 1 61237548
P 2600 5850
F 0 "#PWR05" H 2600 5700 50  0001 C CNN
F 1 "VCC" H 2615 6023 50  0000 C CNN
F 2 "" H 2600 5850 50  0001 C CNN
F 3 "" H 2600 5850 50  0001 C CNN
	1    2600 5850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6123800C
P 2600 5900
F 0 "#FLG01" H 2600 5975 50  0001 C CNN
F 1 "PWR_FLAG" V 2600 6028 50  0000 L CNN
F 2 "" H 2600 5900 50  0001 C CNN
F 3 "~" H 2600 5900 50  0001 C CNN
	1    2600 5900
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61238662
P 2600 6400
F 0 "#FLG02" H 2600 6475 50  0001 C CNN
F 1 "PWR_FLAG" V 2600 6528 50  0000 L CNN
F 2 "" H 2600 6400 50  0001 C CNN
F 3 "~" H 2600 6400 50  0001 C CNN
	1    2600 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 5850 2600 5900
Connection ~ 2600 5900
Wire Wire Line
	2600 5900 2600 6000
Wire Wire Line
	2600 6300 2600 6400
Connection ~ 2600 6400
$Comp
L power:GND #PWR06
U 1 1 61236C60
P 2600 6450
F 0 "#PWR06" H 2600 6200 50  0001 C CNN
F 1 "GND" H 2605 6277 50  0000 C CNN
F 2 "" H 2600 6450 50  0001 C CNN
F 3 "" H 2600 6450 50  0001 C CNN
	1    2600 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6400 2600 6450
$Comp
L Device:CP C10
U 1 1 6135E463
P 4850 6150
F 0 "C10" H 4968 6196 50  0000 L CNN
F 1 "10uF" H 4968 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4888 6000 50  0001 C CNN
F 3 "~" H 4850 6150 50  0001 C CNN
	1    4850 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C11
U 1 1 6135EDA8
P 5300 6150
F 0 "C11" H 5418 6196 50  0000 L CNN
F 1 "10uF" H 5418 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5338 6000 50  0001 C CNN
F 3 "~" H 5300 6150 50  0001 C CNN
	1    5300 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C12
U 1 1 6135F1FA
P 5750 6150
F 0 "C12" H 5868 6196 50  0000 L CNN
F 1 "10uF" H 5868 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5788 6000 50  0001 C CNN
F 3 "~" H 5750 6150 50  0001 C CNN
	1    5750 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C13
U 1 1 6135F543
P 6200 6150
F 0 "C13" H 6318 6196 50  0000 L CNN
F 1 "10uF" H 6318 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6238 6000 50  0001 C CNN
F 3 "~" H 6200 6150 50  0001 C CNN
	1    6200 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C14
U 1 1 6135F6F6
P 6650 6150
F 0 "C14" H 6768 6196 50  0000 L CNN
F 1 "10uF" H 6768 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6688 6000 50  0001 C CNN
F 3 "~" H 6650 6150 50  0001 C CNN
	1    6650 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C15
U 1 1 6135F9EE
P 7100 6150
F 0 "C15" H 7218 6196 50  0000 L CNN
F 1 "10uF" H 7218 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7138 6000 50  0001 C CNN
F 3 "~" H 7100 6150 50  0001 C CNN
	1    7100 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C16
U 1 1 6135FF37
P 7550 6150
F 0 "C16" H 7668 6196 50  0000 L CNN
F 1 "10uF" H 7668 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7588 6000 50  0001 C CNN
F 3 "~" H 7550 6150 50  0001 C CNN
	1    7550 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C17
U 1 1 61360574
P 8000 6150
F 0 "C17" H 8118 6196 50  0000 L CNN
F 1 "10uF" H 8118 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8038 6000 50  0001 C CNN
F 3 "~" H 8000 6150 50  0001 C CNN
	1    8000 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C18
U 1 1 61360A02
P 8450 6150
F 0 "C18" H 8568 6196 50  0000 L CNN
F 1 "10uF" H 8568 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8488 6000 50  0001 C CNN
F 3 "~" H 8450 6150 50  0001 C CNN
	1    8450 6150
	1    0    0    -1  
$EndComp
Wire Bus Line
	6750 800  9050 800 
Wire Bus Line
	8250 5500 9050 5500
Wire Wire Line
	4400 6000 4850 6000
Connection ~ 4400 6000
Connection ~ 4850 6000
Wire Wire Line
	4850 6000 5300 6000
Connection ~ 5300 6000
Wire Wire Line
	5300 6000 5750 6000
Connection ~ 5750 6000
Wire Wire Line
	5750 6000 6200 6000
Connection ~ 6200 6000
Wire Wire Line
	6200 6000 6650 6000
Connection ~ 6650 6000
Wire Wire Line
	6650 6000 7100 6000
Connection ~ 7100 6000
Wire Wire Line
	7100 6000 7550 6000
Connection ~ 7550 6000
Wire Wire Line
	7550 6000 8000 6000
Connection ~ 8000 6000
Wire Wire Line
	8000 6000 8450 6000
Wire Wire Line
	8450 6300 8000 6300
Connection ~ 4400 6300
Connection ~ 4850 6300
Wire Wire Line
	4850 6300 4400 6300
Connection ~ 5300 6300
Wire Wire Line
	5300 6300 4850 6300
Connection ~ 5750 6300
Wire Wire Line
	5750 6300 5300 6300
Connection ~ 6200 6300
Wire Wire Line
	6200 6300 5750 6300
Connection ~ 6650 6300
Wire Wire Line
	6650 6300 6200 6300
Connection ~ 7100 6300
Wire Wire Line
	7100 6300 6650 6300
Connection ~ 7550 6300
Wire Wire Line
	7550 6300 7100 6300
Connection ~ 8000 6300
Wire Wire Line
	8000 6300 7550 6300
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 6157147D
P 1150 6650
F 0 "H1" V 1104 6800 50  0000 L CNN
F 1 "MountingHole_Pad" V 1195 6800 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1150 6650 50  0001 C CNN
F 3 "~" H 1150 6650 50  0001 C CNN
	1    1150 6650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61571EFF
P 1150 6850
F 0 "H2" V 1104 7000 50  0000 L CNN
F 1 "MountingHole_Pad" V 1195 7000 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1150 6850 50  0001 C CNN
F 3 "~" H 1150 6850 50  0001 C CNN
	1    1150 6850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 615721D9
P 1150 7050
F 0 "H3" V 1104 7200 50  0000 L CNN
F 1 "MountingHole_Pad" V 1195 7200 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1150 7050 50  0001 C CNN
F 3 "~" H 1150 7050 50  0001 C CNN
	1    1150 7050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 61572402
P 1150 7250
F 0 "H4" V 1104 7400 50  0000 L CNN
F 1 "MountingHole_Pad" V 1195 7400 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1150 7250 50  0001 C CNN
F 3 "~" H 1150 7250 50  0001 C CNN
	1    1150 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 7250 1050 7050
Wire Bus Line
	9050 5500 9050 6200
Wire Bus Line
	9050 800  9050 5400
Wire Bus Line
	6450 2050 6450 5500
Wire Bus Line
	4650 2050 4650 5500
Wire Bus Line
	2850 2050 2850 5500
Wire Bus Line
	8250 2050 8250 5500
Wire Bus Line
	1350 800  1350 4950
Wire Bus Line
	3150 800  3150 4950
Wire Bus Line
	4950 800  4950 4950
Wire Bus Line
	6750 800  6750 4950
Connection ~ 1050 6300
Wire Wire Line
	1050 6300 1250 6300
Connection ~ 1050 6650
Wire Wire Line
	1050 6650 1050 6300
Connection ~ 1050 6850
Wire Wire Line
	1050 6850 1050 6650
Connection ~ 1050 7050
Wire Wire Line
	1050 7050 1050 6850
$EndSCHEMATC
