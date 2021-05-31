EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "6502 motherboard v02"
Date "2021-04-28"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 65xx:W65C02SxP U2
U 1 1 60820B9F
P 2450 4950
F 0 "U2" H 2450 5600 50  0000 C CNN
F 1 "W65C02SxP" H 2450 5500 50  0000 C CIB
F 2 "Package_DIP:DIP-40_W15.24mm" H 2450 6950 50  0001 C CNN
F 3 "http://www.westerndesigncenter.com/wdc/documentation/w65c02s.pdf" H 2450 6850 50  0001 C CNN
	1    2450 4950
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:CY62256-70PC U4
U 1 1 6086CC8B
P 4350 4700
F 0 "U4" H 4350 4900 50  0000 C CNN
F 1 "CY62256-70PC" H 4400 4800 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 4350 4600 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 4350 4600 50  0001 C CNN
	1    4350 4700
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U5
U 1 1 6086FDB9
P 6350 4900
F 0 "U5" H 6350 5350 50  0000 C CNN
F 1 "28C256" H 6350 5250 50  0000 C CNN
F 2 "Socket:DIP_Socket-28_W11.9_W12.7_W15.24_W17.78_W18.5_3M_228-1277-00-0602J" H 6350 4900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 6350 4900 50  0001 C CNN
	1    6350 4900
	1    0    0    -1  
$EndComp
Entry Wire Line
	3150 5450 3250 5550
Entry Wire Line
	3150 5550 3250 5650
Entry Wire Line
	3150 5650 3250 5750
Entry Wire Line
	3150 5750 3250 5850
Entry Wire Line
	3150 5850 3250 5950
Entry Wire Line
	3150 5950 3250 6050
Entry Wire Line
	3150 6050 3250 6150
Entry Wire Line
	3150 6150 3250 6250
Wire Wire Line
	3150 5450 3050 5450
Wire Wire Line
	3050 5550 3150 5550
Wire Wire Line
	3150 5650 3050 5650
Wire Wire Line
	3050 5750 3150 5750
Wire Wire Line
	3150 5850 3050 5850
Wire Wire Line
	3150 5950 3050 5950
Wire Wire Line
	3050 6050 3150 6050
Wire Wire Line
	3150 6150 3050 6150
Text Label 3050 5450 0    50   ~ 0
d0
Text Label 3050 5550 0    50   ~ 0
d1
Text Label 3050 5650 0    50   ~ 0
d2
Text Label 3050 5750 0    50   ~ 0
d3
Text Label 3050 5850 0    50   ~ 0
d4
Text Label 3050 5950 0    50   ~ 0
d5
Text Label 3050 6050 0    50   ~ 0
d6
Text Label 3050 6150 0    50   ~ 0
d7
Entry Wire Line
	4950 4700 5050 4800
Entry Wire Line
	4950 4800 5050 4900
Entry Wire Line
	4950 4900 5050 5000
Entry Wire Line
	4950 5000 5050 5100
Entry Wire Line
	4950 5100 5050 5200
Entry Wire Line
	4950 5200 5050 5300
Entry Wire Line
	4950 5300 5050 5400
Entry Wire Line
	4950 5400 5050 5500
Wire Wire Line
	4950 4700 4850 4700
Wire Wire Line
	4850 4800 4950 4800
Wire Wire Line
	4950 4900 4850 4900
Wire Wire Line
	4850 5000 4950 5000
Wire Wire Line
	4950 5100 4850 5100
Wire Wire Line
	4850 5200 4950 5200
Wire Wire Line
	4950 5300 4850 5300
Wire Wire Line
	4850 5400 4950 5400
Text Label 4850 4700 0    50   ~ 0
d0
Text Label 4850 4800 0    50   ~ 0
d1
Text Label 4850 4900 0    50   ~ 0
d2
Text Label 4850 5000 0    50   ~ 0
d3
Text Label 4850 5100 0    50   ~ 0
d4
Text Label 4850 5200 0    50   ~ 0
d5
Text Label 4850 5300 0    50   ~ 0
d6
Text Label 4850 5400 0    50   ~ 0
d7
Entry Wire Line
	6850 4000 6950 4100
Entry Wire Line
	6850 4100 6950 4200
Entry Wire Line
	6850 4200 6950 4300
Entry Wire Line
	6850 4300 6950 4400
Entry Wire Line
	6850 4400 6950 4500
Entry Wire Line
	6850 4500 6950 4600
Entry Wire Line
	6850 4600 6950 4700
Entry Wire Line
	6850 4700 6950 4800
Wire Wire Line
	6850 4000 6750 4000
Wire Wire Line
	6750 4100 6850 4100
Wire Wire Line
	6850 4200 6750 4200
Wire Wire Line
	6750 4300 6850 4300
Wire Wire Line
	6850 4400 6750 4400
Wire Wire Line
	6750 4500 6850 4500
Wire Wire Line
	6850 4600 6750 4600
Wire Wire Line
	6750 4700 6850 4700
Text Label 6750 4000 0    50   ~ 0
d0
Text Label 6750 4100 0    50   ~ 0
d1
Text Label 6750 4200 0    50   ~ 0
d2
Text Label 6750 4300 0    50   ~ 0
d3
Text Label 6750 4400 0    50   ~ 0
d4
Text Label 6750 4500 0    50   ~ 0
d5
Text Label 6750 4600 0    50   ~ 0
d6
Text Label 6750 4700 0    50   ~ 0
d7
Wire Bus Line
	5050 6400 6950 6400
Connection ~ 5050 6400
Entry Wire Line
	3150 5250 3250 5150
Entry Wire Line
	3150 5150 3250 5050
Entry Wire Line
	3150 5050 3250 4950
Entry Wire Line
	3150 4950 3250 4850
Entry Wire Line
	3150 4850 3250 4750
Entry Wire Line
	3150 4750 3250 4650
Entry Wire Line
	3150 4650 3250 4550
Entry Wire Line
	3150 4550 3250 4450
Entry Wire Line
	3150 4450 3250 4350
Entry Wire Line
	3150 4350 3250 4250
Entry Wire Line
	3150 4250 3250 4150
Entry Wire Line
	3150 4150 3250 4050
Entry Wire Line
	3150 4050 3250 3950
Entry Wire Line
	3150 3950 3250 3850
Entry Wire Line
	3150 3850 3250 3750
Entry Wire Line
	3150 3750 3250 3650
Wire Wire Line
	3050 5250 3150 5250
Wire Wire Line
	3150 5150 3050 5150
Wire Wire Line
	3050 5050 3150 5050
Wire Wire Line
	3150 4950 3050 4950
Wire Wire Line
	3050 4850 3150 4850
Wire Wire Line
	3150 4750 3050 4750
Wire Wire Line
	3050 4650 3150 4650
Wire Wire Line
	3150 4550 3050 4550
Wire Wire Line
	3050 4450 3150 4450
Wire Wire Line
	3150 4350 3050 4350
Wire Wire Line
	3150 4250 3050 4250
Wire Wire Line
	3050 4150 3150 4150
Wire Wire Line
	3150 4050 3050 4050
Wire Wire Line
	3050 3950 3150 3950
Wire Wire Line
	3150 3850 3050 3850
Wire Wire Line
	3050 3750 3150 3750
Text Label 3050 3750 0    50   ~ 0
a0
Text Label 3050 3850 0    50   ~ 0
a1
Text Label 3050 3950 0    50   ~ 0
a2
Text Label 3050 4050 0    50   ~ 0
a3
Text Label 3050 4150 0    50   ~ 0
a4
Text Label 3050 4250 0    50   ~ 0
a5
Text Label 3050 4350 0    50   ~ 0
a6
Text Label 3050 4450 0    50   ~ 0
a7
Text Label 3050 4550 0    50   ~ 0
a8
Text Label 3050 4650 0    50   ~ 0
a9
Text Label 3050 4750 0    50   ~ 0
a10
Text Label 3050 4850 0    50   ~ 0
a11
Text Label 3050 4950 0    50   ~ 0
a12
Text Label 3050 5050 0    50   ~ 0
a13
Text Label 3050 5150 0    50   ~ 0
a14
Text Label 3050 5250 0    50   ~ 0
a15
Entry Wire Line
	3750 5400 3650 5300
Entry Wire Line
	3750 5300 3650 5200
Entry Wire Line
	3750 5200 3650 5100
Entry Wire Line
	3750 5100 3650 5000
Entry Wire Line
	3750 5000 3650 4900
Entry Wire Line
	3750 4900 3650 4800
Entry Wire Line
	3750 4800 3650 4700
Entry Wire Line
	3750 4700 3650 4600
Entry Wire Line
	3750 4600 3650 4500
Entry Wire Line
	3750 4500 3650 4400
Entry Wire Line
	3750 4400 3650 4300
Entry Wire Line
	3750 4300 3650 4200
Entry Wire Line
	3750 4200 3650 4100
Entry Wire Line
	3750 4100 3650 4000
Entry Wire Line
	3750 4000 3650 3900
Wire Wire Line
	3750 5400 3850 5400
Wire Wire Line
	3850 5300 3750 5300
Wire Wire Line
	3750 5200 3850 5200
Wire Wire Line
	3850 5100 3750 5100
Wire Wire Line
	3750 5000 3850 5000
Wire Wire Line
	3850 4900 3750 4900
Wire Wire Line
	3750 4800 3850 4800
Wire Wire Line
	3850 4700 3750 4700
Wire Wire Line
	3750 4600 3850 4600
Wire Wire Line
	3750 4500 3850 4500
Wire Wire Line
	3850 4400 3750 4400
Wire Wire Line
	3750 4300 3850 4300
Wire Wire Line
	3850 4200 3750 4200
Wire Wire Line
	3750 4100 3850 4100
Wire Wire Line
	3850 4000 3750 4000
Text Label 3850 4000 2    50   ~ 0
a0
Text Label 3850 4100 2    50   ~ 0
a1
Text Label 3850 4200 2    50   ~ 0
a2
Text Label 3850 4300 2    50   ~ 0
a3
Text Label 3850 4400 2    50   ~ 0
a4
Text Label 3850 4500 2    50   ~ 0
a5
Text Label 3850 4600 2    50   ~ 0
a6
Text Label 3850 4700 2    50   ~ 0
a7
Text Label 3850 4800 2    50   ~ 0
a8
Text Label 3850 4900 2    50   ~ 0
a9
Text Label 3850 5000 2    50   ~ 0
a10
Text Label 3850 5100 2    50   ~ 0
a11
Text Label 3850 5200 2    50   ~ 0
a12
Text Label 3850 5300 2    50   ~ 0
a13
Text Label 3850 5400 2    50   ~ 0
a14
Entry Wire Line
	5850 5400 5750 5300
Entry Wire Line
	5850 5300 5750 5200
Entry Wire Line
	5850 5200 5750 5100
Entry Wire Line
	5850 5100 5750 5000
Entry Wire Line
	5850 5000 5750 4900
Entry Wire Line
	5850 4900 5750 4800
Entry Wire Line
	5850 4800 5750 4700
Entry Wire Line
	5850 4700 5750 4600
Entry Wire Line
	5850 4600 5750 4500
Entry Wire Line
	5850 4500 5750 4400
Entry Wire Line
	5850 4400 5750 4300
Entry Wire Line
	5850 4300 5750 4200
Entry Wire Line
	5850 4200 5750 4100
Entry Wire Line
	5850 4100 5750 4000
Entry Wire Line
	5850 4000 5750 3900
Wire Wire Line
	5850 5400 5950 5400
Wire Wire Line
	5950 5300 5850 5300
Wire Wire Line
	5850 5200 5950 5200
Wire Wire Line
	5950 5100 5850 5100
Wire Wire Line
	5850 5000 5950 5000
Wire Wire Line
	5950 4900 5850 4900
Wire Wire Line
	5850 4800 5950 4800
Wire Wire Line
	5950 4700 5850 4700
Wire Wire Line
	5850 4600 5950 4600
Wire Wire Line
	5850 4500 5950 4500
Wire Wire Line
	5950 4400 5850 4400
Wire Wire Line
	5850 4300 5950 4300
Wire Wire Line
	5950 4200 5850 4200
Wire Wire Line
	5850 4100 5950 4100
Wire Wire Line
	5950 4000 5850 4000
Text Label 5950 4000 2    50   ~ 0
a0
Text Label 5950 4100 2    50   ~ 0
a1
Text Label 5950 4200 2    50   ~ 0
a2
Text Label 5950 4300 2    50   ~ 0
a3
Text Label 5950 4400 2    50   ~ 0
a4
Text Label 5950 4500 2    50   ~ 0
a5
Text Label 5950 4600 2    50   ~ 0
a6
Text Label 5950 4700 2    50   ~ 0
a7
Text Label 5950 4800 2    50   ~ 0
a8
Text Label 5950 4900 2    50   ~ 0
a9
Text Label 5950 5000 2    50   ~ 0
a10
Text Label 5950 5100 2    50   ~ 0
a11
Text Label 5950 5200 2    50   ~ 0
a12
Text Label 5950 5300 2    50   ~ 0
a13
Text Label 5950 5400 2    50   ~ 0
a14
Wire Wire Line
	4850 4000 5000 4000
Wire Wire Line
	4850 4250 5000 4250
Wire Wire Line
	4850 4350 5000 4350
Text GLabel 5000 4350 2    39   Input ~ 0
~WRITE
Text GLabel 5000 4250 2    39   Input ~ 0
~READ
Text GLabel 5000 4000 2    50   Input ~ 0
RAM_~CS
Wire Wire Line
	5950 5600 5650 5600
Text GLabel 5950 5800 0    39   Input ~ 0
ROM_~CS
Text GLabel 1700 4950 1    50   Output ~ 0
RW
Text GLabel 7950 1750 0    50   BiDi ~ 0
CLK
Text GLabel 7950 1650 0    50   BiDi ~ 0
RST
Text GLabel 1850 4050 0    50   Input ~ 0
CLK
Text GLabel 1850 4550 0    50   Input ~ 0
IRQ
Text GLabel 1800 4650 3    50   Input ~ 0
NMI
$Comp
L Device:R R3
U 1 1 60C9EF49
P 1550 5250
F 0 "R3" V 1250 5250 50  0000 C CNN
F 1 "10K" V 1434 5250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 5250 50  0001 C CNN
F 3 "~" H 1550 5250 50  0001 C CNN
	1    1550 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5250 1350 5250
Connection ~ 1350 5250
Wire Wire Line
	1350 5250 1350 5350
Text GLabel 1850 3750 0    50   Input ~ 0
RST
$Comp
L Device:R R1
U 1 1 60E5A566
P 1550 4650
F 0 "R1" V 1550 4650 50  0000 C CNN
F 1 "10K" V 1650 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 4650 50  0001 C CNN
F 3 "~" H 1550 4650 50  0001 C CNN
	1    1550 4650
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 60E9182D
P 2150 7250
F 0 "C2" H 2265 7296 50  0000 L CNN
F 1 "0.1uF" H 2265 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2188 7100 50  0001 C CNN
F 3 "~" H 2150 7250 50  0001 C CNN
	1    2150 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60EE477C
P 2600 7250
F 0 "C3" H 2715 7296 50  0000 L CNN
F 1 "0.1uF" H 2715 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2638 7100 50  0001 C CNN
F 3 "~" H 2600 7250 50  0001 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60EF1B04
P 3050 7250
F 0 "C4" H 3165 7296 50  0000 L CNN
F 1 "0.1uF" H 3165 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3088 7100 50  0001 C CNN
F 3 "~" H 3050 7250 50  0001 C CNN
	1    3050 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60EFEFA2
P 3500 7250
F 0 "C5" H 3615 7296 50  0000 L CNN
F 1 "0.1uF" H 3615 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3538 7100 50  0001 C CNN
F 3 "~" H 3500 7250 50  0001 C CNN
	1    3500 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60F0C51D
P 3950 7250
F 0 "C6" H 4065 7296 50  0000 L CNN
F 1 "0.1uF" H 4065 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3988 7100 50  0001 C CNN
F 3 "~" H 3950 7250 50  0001 C CNN
	1    3950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7100 2600 7100
Connection ~ 2600 7100
Wire Wire Line
	2600 7100 3050 7100
Connection ~ 3050 7100
Connection ~ 3500 7100
Wire Wire Line
	3500 7100 3950 7100
Connection ~ 2600 7400
Wire Wire Line
	2600 7400 2150 7400
Connection ~ 3050 7400
Wire Wire Line
	3050 7400 2600 7400
Connection ~ 3500 7400
Wire Wire Line
	3950 7400 3500 7400
$Comp
L Device:CP C1
U 1 1 60F48ABE
P 1750 7250
F 0 "C1" H 1868 7296 50  0000 L CNN
F 1 "1uF" H 1868 7205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 1788 7100 50  0001 C CNN
F 3 "~" H 1750 7250 50  0001 C CNN
	1    1750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 7100 2150 7100
Connection ~ 2150 7100
Wire Wire Line
	2150 7400 1750 7400
Connection ~ 2150 7400
$Comp
L power:VCC #PWR010
U 1 1 615D02B9
P 2450 3400
F 0 "#PWR010" H 2450 3250 50  0001 C CNN
F 1 "VCC" H 2465 3573 50  0000 C CNN
F 2 "" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 615F2E50
P 4350 3800
F 0 "#PWR012" H 4350 3650 50  0001 C CNN
F 1 "VCC" H 4365 3973 50  0000 C CNN
F 2 "" H 4350 3800 50  0001 C CNN
F 3 "" H 4350 3800 50  0001 C CNN
	1    4350 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 61615895
P 5650 5250
F 0 "#PWR014" H 5650 5100 50  0001 C CNN
F 1 "VCC" H 5665 5423 50  0000 C CNN
F 2 "" H 5650 5250 50  0001 C CNN
F 3 "" H 5650 5250 50  0001 C CNN
	1    5650 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 61638503
P 6350 3800
F 0 "#PWR016" H 6350 3650 50  0001 C CNN
F 1 "VCC" H 6365 3973 50  0000 C CNN
F 2 "" H 6350 3800 50  0001 C CNN
F 3 "" H 6350 3800 50  0001 C CNN
	1    6350 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 617C92F8
P 2450 6500
F 0 "#PWR011" H 2450 6250 50  0001 C CNN
F 1 "GND" V 2455 6372 50  0000 R CNN
F 2 "" H 2450 6500 50  0001 C CNN
F 3 "" H 2450 6500 50  0001 C CNN
	1    2450 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 7400 3500 7400
$Comp
L power:GND #PWR09
U 1 1 617EB2A7
P 3050 7400
F 0 "#PWR09" H 3050 7150 50  0001 C CNN
F 1 "GND" V 3055 7272 50  0000 R CNN
F 2 "" H 3050 7400 50  0001 C CNN
F 3 "" H 3050 7400 50  0001 C CNN
	1    3050 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6180CE3D
P 4350 5600
F 0 "#PWR013" H 4350 5350 50  0001 C CNN
F 1 "GND" V 4355 5472 50  0000 R CNN
F 2 "" H 4350 5600 50  0001 C CNN
F 3 "" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6182EAF8
P 6350 6000
F 0 "#PWR017" H 6350 5750 50  0001 C CNN
F 1 "GND" V 6355 5872 50  0000 R CNN
F 2 "" H 6350 6000 50  0001 C CNN
F 3 "" H 6350 6000 50  0001 C CNN
	1    6350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 7100 3500 7100
$Comp
L power:VCC #PWR08
U 1 1 6193C677
P 3050 7100
F 0 "#PWR08" H 3050 6950 50  0001 C CNN
F 1 "VCC" H 3065 7273 50  0000 C CNN
F 2 "" H 3050 7100 50  0001 C CNN
F 3 "" H 3050 7100 50  0001 C CNN
	1    3050 7100
	1    0    0    -1  
$EndComp
Text GLabel 7950 5150 0    50   Output ~ 0
NMI
Text GLabel 1850 5650 0    50   Output ~ 0
SYNC
$Comp
L Device:R R4
U 1 1 61DB1DDA
P 1550 5350
F 0 "R4" V 1550 5350 50  0000 C CNN
F 1 "10K" V 1650 5350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 5350 50  0001 C CNN
F 3 "~" H 1550 5350 50  0001 C CNN
	1    1550 5350
	0    1    1    0   
$EndComp
Text GLabel 1800 5250 1    50   Input ~ 0
RDY
Text GLabel 1800 5350 3    50   Input ~ 0
BE
Wire Wire Line
	1700 5250 1850 5250
Wire Wire Line
	1850 5350 1700 5350
Wire Wire Line
	1400 5350 1350 5350
$Comp
L power:VCC #PWR05
U 1 1 61E483B5
P 1350 4500
F 0 "#PWR05" H 1350 4350 50  0001 C CNN
F 1 "VCC" H 1365 4673 50  0000 C CNN
F 2 "" H 1350 4500 50  0001 C CNN
F 3 "" H 1350 4500 50  0001 C CNN
	1    1350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4650 1350 4650
Wire Wire Line
	1850 4650 1700 4650
$Comp
L Device:R R2
U 1 1 620F5E15
P 1550 4950
F 0 "R2" V 1850 4950 50  0000 C CNN
F 1 "10K" V 1650 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 4950 50  0001 C CNN
F 3 "~" H 1550 4950 50  0001 C CNN
	1    1550 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 4650 1350 4950
Connection ~ 1350 4650
Wire Wire Line
	1400 4950 1350 4950
Connection ~ 1350 4950
Wire Wire Line
	1350 4950 1350 5250
Wire Wire Line
	1850 4950 1700 4950
$Comp
L Device:R R6
U 1 1 6256AA0F
P 5650 5400
F 0 "R6" V 5650 5400 50  0000 C CNN
F 1 "10K" V 5550 5400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5580 5400 50  0001 C CNN
F 3 "~" H 5650 5400 50  0001 C CNN
	1    5650 5400
	1    0    0    -1  
$EndComp
Text GLabel 5650 5600 0    50   Input ~ 0
ROM_~WE
Text GLabel 5950 5700 0    39   Input ~ 0
~READ
Wire Wire Line
	5650 5550 5650 5600
Text GLabel 10150 1700 2    50   Output ~ 0
IRQ
NoConn ~ 1850 4250
NoConn ~ 1850 4150
Text GLabel 7950 1850 0    39   Input Italic 0
~CLK
Text GLabel 7950 5750 0    39   Input ~ 0
RAM_~CS
Text GLabel 7950 5850 0    39   Input ~ 0
ROM_~CS
Entry Wire Line
	5250 1100 5350 1200
Text Label 5450 1200 2    50   ~ 0
a5
Entry Wire Line
	5250 1000 5350 1100
Text Label 5450 1100 2    50   ~ 0
a4
$Comp
L 74xx:74LS21 U3
U 2 1 612141A3
P 9850 1700
F 0 "U3" H 9850 1800 50  0000 C CNN
F 1 "74HC21" H 9850 1700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9850 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 9850 1700 50  0001 C CNN
	2    9850 1700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS21 U3
U 3 1 6134746E
P 8600 5100
F 0 "U3" H 8600 5200 50  0000 C CNN
F 1 "74HC21" H 8600 5100 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8600 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 8600 5100 50  0001 C CNN
	3    8600 5100
	1    0    0    -1  
$EndComp
Text GLabel 9150 1750 3    50   Input ~ 0
IRQ3
$Comp
L Device:R R9
U 1 1 61507B1E
P 8950 1750
F 0 "R9" V 8950 1750 50  0000 C CNN
F 1 "10K" V 8850 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8880 1750 50  0001 C CNN
F 3 "~" H 8950 1750 50  0001 C CNN
	1    8950 1750
	0    1    1    0   
$EndComp
Text GLabel 9150 1450 3    50   Input ~ 0
IRQ2
$Comp
L Device:R R8
U 1 1 61537865
P 8950 1450
F 0 "R8" V 8950 1450 50  0000 C CNN
F 1 "10K" V 8850 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8880 1450 50  0001 C CNN
F 3 "~" H 8950 1450 50  0001 C CNN
	1    8950 1450
	0    1    1    0   
$EndComp
Text GLabel 9150 1150 3    50   Input ~ 0
IRQ1
$Comp
L Device:R R7
U 1 1 6154F71E
P 8950 1150
F 0 "R7" V 8950 1150 50  0000 C CNN
F 1 "10K" V 8850 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8880 1150 50  0001 C CNN
F 3 "~" H 8950 1150 50  0001 C CNN
	1    8950 1150
	0    1    1    0   
$EndComp
Text GLabel 9150 2050 3    50   Input ~ 0
IRQ4
$Comp
L Device:R R10
U 1 1 6156781D
P 8950 2050
F 0 "R10" V 8950 2050 50  0000 C CNN
F 1 "10K" V 8850 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8880 2050 50  0001 C CNN
F 3 "~" H 8950 2050 50  0001 C CNN
	1    8950 2050
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 6158043F
P 8800 1050
F 0 "#PWR015" H 8800 900 50  0001 C CNN
F 1 "VCC" H 8815 1223 50  0000 C CNN
F 2 "" H 8800 1050 50  0001 C CNN
F 3 "" H 8800 1050 50  0001 C CNN
	1    8800 1050
	1    0    0    -1  
$EndComp
Connection ~ 8800 1150
Wire Wire Line
	8800 1150 8800 1050
Connection ~ 8800 1450
Connection ~ 8800 1750
Wire Wire Line
	8800 1750 8800 2050
Wire Wire Line
	8800 1450 8800 1750
Wire Wire Line
	8800 1150 8800 1450
Wire Wire Line
	9550 1150 9550 1550
Wire Wire Line
	9100 1150 9550 1150
Wire Wire Line
	9450 1450 9450 1650
Wire Wire Line
	9450 1650 9550 1650
Wire Wire Line
	9100 1450 9450 1450
Wire Wire Line
	9100 1750 9550 1750
Wire Wire Line
	9550 2050 9550 1850
Wire Wire Line
	9100 2050 9550 2050
Wire Wire Line
	1350 4500 1350 4650
Text GLabel 1850 5750 0    50   Output ~ 0
VP
Text GLabel 1850 5850 0    50   Output ~ 0
ML
Text GLabel 1800 6150 1    50   Input ~ 0
SO
$Comp
L Device:R R5
U 1 1 618C227A
P 1550 6150
F 0 "R5" V 1550 6150 50  0000 C CNN
F 1 "10K" V 1650 6150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 6150 50  0001 C CNN
F 3 "~" H 1550 6150 50  0001 C CNN
	1    1550 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 6150 1700 6150
Wire Wire Line
	1400 6150 1350 6150
Wire Wire Line
	1350 6150 1350 5350
Connection ~ 1350 5350
Entry Wire Line
	7650 1950 7550 2050
Entry Wire Line
	7650 2050 7550 2150
Entry Wire Line
	7650 2150 7550 2250
Entry Wire Line
	7650 2250 7550 2350
Entry Wire Line
	7650 2350 7550 2450
Entry Wire Line
	7650 2450 7550 2550
Entry Wire Line
	7650 2550 7550 2650
Entry Wire Line
	7650 2650 7550 2750
Entry Wire Line
	7650 2750 7550 2850
Entry Wire Line
	7650 2850 7550 2950
Entry Wire Line
	7650 2950 7550 3050
Entry Wire Line
	7650 3050 7550 3150
Entry Wire Line
	7650 3150 7550 3250
Entry Wire Line
	7650 3250 7550 3350
Entry Wire Line
	7650 3350 7550 3450
Entry Wire Line
	7650 3450 7550 3550
Entry Wire Line
	7650 3550 7550 3650
Entry Wire Line
	7650 3650 7550 3750
Entry Wire Line
	7650 3750 7550 3850
Entry Wire Line
	7650 3850 7550 3950
Entry Wire Line
	7650 3950 7550 4050
Text Label 7650 3550 0    50   ~ 0
d0
Text Label 7650 3650 0    50   ~ 0
d1
Text Label 7650 3750 0    50   ~ 0
d2
Text Label 7650 3850 0    50   ~ 0
d3
Text Label 7650 3950 0    50   ~ 0
d4
Text Label 7650 4050 0    50   ~ 0
d5
Text Label 7650 4150 0    50   ~ 0
d6
Text Label 7650 4250 0    50   ~ 0
d7
Text Label 7650 1950 0    50   ~ 0
a0
Text Label 7650 2050 0    50   ~ 0
a1
Text Label 7650 2150 0    50   ~ 0
a2
Text Label 7650 2250 0    50   ~ 0
a3
Text Label 7650 2350 0    50   ~ 0
a4
Text Label 7650 2450 0    50   ~ 0
a5
Text Label 7650 2550 0    50   ~ 0
a6
Text Label 7650 2650 0    50   ~ 0
a7
Text Label 7650 2750 0    50   ~ 0
a8
Text Label 7650 2850 0    50   ~ 0
a9
Text Label 7650 3050 0    50   ~ 0
a11
Text Label 7650 3150 0    50   ~ 0
a12
Text Label 7650 3250 0    50   ~ 0
a13
Text Label 7650 3350 0    50   ~ 0
a14
Text Label 7650 3450 0    50   ~ 0
a15
Entry Wire Line
	7650 4050 7550 4150
Entry Wire Line
	7650 4150 7550 4250
Entry Wire Line
	7650 4250 7550 4350
Text GLabel 7950 4350 0    50   Input ~ 0
IO1
Text GLabel 7950 4450 0    50   Input ~ 0
IO2
Text GLabel 7950 4550 0    50   Input ~ 0
IO3
Text GLabel 7950 4650 0    50   Input ~ 0
IO4
Text GLabel 7950 4950 0    50   Output ~ 0
IRQ3
Text GLabel 7950 5050 0    50   Output ~ 0
IRQ4
Text GLabel 7950 4750 0    50   Output ~ 0
IRQ1
Text GLabel 7950 4850 0    50   Output ~ 0
IRQ2
Text GLabel 7950 5350 0    39   Input ~ 0
~READ
Text GLabel 7950 5250 0    39   Input ~ 0
~WRITE
Text GLabel 7950 5450 0    50   Input ~ 0
RW
Text GLabel 7950 5550 0    50   Output ~ 0
RDY
Text GLabel 7950 5650 0    50   Output ~ 0
BE
Text GLabel 7950 5950 0    39   Input ~ 0
ROM_~WE
Text GLabel 7950 6050 0    50   Input ~ 0
SYNC
Text GLabel 7950 6150 0    50   Input ~ 0
VP
Text GLabel 7950 6250 0    50   Input ~ 0
ML
Text GLabel 7950 6350 0    50   Output ~ 0
SO
Text Label 7650 2950 0    50   ~ 0
a10
Wire Wire Line
	7650 1950 7950 1950
Wire Wire Line
	7650 2050 7950 2050
Wire Wire Line
	7650 2150 7950 2150
Wire Wire Line
	7650 2250 7950 2250
Wire Wire Line
	7650 2350 7950 2350
Wire Wire Line
	7650 2450 7950 2450
Wire Wire Line
	7650 2550 7950 2550
Wire Wire Line
	7650 2650 7950 2650
Wire Wire Line
	7650 2750 7950 2750
Wire Wire Line
	7650 2850 7950 2850
Wire Wire Line
	7650 2950 7950 2950
Wire Wire Line
	7650 3050 7950 3050
Wire Wire Line
	7650 3150 7950 3150
Wire Wire Line
	7650 3250 7950 3250
Wire Wire Line
	7650 3350 7950 3350
Wire Wire Line
	7650 3450 7950 3450
Wire Wire Line
	7650 3550 7950 3550
Wire Wire Line
	7650 3650 7950 3650
Wire Wire Line
	7650 3750 7950 3750
Wire Wire Line
	7650 3850 7950 3850
Wire Wire Line
	7650 3950 7950 3950
Wire Wire Line
	7650 4050 7950 4050
Wire Wire Line
	7650 4150 7950 4150
Wire Wire Line
	7650 4250 7950 4250
$Comp
L power:VCC #PWR018
U 1 1 6268FE1C
P 7950 1450
F 0 "#PWR018" H 7950 1300 50  0001 C CNN
F 1 "VCC" V 7965 1623 50  0000 C CNN
F 2 "" H 7950 1450 50  0001 C CNN
F 3 "" H 7950 1450 50  0001 C CNN
	1    7950 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 626908FA
P 7950 1550
F 0 "#PWR019" H 7950 1300 50  0001 C CNN
F 1 "GND" V 7955 1422 50  0000 R CNN
F 2 "" H 7950 1550 50  0001 C CNN
F 3 "" H 7950 1550 50  0001 C CNN
	1    7950 1550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS21 U3
U 1 1 6274AFFE
P 10700 6200
F 0 "U3" H 10700 6300 50  0000 C CNN
F 1 "74HC21" H 10700 6200 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10700 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS21" H 10700 6200 50  0001 C CNN
	1    10700 6200
	1    0    0    -1  
$EndComp
Connection ~ 10400 6050
Wire Wire Line
	10400 6050 10400 6150
Connection ~ 10400 6150
Wire Wire Line
	10400 6150 10400 6250
Connection ~ 10400 6250
Wire Wire Line
	10400 6250 10400 6350
$Comp
L AK's_Library:Conn_01x50 J3
U 1 1 627CC48A
P 8150 3850
F 0 "J3" H 8230 3842 50  0000 L CNN
F 1 "Conn_01x50" H 8230 3751 50  0000 L CNN
F 2 "AK's_Footprints:PinSocket_1x50_P2.54mm_Vertical" H 8150 3850 50  0001 C CNN
F 3 "~" H 8150 3850 50  0001 C CNN
	1    8150 3850
	1    0    0    -1  
$EndComp
NoConn ~ 11000 6200
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 628EFB00
P 9900 3500
F 0 "H1" V 9854 3650 50  0000 L CNN
F 1 "MountingHole_Pad" V 9945 3650 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 9900 3500 50  0001 C CNN
F 3 "~" H 9900 3500 50  0001 C CNN
	1    9900 3500
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 628F0160
P 9900 3300
F 0 "H2" V 9854 3450 50  0000 L CNN
F 1 "MountingHole_Pad" V 9945 3450 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 9900 3300 50  0001 C CNN
F 3 "~" H 9900 3300 50  0001 C CNN
	1    9900 3300
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 628F05A3
P 9900 3700
F 0 "H3" V 9854 3850 50  0000 L CNN
F 1 "MountingHole_Pad" V 9945 3850 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 9900 3700 50  0001 C CNN
F 3 "~" H 9900 3700 50  0001 C CNN
	1    9900 3700
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 628F1276
P 9900 3900
F 0 "H4" V 9854 4050 50  0000 L CNN
F 1 "MountingHole_Pad" V 9945 4050 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 9900 3900 50  0001 C CNN
F 3 "~" H 9900 3900 50  0001 C CNN
	1    9900 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9800 3500 9800 3700
Wire Wire Line
	9800 3300 9800 3500
Connection ~ 9800 3700
Wire Wire Line
	9800 3900 9800 4050
Connection ~ 9800 3900
$Comp
L power:GND #PWR0103
U 1 1 6291D05C
P 9800 4050
F 0 "#PWR0103" H 9800 3800 50  0001 C CNN
F 1 "GND" V 9805 3922 50  0000 R CNN
F 2 "" H 9800 4050 50  0001 C CNN
F 3 "" H 9800 4050 50  0001 C CNN
	1    9800 4050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 6164B3FC
P 6000 800
AR Path="/6164B3FC" Ref="#PWR023"  Part="1" 
AR Path="/60CB2595/6164B3FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR023" H 6000 650 50  0001 C CNN
F 1 "VCC" H 6015 973 50  0000 C CNN
F 2 "" H 6000 800 50  0001 C CNN
F 3 "" H 6000 800 50  0001 C CNN
	1    6000 800 
	1    0    0    -1  
$EndComp
NoConn ~ 6500 1200
NoConn ~ 6500 1100
$Comp
L power:VCC #PWR020
U 1 1 6164B412
P 3700 1000
AR Path="/6164B412" Ref="#PWR020"  Part="1" 
AR Path="/60CB2595/6164B412" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 3700 850 50  0001 C CNN
F 1 "VCC" H 3715 1173 50  0000 C CNN
F 2 "" H 3700 1000 50  0001 C CNN
F 3 "" H 3700 1000 50  0001 C CNN
	1    3700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 6164B451
P 9250 4600
AR Path="/6164B451" Ref="#PWR025"  Part="1" 
AR Path="/60CB2595/6164B451" Ref="#PWR?"  Part="1" 
F 0 "#PWR025" H 9250 4450 50  0001 C CNN
F 1 "VCC" H 9265 4773 50  0000 C CNN
F 2 "" H 9250 4600 50  0001 C CNN
F 3 "" H 9250 4600 50  0001 C CNN
	1    9250 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6164B457
P 9300 5600
AR Path="/6164B457" Ref="#PWR026"  Part="1" 
AR Path="/60CB2595/6164B457" Ref="#PWR?"  Part="1" 
F 0 "#PWR026" H 9300 5350 50  0001 C CNN
F 1 "GND" H 9305 5427 50  0000 C CNN
F 2 "" H 9300 5600 50  0001 C CNN
F 3 "" H 9300 5600 50  0001 C CNN
	1    9300 5600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U8
U 5 1 6164B45D
P 9500 5100
AR Path="/6164B45D" Ref="U8"  Part="5" 
AR Path="/60CB2595/6164B45D" Ref="U?"  Part="5" 
F 0 "U8" H 9450 5150 50  0000 L CNN
F 1 "74HC00" H 9350 5050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9500 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 9500 5100 50  0001 C CNN
	5    9500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4600 9250 4600
Wire Wire Line
	9500 5600 9300 5600
$Comp
L 74xx:74LS133 U6
U 2 1 6164B465
P 9050 5100
AR Path="/6164B465" Ref="U6"  Part="2" 
AR Path="/60CB2595/6164B465" Ref="U?"  Part="2" 
F 0 "U6" H 9000 5150 50  0000 L CNN
F 1 "74HC133" H 8900 5050 50  0000 L CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 9050 5100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 9050 5100 50  0001 C CNN
	2    9050 5100
	1    0    0    -1  
$EndComp
Connection ~ 9250 4600
Wire Wire Line
	9250 4600 9050 4600
Connection ~ 9300 5600
Wire Wire Line
	9300 5600 9050 5600
$Comp
L 74xx:74HC04 U7
U 7 1 6164B46F
P 9950 5100
AR Path="/6164B46F" Ref="U7"  Part="7" 
AR Path="/60CB2595/6164B46F" Ref="U?"  Part="7" 
F 0 "U7" H 9850 5150 50  0000 L CNN
F 1 "74HC04" H 9800 5050 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9950 5100 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9950 5100 50  0001 C CNN
	7    9950 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4600 9950 4600
Connection ~ 9500 4600
Wire Wire Line
	9950 5600 9500 5600
Connection ~ 9500 5600
$Comp
L 74xx:74HC04 U7
U 3 1 6164B479
P 10700 4700
AR Path="/6164B479" Ref="U7"  Part="3" 
AR Path="/60CB2595/6164B479" Ref="U?"  Part="3" 
F 0 "U7" H 10650 4700 50  0000 C CNN
F 1 "74HC04" H 10850 4550 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10700 4700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10700 4700 50  0001 C CNN
	3    10700 4700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U7
U 4 1 6164B47F
P 10700 5050
AR Path="/6164B47F" Ref="U7"  Part="4" 
AR Path="/60CB2595/6164B47F" Ref="U?"  Part="4" 
F 0 "U7" H 10650 5050 50  0000 C CNN
F 1 "74HC04" H 10850 4900 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10700 5050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10700 5050 50  0001 C CNN
	4    10700 5050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U7
U 5 1 6164B485
P 10700 5400
AR Path="/6164B485" Ref="U7"  Part="5" 
AR Path="/60CB2595/6164B485" Ref="U?"  Part="5" 
F 0 "U7" H 10650 5400 50  0000 C CNN
F 1 "74HC04" H 10850 5250 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10700 5400 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10700 5400 50  0001 C CNN
	5    10700 5400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U7
U 6 1 6164B48B
P 10700 5800
AR Path="/6164B48B" Ref="U7"  Part="6" 
AR Path="/60CB2595/6164B48B" Ref="U?"  Part="6" 
F 0 "U7" H 10650 5800 50  0000 C CNN
F 1 "74HC04" H 10850 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10700 5800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 10700 5800 50  0001 C CNN
	6    10700 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 4600 10400 4600
Wire Wire Line
	10400 4600 10400 4700
Connection ~ 9950 4600
Connection ~ 10400 4700
Wire Wire Line
	10400 4700 10400 5050
Connection ~ 10400 5050
Wire Wire Line
	10400 5050 10400 5400
Connection ~ 10400 5400
Wire Wire Line
	10400 5400 10400 5800
NoConn ~ 11000 4700
NoConn ~ 11000 5050
NoConn ~ 11000 5400
NoConn ~ 11000 5800
$Comp
L Device:C C8
U 1 1 6164B49E
P 4850 7250
AR Path="/6164B49E" Ref="C8"  Part="1" 
AR Path="/60CB2595/6164B49E" Ref="C?"  Part="1" 
F 0 "C8" H 4965 7296 50  0000 L CNN
F 1 "0.1uF" H 4965 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4888 7100 50  0001 C CNN
F 3 "~" H 4850 7250 50  0001 C CNN
	1    4850 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7100 4850 7100
Wire Wire Line
	4850 7400 4400 7400
$Comp
L Device:C C9
U 1 1 6164B4A6
P 5300 7250
AR Path="/6164B4A6" Ref="C9"  Part="1" 
AR Path="/60CB2595/6164B4A6" Ref="C?"  Part="1" 
F 0 "C9" H 5415 7296 50  0000 L CNN
F 1 "0.1uF" H 5415 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5338 7100 50  0001 C CNN
F 3 "~" H 5300 7250 50  0001 C CNN
	1    5300 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7100 5300 7100
Wire Wire Line
	5300 7400 4850 7400
$Comp
L Device:C C10
U 1 1 6164B4AE
P 5750 7250
AR Path="/6164B4AE" Ref="C10"  Part="1" 
AR Path="/60CB2595/6164B4AE" Ref="C?"  Part="1" 
F 0 "C10" H 5865 7296 50  0000 L CNN
F 1 "0.1uF" H 5865 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5788 7100 50  0001 C CNN
F 3 "~" H 5750 7250 50  0001 C CNN
	1    5750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 7100 5750 7100
Wire Wire Line
	5750 7400 5300 7400
$Comp
L Device:C C7
U 1 1 6164B4B6
P 4400 7250
AR Path="/6164B4B6" Ref="C7"  Part="1" 
AR Path="/60CB2595/6164B4B6" Ref="C?"  Part="1" 
F 0 "C7" H 4515 7296 50  0000 L CNN
F 1 "0.1uF" H 4515 7205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4438 7100 50  0001 C CNN
F 3 "~" H 4400 7250 50  0001 C CNN
	1    4400 7250
	1    0    0    -1  
$EndComp
Connection ~ 4850 7100
Connection ~ 4850 7400
Wire Wire Line
	5350 1200 5500 1200
Wire Wire Line
	5500 1100 5350 1100
Wire Bus Line
	3250 700  5250 700 
Connection ~ 9800 3500
Wire Bus Line
	3250 3550 3650 3550
Connection ~ 3250 3550
Connection ~ 3650 3550
Wire Bus Line
	3650 3550 5750 3550
Connection ~ 5750 3550
Wire Bus Line
	4850 3550 5750 3550
Connection ~ 6950 5250
Wire Bus Line
	6950 5250 6950 6400
Wire Wire Line
	9800 3700 9800 3900
Wire Bus Line
	3250 6400 5050 6400
Wire Bus Line
	5750 3550 7550 3550
Wire Bus Line
	6950 5250 7550 5250
Wire Wire Line
	9050 4600 8600 4600
Connection ~ 9050 4600
Wire Wire Line
	8600 5600 9050 5600
Connection ~ 9050 5600
Wire Wire Line
	10400 5800 10400 6050
Connection ~ 10400 5800
Connection ~ 5300 7100
Connection ~ 5300 7400
Wire Wire Line
	4400 7100 3950 7100
Connection ~ 4400 7100
Connection ~ 3950 7100
Wire Wire Line
	3950 7400 4400 7400
Connection ~ 3950 7400
Connection ~ 4400 7400
Text GLabel 6400 3100 2    50   Output ~ 0
~READ
Text GLabel 6400 2850 2    50   Output ~ 0
~WRITE
Text GLabel 5200 3200 0    50   Input ~ 0
RW
Text GLabel 4450 2900 0    50   Input ~ 0
BE
Text GLabel 4450 3300 2    50   Output ~ 0
~CLK
Text GLabel 3650 3300 0    50   Input ~ 0
CLK
$Comp
L 74xx:74HC00 U?
U 4 1 6164B3EF
P 4750 3000
AR Path="/60CB2595/6164B3EF" Ref="U?"  Part="4" 
AR Path="/6164B3EF" Ref="U8"  Part="4" 
F 0 "U8" H 4750 3000 50  0000 C CNN
F 1 "74HC00" H 4750 3234 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 4750 3000 50  0001 C CNN
	4    4750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3100 4450 3100
Wire Wire Line
	5800 3100 6400 3100
$Comp
L 74xx:74HC04 U?
U 2 1 6164B3E2
P 4050 3300
AR Path="/60CB2595/6164B3E2" Ref="U?"  Part="2" 
AR Path="/6164B3E2" Ref="U7"  Part="2" 
F 0 "U7" H 4050 3617 50  0000 C CNN
F 1 "74HC04" H 4050 3526 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4050 3300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 4050 3300 50  0001 C CNN
	2    4050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3300 4450 3300
Wire Wire Line
	5100 2750 5800 2750
Wire Wire Line
	5800 2950 5800 3100
$Comp
L 74xx:74HC00 U?
U 1 1 6164B3D6
P 6100 2850
AR Path="/60CB2595/6164B3D6" Ref="U?"  Part="1" 
AR Path="/6164B3D6" Ref="U8"  Part="1" 
F 0 "U8" H 6100 2850 50  0000 C CNN
F 1 "74HC00" H 6100 3084 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6100 2850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 6100 2850 50  0001 C CNN
	1    6100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3000 5200 3000
Wire Wire Line
	5100 3000 5100 2750
Connection ~ 5100 3000
Wire Wire Line
	5050 3000 5100 3000
Connection ~ 4350 3300
Wire Wire Line
	4350 3300 4350 3100
Wire Wire Line
	3650 3300 3750 3300
Connection ~ 5800 3100
$Comp
L 74xx:74HC00 U?
U 2 1 6164B3CA
P 5500 3100
AR Path="/60CB2595/6164B3CA" Ref="U?"  Part="2" 
AR Path="/6164B3CA" Ref="U8"  Part="2" 
F 0 "U8" H 5500 3100 50  0000 C CNN
F 1 "74HC00" H 5500 3334 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5500 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 5500 3100 50  0001 C CNN
	2    5500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1400 3350 1400
Wire Wire Line
	3350 1500 3700 1500
Wire Wire Line
	3700 1600 3350 1600
Wire Wire Line
	3350 1700 3700 1700
Wire Wire Line
	3700 1800 3350 1800
Wire Wire Line
	3350 1900 3700 1900
Wire Wire Line
	3700 2000 3350 2000
Wire Wire Line
	3350 2100 3700 2100
Wire Wire Line
	3700 2200 3350 2200
Wire Wire Line
	3350 2400 3700 2400
Text GLabel 5050 2050 2    50   Output ~ 0
RAM_~CS
Text GLabel 4500 2400 2    50   Output ~ 0
ROM_~CS
Text GLabel 6500 1800 2    50   Output ~ 0
IO4
Text GLabel 6500 1700 2    50   Output ~ 0
IO3
Text GLabel 6500 1600 2    50   Output ~ 0
IO2
Text GLabel 6500 1500 2    50   Output ~ 0
IO1
Wire Wire Line
	5500 1300 5150 1300
$Comp
L power:VCC #PWR021
U 1 1 6164B444
P 5150 1300
AR Path="/6164B444" Ref="#PWR021"  Part="1" 
AR Path="/60CB2595/6164B444" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 5150 1150 50  0001 C CNN
F 1 "VCC" H 5165 1473 50  0000 C CNN
F 2 "" H 5150 1300 50  0001 C CNN
F 3 "" H 5150 1300 50  0001 C CNN
	1    5150 1300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS138 U9
U 1 1 6164B436
P 6000 1400
AR Path="/6164B436" Ref="U9"  Part="1" 
AR Path="/60CB2595/6164B436" Ref="U?"  Part="1" 
F 0 "U9" H 5800 1950 50  0000 C CNN
F 1 "74HC138" H 6250 1950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6000 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 6000 1400 50  0001 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1600 5500 1600
Wire Wire Line
	3700 1200 3700 1100
Wire Wire Line
	3700 1100 3700 1000
Connection ~ 3700 1100
Connection ~ 3700 1000
$Comp
L 74xx:74LS133 U6
U 1 1 6164B42D
P 4000 1600
AR Path="/6164B42D" Ref="U6"  Part="1" 
AR Path="/60CB2595/6164B42D" Ref="U?"  Part="1" 
F 0 "U6" H 3950 1950 50  0000 C CNN
F 1 "74HC133" H 4050 1850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 4000 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS133" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1800 5500 2600
Wire Wire Line
	4300 2600 5500 2600
Wire Wire Line
	4300 2150 4300 2400
Wire Wire Line
	4300 2400 4300 2600
Connection ~ 4300 2400
$Comp
L 74xx:74HC04 U7
U 1 1 6164B423
P 4000 2400
AR Path="/6164B423" Ref="U7"  Part="1" 
AR Path="/60CB2595/6164B423" Ref="U?"  Part="1" 
F 0 "U7" H 3950 2400 50  0000 C CNN
F 1 "74HC04" H 4000 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4000 2400 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 4000 2400 50  0001 C CNN
	1    4000 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2400 4500 2400
Wire Wire Line
	4300 2150 4450 2150
Wire Wire Line
	4300 1950 4450 1950
Connection ~ 4300 1600
Wire Wire Line
	4300 1600 4300 1950
Connection ~ 3700 1200
Wire Wire Line
	3700 1300 3700 1200
NoConn ~ 6500 1300
NoConn ~ 6500 1400
$Comp
L power:GND #PWR022
U 1 1 6164B408
P 5500 1700
AR Path="/6164B408" Ref="#PWR022"  Part="1" 
AR Path="/60CB2595/6164B408" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 5500 1450 50  0001 C CNN
F 1 "GND" V 5505 1572 50  0000 R CNN
F 2 "" H 5500 1700 50  0001 C CNN
F 3 "" H 5500 1700 50  0001 C CNN
	1    5500 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6164B402
P 6000 2100
AR Path="/6164B402" Ref="#PWR024"  Part="1" 
AR Path="/60CB2595/6164B402" Ref="#PWR?"  Part="1" 
F 0 "#PWR024" H 6000 1850 50  0001 C CNN
F 1 "GND" V 6005 1972 50  0000 R CNN
F 2 "" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U8
U 3 1 6164B3F6
P 4750 2050
AR Path="/6164B3F6" Ref="U8"  Part="3" 
AR Path="/60CB2595/6164B3F6" Ref="U?"  Part="3" 
F 0 "U8" H 4750 2375 50  0000 C CNN
F 1 "74HC00" H 4750 2284 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4750 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 4750 2050 50  0001 C CNN
	3    4750 2050
	1    0    0    -1  
$EndComp
Text Label 3450 1400 2    50   ~ 0
a6
Entry Wire Line
	3350 1400 3250 1500
Text Label 3450 1500 2    50   ~ 0
a7
Entry Wire Line
	3350 1500 3250 1600
Text Label 3450 2400 2    50   ~ 0
a15
Entry Wire Line
	3350 2400 3250 2500
Text Label 3450 1600 2    50   ~ 0
a8
Text Label 3450 1700 2    50   ~ 0
a9
Text Label 3450 1800 2    50   ~ 0
a10
Text Label 3450 1900 2    50   ~ 0
a11
Text Label 3450 2000 2    50   ~ 0
a12
Text Label 3450 2100 2    50   ~ 0
a13
Text Label 3450 2200 2    50   ~ 0
a14
Entry Wire Line
	3350 2200 3250 2300
Entry Wire Line
	3350 2100 3250 2200
Entry Wire Line
	3350 2000 3250 2100
Entry Wire Line
	3350 1900 3250 2000
Entry Wire Line
	3350 1800 3250 1900
Entry Wire Line
	3350 1700 3250 1800
Entry Wire Line
	3350 1600 3250 1700
Wire Wire Line
	1200 1100 1000 1100
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 62647547
P 1400 1000
F 0 "J1" H 1480 992 50  0000 L CNN
F 1 "PWR_IN" H 1480 901 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1400 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1000 1200 1000
Wire Wire Line
	900  1000 1050 1000
Connection ~ 1050 1000
Wire Wire Line
	1050 1000 1050 800 
$Comp
L power:VCC #PWR01
U 1 1 614FF05C
P 900 1000
F 0 "#PWR01" H 900 850 50  0001 C CNN
F 1 "VCC" H 915 1173 50  0000 C CNN
F 2 "" H 900 1000 50  0001 C CNN
F 3 "" H 900 1000 50  0001 C CNN
	1    900  1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6170B878
P 1000 1100
F 0 "#PWR02" H 1000 850 50  0001 C CNN
F 1 "GND" V 1005 972 50  0000 R CNN
F 2 "" H 1000 1100 50  0001 C CNN
F 3 "" H 1000 1100 50  0001 C CNN
	1    1000 1100
	0    1    1    0   
$EndComp
Connection ~ 1000 1100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60DF6A53
P 1000 1100
F 0 "#FLG01" H 1000 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 1273 50  0000 C CNN
F 2 "" H 1000 1100 50  0001 C CNN
F 3 "~" H 1000 1100 50  0001 C CNN
	1    1000 1100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60CDD52F
P 1050 800
F 0 "#FLG02" H 1050 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1050 950 50  0000 C CNN
F 2 "" H 1050 800 50  0001 C CNN
F 3 "~" H 1050 800 50  0001 C CNN
	1    1050 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3100 1100 3100
Wire Wire Line
	1100 3000 1100 3100
$Comp
L power:VCC #PWR03
U 1 1 60B704E8
P 1100 2400
F 0 "#PWR03" H 1100 2250 50  0001 C CNN
F 1 "VCC" H 1115 2573 50  0000 C CNN
F 2 "" H 1100 2400 50  0001 C CNN
F 3 "" H 1100 2400 50  0001 C CNN
	1    1100 2400
	1    0    0    -1  
$EndComp
$Comp
L AK's_Library:DS1813 U1
U 1 1 60A87ED0
P 1150 2700
F 0 "U1" H 920 2746 50  0000 R CNN
F 1 "DS1813" H 920 2655 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 250 2600 50  0001 C CNN
F 3 "" H 1200 2950 50  0001 C CNN
	1    1150 2700
	1    0    0    -1  
$EndComp
Connection ~ 1100 3100
$Comp
L power:GND #PWR04
U 1 1 617A700B
P 1100 3100
F 0 "#PWR04" H 1100 2850 50  0001 C CNN
F 1 "GND" V 1105 2972 50  0000 R CNN
F 2 "" H 1100 3100 50  0001 C CNN
F 3 "" H 1100 3100 50  0001 C CNN
	1    1100 3100
	1    0    0    -1  
$EndComp
Text GLabel 1750 2700 2    50   Output ~ 0
RST
Wire Wire Line
	1550 2700 1750 2700
Wire Wire Line
	1450 2700 1550 2700
Connection ~ 1550 2700
$Comp
L Switch:SW_Push SW1
U 1 1 60CB545F
P 1550 2900
F 0 "SW1" H 1550 3185 50  0000 C CNN
F 1 "RESET" H 1550 3094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1550 3100 50  0001 C CNN
F 3 "~" H 1550 3100 50  0001 C CNN
	1    1550 2900
	0    1    1    0   
$EndComp
Wire Bus Line
	3250 700  3250 3550
Wire Bus Line
	7550 3650 7550 5250
Wire Bus Line
	7550 2050 7550 3550
Wire Bus Line
	5250 700  5250 1100
Wire Bus Line
	5750 3550 5750 5300
Wire Bus Line
	3650 3550 3650 5300
Wire Bus Line
	3250 3550 3250 5150
Wire Bus Line
	6950 4100 6950 5250
Wire Bus Line
	5050 4800 5050 6400
Wire Bus Line
	3250 5550 3250 6400
$Comp
L power:GND #PWR07
U 1 1 6176203E
P 1850 2050
F 0 "#PWR07" H 1850 1800 50  0001 C CNN
F 1 "GND" V 1855 1922 50  0000 R CNN
F 2 "" H 1850 2050 50  0001 C CNN
F 3 "" H 1850 2050 50  0001 C CNN
	1    1850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 61567ED9
P 1850 1450
F 0 "#PWR06" H 1850 1300 50  0001 C CNN
F 1 "VCC" H 1865 1623 50  0000 C CNN
F 2 "" H 1850 1450 50  0001 C CNN
F 3 "" H 1850 1450 50  0001 C CNN
	1    1850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1750 2350 1750
NoConn ~ 2350 1650
Text GLabel 2350 1850 0    50   Output ~ 0
CLK
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 612F7073
P 2550 1750
F 0 "J2" H 2630 1792 50  0000 L CNN
F 1 "CLK_IN" H 2630 1701 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2550 1750 50  0001 C CNN
F 3 "~" H 2550 1750 50  0001 C CNN
	1    2550 1750
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ACO-xxxMHz X1
U 1 1 612F439F
P 1850 1750
F 0 "X1" H 1507 1796 50  0000 R CNN
F 1 "ACO-xxxMHz" H 1507 1705 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 2300 1400 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 1750 1750 50  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
