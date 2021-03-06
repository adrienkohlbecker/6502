EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "6502 motherboard"
Date "2021-10-29"
Rev "3"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 65xx:W65C02SxP U1
U 1 1 60820B9F
P 2450 4650
F 0 "U1" H 2450 5300 50  0000 C CNN
F 1 "W65C02SxP" H 2450 5200 50  0000 C CIB
F 2 "Package_DIP:DIP-40_W15.24mm" H 2450 6650 50  0001 C CNN
F 3 "http://www.westerndesigncenter.com/wdc/documentation/w65c02s.pdf" H 2450 6550 50  0001 C CNN
	1    2450 4650
	1    0    0    -1  
$EndComp
$Comp
L Memory_RAM:CY62256-70PC U2
U 1 1 6086CC8B
P 4350 4400
F 0 "U2" H 4350 4600 50  0000 C CNN
F 1 "CY62256-70PC" H 4400 4500 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm" H 4350 4300 50  0001 C CNN
F 3 "https://ecee.colorado.edu/~mcclurel/Cypress_SRAM_CY62256.pdf" H 4350 4300 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:28C256 U3
U 1 1 6086FDB9
P 6350 4600
F 0 "U3" H 6350 5050 50  0000 C CNN
F 1 "28C256" H 6350 4950 50  0000 C CNN
F 2 "Socket:DIP_Socket-28_W11.9_W12.7_W15.24_W17.78_W18.5_3M_228-1277-00-0602J" H 6350 4600 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0006.pdf" H 6350 4600 50  0001 C CNN
	1    6350 4600
	1    0    0    -1  
$EndComp
Entry Wire Line
	3150 5150 3250 5250
Entry Wire Line
	3150 5250 3250 5350
Entry Wire Line
	3150 5350 3250 5450
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
Wire Wire Line
	3150 5150 3050 5150
Wire Wire Line
	3050 5250 3150 5250
Wire Wire Line
	3150 5350 3050 5350
Wire Wire Line
	3050 5450 3150 5450
Wire Wire Line
	3150 5550 3050 5550
Wire Wire Line
	3150 5650 3050 5650
Wire Wire Line
	3050 5750 3150 5750
Wire Wire Line
	3150 5850 3050 5850
Text Label 3050 5150 0    50   ~ 0
d0
Text Label 3050 5250 0    50   ~ 0
d1
Text Label 3050 5350 0    50   ~ 0
d2
Text Label 3050 5450 0    50   ~ 0
d3
Text Label 3050 5550 0    50   ~ 0
d4
Text Label 3050 5650 0    50   ~ 0
d5
Text Label 3050 5750 0    50   ~ 0
d6
Text Label 3050 5850 0    50   ~ 0
d7
Entry Wire Line
	4950 3700 5050 3800
Entry Wire Line
	4950 3800 5050 3900
Entry Wire Line
	4950 3900 5050 4000
Entry Wire Line
	4950 4000 5050 4100
Entry Wire Line
	4950 4100 5050 4200
Entry Wire Line
	4950 4200 5050 4300
Entry Wire Line
	4950 4300 5050 4400
Entry Wire Line
	4950 4400 5050 4500
Wire Wire Line
	4950 3700 4850 3700
Wire Wire Line
	4850 3800 4950 3800
Wire Wire Line
	4950 3900 4850 3900
Wire Wire Line
	4850 4000 4950 4000
Wire Wire Line
	4950 4100 4850 4100
Wire Wire Line
	4850 4200 4950 4200
Wire Wire Line
	4950 4300 4850 4300
Wire Wire Line
	4850 4400 4950 4400
Text Label 4850 3700 0    50   ~ 0
d0
Text Label 4850 3800 0    50   ~ 0
d1
Text Label 4850 3900 0    50   ~ 0
d2
Text Label 4850 4000 0    50   ~ 0
d3
Text Label 4850 4100 0    50   ~ 0
d4
Text Label 4850 4200 0    50   ~ 0
d5
Text Label 4850 4300 0    50   ~ 0
d6
Text Label 4850 4400 0    50   ~ 0
d7
Entry Wire Line
	6850 3700 6950 3800
Entry Wire Line
	6850 3800 6950 3900
Entry Wire Line
	6850 3900 6950 4000
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
Wire Wire Line
	6850 3700 6750 3700
Wire Wire Line
	6750 3800 6850 3800
Wire Wire Line
	6850 3900 6750 3900
Wire Wire Line
	6750 4000 6850 4000
Wire Wire Line
	6850 4100 6750 4100
Wire Wire Line
	6750 4200 6850 4200
Wire Wire Line
	6850 4300 6750 4300
Wire Wire Line
	6750 4400 6850 4400
Text Label 6750 3700 0    50   ~ 0
d0
Text Label 6750 3800 0    50   ~ 0
d1
Text Label 6750 3900 0    50   ~ 0
d2
Text Label 6750 4000 0    50   ~ 0
d3
Text Label 6750 4100 0    50   ~ 0
d4
Text Label 6750 4200 0    50   ~ 0
d5
Text Label 6750 4300 0    50   ~ 0
d6
Text Label 6750 4400 0    50   ~ 0
d7
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
Entry Wire Line
	3150 3650 3250 3550
Entry Wire Line
	3150 3550 3250 3450
Entry Wire Line
	3150 3450 3250 3350
Wire Wire Line
	3050 4950 3150 4950
Wire Wire Line
	3150 4850 3050 4850
Wire Wire Line
	3050 4750 3150 4750
Wire Wire Line
	3150 4650 3050 4650
Wire Wire Line
	3050 4550 3150 4550
Wire Wire Line
	3150 4450 3050 4450
Wire Wire Line
	3050 4350 3150 4350
Wire Wire Line
	3150 4250 3050 4250
Wire Wire Line
	3050 4150 3150 4150
Wire Wire Line
	3150 4050 3050 4050
Wire Wire Line
	3150 3950 3050 3950
Wire Wire Line
	3050 3850 3150 3850
Wire Wire Line
	3150 3750 3050 3750
Wire Wire Line
	3050 3650 3150 3650
Wire Wire Line
	3150 3550 3050 3550
Wire Wire Line
	3050 3450 3150 3450
Text Label 3050 3450 0    50   ~ 0
a0
Text Label 3050 3550 0    50   ~ 0
a1
Text Label 3050 3650 0    50   ~ 0
a2
Text Label 3050 3750 0    50   ~ 0
a3
Text Label 3050 3850 0    50   ~ 0
a4
Text Label 3050 3950 0    50   ~ 0
a5
Text Label 3050 4050 0    50   ~ 0
a6
Text Label 3050 4150 0    50   ~ 0
a7
Text Label 3050 4250 0    50   ~ 0
a8
Text Label 3050 4350 0    50   ~ 0
a9
Text Label 3050 4450 0    50   ~ 0
a10
Text Label 3050 4550 0    50   ~ 0
a11
Text Label 3050 4650 0    50   ~ 0
a12
Text Label 3050 4750 0    50   ~ 0
a13
Text Label 3050 4850 0    50   ~ 0
a14
Text Label 3050 4950 0    50   ~ 0
a15
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
Entry Wire Line
	3750 3900 3650 3800
Entry Wire Line
	3750 3800 3650 3700
Entry Wire Line
	3750 3700 3650 3600
Wire Wire Line
	3750 5100 3850 5100
Wire Wire Line
	3850 5000 3750 5000
Wire Wire Line
	3750 4900 3850 4900
Wire Wire Line
	3850 4800 3750 4800
Wire Wire Line
	3750 4700 3850 4700
Wire Wire Line
	3850 4600 3750 4600
Wire Wire Line
	3750 4500 3850 4500
Wire Wire Line
	3850 4400 3750 4400
Wire Wire Line
	3750 4300 3850 4300
Wire Wire Line
	3750 4200 3850 4200
Wire Wire Line
	3850 4100 3750 4100
Wire Wire Line
	3750 4000 3850 4000
Wire Wire Line
	3850 3900 3750 3900
Wire Wire Line
	3750 3800 3850 3800
Wire Wire Line
	3850 3700 3750 3700
Text Label 3850 3700 2    50   ~ 0
a0
Text Label 3850 3800 2    50   ~ 0
a1
Text Label 3850 3900 2    50   ~ 0
a2
Text Label 3850 4000 2    50   ~ 0
a3
Text Label 3850 4100 2    50   ~ 0
a4
Text Label 3850 4200 2    50   ~ 0
a5
Text Label 3850 4300 2    50   ~ 0
a6
Text Label 3850 4400 2    50   ~ 0
a7
Text Label 3850 4500 2    50   ~ 0
a8
Text Label 3850 4600 2    50   ~ 0
a9
Text Label 3850 4700 2    50   ~ 0
a10
Text Label 3850 4800 2    50   ~ 0
a11
Text Label 3850 4900 2    50   ~ 0
a12
Text Label 3850 5000 2    50   ~ 0
a13
Text Label 3850 5100 2    50   ~ 0
a14
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
Entry Wire Line
	5850 3900 5750 3800
Entry Wire Line
	5850 3800 5750 3700
Entry Wire Line
	5850 3700 5750 3600
Wire Wire Line
	5850 5100 5950 5100
Wire Wire Line
	5950 5000 5850 5000
Wire Wire Line
	5850 4900 5950 4900
Wire Wire Line
	5950 4800 5850 4800
Wire Wire Line
	5850 4700 5950 4700
Wire Wire Line
	5950 4600 5850 4600
Wire Wire Line
	5850 4500 5950 4500
Wire Wire Line
	5950 4400 5850 4400
Wire Wire Line
	5850 4300 5950 4300
Wire Wire Line
	5850 4200 5950 4200
Wire Wire Line
	5950 4100 5850 4100
Wire Wire Line
	5850 4000 5950 4000
Wire Wire Line
	5950 3900 5850 3900
Wire Wire Line
	5850 3800 5950 3800
Wire Wire Line
	5950 3700 5850 3700
Text Label 5950 3700 2    50   ~ 0
a0
Text Label 5950 3800 2    50   ~ 0
a1
Text Label 5950 3900 2    50   ~ 0
a2
Text Label 5950 4000 2    50   ~ 0
a3
Text Label 5950 4100 2    50   ~ 0
a4
Text Label 5950 4200 2    50   ~ 0
a5
Text Label 5950 4300 2    50   ~ 0
a6
Text Label 5950 4400 2    50   ~ 0
a7
Text Label 5950 4500 2    50   ~ 0
a8
Text Label 5950 4600 2    50   ~ 0
a9
Text Label 5950 4700 2    50   ~ 0
a10
Text Label 5950 4800 2    50   ~ 0
a11
Text Label 5950 4900 2    50   ~ 0
a12
Text Label 5950 5000 2    50   ~ 0
a13
Text Label 5950 5100 2    50   ~ 0
a14
Text GLabel 5150 4900 2    39   Input ~ 0
~WRITE
Text GLabel 5150 4800 2    39   Input ~ 0
~READ
Text GLabel 5150 4600 2    50   Input ~ 0
RAM_~CS
Text GLabel 5950 5500 0    39   Input ~ 0
ROM_~CS
Text GLabel 1850 4650 0    50   Output ~ 0
RW
Text GLabel 9600 1500 0    50   BiDi ~ 0
CLK
Text GLabel 9600 1600 0    50   BiDi ~ 0
RST_I
Text GLabel 1850 3750 0    50   Input ~ 0
CLK
Text GLabel 1850 4250 0    50   Input ~ 0
IRQ
Text GLabel 1850 3450 0    50   Input ~ 0
RST
$Comp
L Device:C C2
U 1 1 60E9182D
P 3000 7100
F 0 "C2" H 3115 7146 50  0000 L CNN
F 1 "0.1uF" H 3115 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3038 6950 50  0001 C CNN
F 3 "~" H 3000 7100 50  0001 C CNN
	1    3000 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60EE477C
P 3450 7100
F 0 "C3" H 3565 7146 50  0000 L CNN
F 1 "0.1uF" H 3565 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3488 6950 50  0001 C CNN
F 3 "~" H 3450 7100 50  0001 C CNN
	1    3450 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60EF1B04
P 3900 7100
F 0 "C4" H 4015 7146 50  0000 L CNN
F 1 "0.1uF" H 4015 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3938 6950 50  0001 C CNN
F 3 "~" H 3900 7100 50  0001 C CNN
	1    3900 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60EFEFA2
P 4350 7100
F 0 "C5" H 4465 7146 50  0000 L CNN
F 1 "0.1uF" H 4465 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4388 6950 50  0001 C CNN
F 3 "~" H 4350 7100 50  0001 C CNN
	1    4350 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60F0C51D
P 4800 7100
F 0 "C6" H 4915 7146 50  0000 L CNN
F 1 "0.1uF" H 4915 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4838 6950 50  0001 C CNN
F 3 "~" H 4800 7100 50  0001 C CNN
	1    4800 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6950 3450 6950
Connection ~ 3450 6950
Wire Wire Line
	3450 6950 3900 6950
Connection ~ 3900 6950
Connection ~ 4350 6950
Wire Wire Line
	4350 6950 4800 6950
Connection ~ 3450 7250
Wire Wire Line
	3450 7250 3000 7250
Connection ~ 3900 7250
Wire Wire Line
	3900 7250 3450 7250
Connection ~ 4350 7250
Wire Wire Line
	4800 7250 4350 7250
$Comp
L Device:CP C1
U 1 1 60F48ABE
P 2600 7100
F 0 "C1" H 2718 7146 50  0000 L CNN
F 1 "10uF" H 2718 7055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2638 6950 50  0001 C CNN
F 3 "~" H 2600 7100 50  0001 C CNN
	1    2600 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6950 3000 6950
Connection ~ 3000 6950
Wire Wire Line
	3000 7250 2600 7250
Connection ~ 3000 7250
$Comp
L power:VCC #PWR010
U 1 1 615D02B9
P 2450 3100
F 0 "#PWR010" H 2450 2950 50  0001 C CNN
F 1 "VCC" H 2465 3273 50  0000 C CNN
F 2 "" H 2450 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0001 C CNN
	1    2450 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 615F2E50
P 4350 3500
F 0 "#PWR012" H 4350 3350 50  0001 C CNN
F 1 "VCC" H 4365 3673 50  0000 C CNN
F 2 "" H 4350 3500 50  0001 C CNN
F 3 "" H 4350 3500 50  0001 C CNN
	1    4350 3500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 61638503
P 6350 3500
F 0 "#PWR016" H 6350 3350 50  0001 C CNN
F 1 "VCC" H 6365 3673 50  0000 C CNN
F 2 "" H 6350 3500 50  0001 C CNN
F 3 "" H 6350 3500 50  0001 C CNN
	1    6350 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 617C92F8
P 2450 6200
F 0 "#PWR011" H 2450 5950 50  0001 C CNN
F 1 "GND" V 2455 6072 50  0000 R CNN
F 2 "" H 2450 6200 50  0001 C CNN
F 3 "" H 2450 6200 50  0001 C CNN
	1    2450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7250 4350 7250
$Comp
L power:GND #PWR09
U 1 1 617EB2A7
P 3900 7250
F 0 "#PWR09" H 3900 7000 50  0001 C CNN
F 1 "GND" V 3905 7122 50  0000 R CNN
F 2 "" H 3900 7250 50  0001 C CNN
F 3 "" H 3900 7250 50  0001 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 6180CE3D
P 4350 5300
F 0 "#PWR013" H 4350 5050 50  0001 C CNN
F 1 "GND" V 4355 5172 50  0000 R CNN
F 2 "" H 4350 5300 50  0001 C CNN
F 3 "" H 4350 5300 50  0001 C CNN
	1    4350 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6182EAF8
P 6350 5700
F 0 "#PWR017" H 6350 5450 50  0001 C CNN
F 1 "GND" V 6355 5572 50  0000 R CNN
F 2 "" H 6350 5700 50  0001 C CNN
F 3 "" H 6350 5700 50  0001 C CNN
	1    6350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6950 4350 6950
$Comp
L power:VCC #PWR08
U 1 1 6193C677
P 3900 6950
F 0 "#PWR08" H 3900 6800 50  0001 C CNN
F 1 "VCC" H 3915 7123 50  0000 C CNN
F 2 "" H 3900 6950 50  0001 C CNN
F 3 "" H 3900 6950 50  0001 C CNN
	1    3900 6950
	1    0    0    -1  
$EndComp
Text GLabel 9600 2200 0    50   Output ~ 0
NMI
Text GLabel 1800 4950 0    50   Input ~ 0
RDY
Text GLabel 1850 5050 0    50   Input ~ 0
BE
Text GLabel 5950 5300 0    50   Input ~ 0
ROM_~WE
Text GLabel 5950 5400 0    39   Input ~ 0
~READ
Entry Wire Line
	9300 2800 9200 2700
Entry Wire Line
	9300 2700 9200 2600
Entry Wire Line
	9300 2600 9200 2500
Entry Wire Line
	9300 2500 9200 2400
Entry Wire Line
	9300 2900 9200 3000
Entry Wire Line
	9300 3000 9200 3100
Entry Wire Line
	9300 3100 9200 3200
Entry Wire Line
	9300 3200 9200 3300
Entry Wire Line
	9300 3300 9200 3400
Text Label 9300 2900 0    50   ~ 0
d0
Text Label 9300 3000 0    50   ~ 0
d1
Text Label 9300 3100 0    50   ~ 0
d2
Text Label 9300 3200 0    50   ~ 0
d3
Text Label 9300 3300 0    50   ~ 0
d4
Text Label 9300 3400 0    50   ~ 0
d5
Text Label 9300 3500 0    50   ~ 0
d6
Text Label 9300 3600 0    50   ~ 0
d7
Text Label 9300 2500 0    50   ~ 0
a0
Text Label 9300 2600 0    50   ~ 0
a1
Text Label 9300 2700 0    50   ~ 0
a2
Text Label 9300 2800 0    50   ~ 0
a3
Entry Wire Line
	9300 3400 9200 3500
Entry Wire Line
	9300 3500 9200 3600
Entry Wire Line
	9300 3600 9200 3700
Text GLabel 9600 3700 0    50   Input ~ 0
IO2
Text GLabel 9600 3800 0    50   Input ~ 0
IO3
Text GLabel 9600 3900 0    50   Input ~ 0
IO4
Text GLabel 9600 4100 0    50   Output ~ 0
IRQ3
Text GLabel 9600 4200 0    50   Output ~ 0
IRQ4
Text GLabel 9600 4000 0    50   Output ~ 0
IRQ2
Text GLabel 9600 1800 0    39   Input ~ 0
~READ
Text GLabel 9600 1700 0    39   Input ~ 0
~WRITE
Text GLabel 9600 1900 0    50   Input ~ 0
RW
Text GLabel 9600 2000 0    50   Output ~ 0
RDY_I
Text GLabel 9600 2100 0    50   Output ~ 0
BE
Text GLabel 9600 2400 0    39   Output ~ 0
ROM_~WE
Text GLabel 10600 1800 0    50   Input ~ 0
SYNC
Wire Wire Line
	9300 2500 9600 2500
Wire Wire Line
	9300 2600 9600 2600
Wire Wire Line
	9300 2700 9600 2700
Wire Wire Line
	9300 2800 9600 2800
Wire Wire Line
	9300 2900 9600 2900
Wire Wire Line
	9300 3000 9600 3000
Wire Wire Line
	9300 3100 9600 3100
Wire Wire Line
	9300 3200 9600 3200
Wire Wire Line
	9300 3300 9600 3300
Wire Wire Line
	9300 3400 9600 3400
Wire Wire Line
	9300 3500 9600 3500
Wire Wire Line
	9300 3600 9600 3600
$Comp
L power:VCC #PWR018
U 1 1 6268FE1C
P 9600 1300
F 0 "#PWR018" H 9600 1150 50  0001 C CNN
F 1 "VCC" V 9615 1473 50  0000 C CNN
F 2 "" H 9600 1300 50  0001 C CNN
F 3 "" H 9600 1300 50  0001 C CNN
	1    9600 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 626908FA
P 9600 1400
F 0 "#PWR019" H 9600 1150 50  0001 C CNN
F 1 "GND" V 9605 1272 50  0000 R CNN
F 2 "" H 9600 1400 50  0001 C CNN
F 3 "" H 9600 1400 50  0001 C CNN
	1    9600 1400
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 628EFB00
P 800 6850
F 0 "H1" V 754 7000 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 7000 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 800 6850 50  0001 C CNN
F 3 "~" H 800 6850 50  0001 C CNN
	1    800  6850
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 628F0160
P 800 6650
F 0 "H2" V 754 6800 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 6800 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 800 6650 50  0001 C CNN
F 3 "~" H 800 6650 50  0001 C CNN
	1    800  6650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 628F05A3
P 800 7050
F 0 "H3" V 754 7200 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 7200 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 800 7050 50  0001 C CNN
F 3 "~" H 800 7050 50  0001 C CNN
	1    800  7050
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 628F1276
P 800 7250
F 0 "H4" V 754 7400 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 7400 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad" H 800 7250 50  0001 C CNN
F 3 "~" H 800 7250 50  0001 C CNN
	1    800  7250
	0    1    1    0   
$EndComp
Wire Wire Line
	700  6850 700  7050
Wire Wire Line
	700  6650 700  6850
Connection ~ 700  7050
Wire Wire Line
	700  7250 700  7400
Connection ~ 700  7250
$Comp
L power:GND #PWR0103
U 1 1 6291D05C
P 700 7400
F 0 "#PWR0103" H 700 7150 50  0001 C CNN
F 1 "GND" V 705 7272 50  0000 R CNN
F 2 "" H 700 7400 50  0001 C CNN
F 3 "" H 700 7400 50  0001 C CNN
	1    700  7400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6164B4B6
P 5250 7100
AR Path="/6164B4B6" Ref="C7"  Part="1" 
AR Path="/60CB2595/6164B4B6" Ref="C?"  Part="1" 
F 0 "C7" H 5365 7146 50  0000 L CNN
F 1 "0.1uF" H 5365 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5288 6950 50  0001 C CNN
F 3 "~" H 5250 7100 50  0001 C CNN
	1    5250 7100
	1    0    0    -1  
$EndComp
Connection ~ 700  6850
Wire Bus Line
	3250 3250 3650 3250
Connection ~ 3650 3250
Wire Wire Line
	700  7050 700  7250
Wire Wire Line
	5250 6950 4800 6950
Connection ~ 4800 6950
Wire Wire Line
	4800 7250 5250 7250
Connection ~ 4800 7250
Text GLabel 6650 1450 2    50   Output ~ 0
~READ
Text GLabel 6650 1350 2    50   Output ~ 0
~WRITE
Text GLabel 5550 1950 0    50   Input ~ 0
RW
Text GLabel 5550 1750 0    50   Input ~ 0
BE
Text GLabel 4700 1450 2    50   Output ~ 0
RAM_~CS
Text GLabel 4700 1350 2    50   Output ~ 0
ROM_~CS
Text GLabel 4700 2150 2    50   Output ~ 0
IO4
Text Label 3450 1450 2    50   ~ 0
a4
Entry Wire Line
	3350 1450 3250 1550
Text Label 3450 1550 2    50   ~ 0
a5
Text Label 3450 2050 2    50   ~ 0
a10
Text Label 3450 2150 2    50   ~ 0
a11
Text Label 3450 2250 2    50   ~ 0
a12
Text Label 3450 2350 2    50   ~ 0
a13
Text Label 3450 2900 2    50   ~ 0
a14
Entry Wire Line
	3350 3000 3250 3100
Entry Wire Line
	3350 2350 3250 2450
Entry Wire Line
	3350 2250 3250 2350
Entry Wire Line
	3350 2150 3250 2250
Entry Wire Line
	3350 2050 3250 2150
Entry Wire Line
	3350 1950 3250 2050
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 62647547
P 1400 1000
F 0 "J1" H 1480 992 50  0000 L CNN
F 1 "PWR_IN" H 1480 901 50  0000 L CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 1400 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1000 1000 1000
Wire Wire Line
	750  1000 900  1000
Connection ~ 900  1000
Wire Wire Line
	900  1000 900  800 
$Comp
L power:VCC #PWR01
U 1 1 614FF05C
P 750 1000
F 0 "#PWR01" H 750 850 50  0001 C CNN
F 1 "VCC" H 765 1173 50  0000 C CNN
F 2 "" H 750 1000 50  0001 C CNN
F 3 "" H 750 1000 50  0001 C CNN
	1    750  1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6170B878
P 850 1100
F 0 "#PWR02" H 850 850 50  0001 C CNN
F 1 "GND" V 855 972 50  0000 R CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	0    1    1    0   
$EndComp
Connection ~ 850  1100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60DF6A53
P 850 1100
F 0 "#FLG01" H 850 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 850 1273 50  0000 C CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "~" H 850 1100 50  0001 C CNN
	1    850  1100
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 60CDD52F
P 900 800
F 0 "#FLG02" H 900 875 50  0001 C CNN
F 1 "PWR_FLAG" H 900 950 50  0000 C CNN
F 2 "" H 900 800 50  0001 C CNN
F 3 "~" H 900 800 50  0001 C CNN
	1    900  800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2650 1100 2650
Wire Wire Line
	1100 2550 1100 2650
$Comp
L power:VCC #PWR03
U 1 1 60B704E8
P 1100 1950
F 0 "#PWR03" H 1100 1800 50  0001 C CNN
F 1 "VCC" H 1115 2123 50  0000 C CNN
F 2 "" H 1100 1950 50  0001 C CNN
F 3 "" H 1100 1950 50  0001 C CNN
	1    1100 1950
	1    0    0    -1  
$EndComp
$Comp
L AK's_Library:DS1813 U4
U 1 1 60A87ED0
P 1150 2250
F 0 "U4" H 920 2296 50  0000 R CNN
F 1 "DS1813" H 920 2205 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 250 2150 50  0001 C CNN
F 3 "" H 1200 2500 50  0001 C CNN
	1    1150 2250
	1    0    0    -1  
$EndComp
Connection ~ 1100 2650
$Comp
L power:GND #PWR04
U 1 1 617A700B
P 1100 2650
F 0 "#PWR04" H 1100 2400 50  0001 C CNN
F 1 "GND" V 1105 2522 50  0000 R CNN
F 2 "" H 1100 2650 50  0001 C CNN
F 3 "" H 1100 2650 50  0001 C CNN
	1    1100 2650
	1    0    0    -1  
$EndComp
Text GLabel 1750 2250 2    50   Output ~ 0
RST
Wire Wire Line
	1550 2250 1750 2250
Wire Wire Line
	1450 2250 1550 2250
Connection ~ 1550 2250
$Comp
L Switch:SW_Push SW1
U 1 1 60CB545F
P 1550 2450
F 0 "SW1" H 1550 2735 50  0000 C CNN
F 1 "RESET" H 1550 2644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1550 2650 50  0001 C CNN
F 3 "~" H 1550 2650 50  0001 C CNN
	1    1550 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4600 5150 4600
Wire Wire Line
	4850 4800 5150 4800
Wire Wire Line
	4850 4900 5150 4900
Text GLabel 5550 1850 0    50   Input ~ 0
RDY
Text GLabel 4700 1550 2    50   Output ~ 0
IO1
Text GLabel 4700 1950 2    50   Output ~ 0
IO2
Text GLabel 4700 2050 2    50   Output ~ 0
IO3
Text GLabel 5550 2050 0    50   Input ~ 0
IRQ1
Text GLabel 5550 2150 0    50   Input ~ 0
IRQ2
Text GLabel 5550 2250 0    50   Input ~ 0
IRQ3
Text GLabel 5550 2350 0    50   Input ~ 0
IRQ4
Text GLabel 6650 2250 2    50   Output ~ 0
IRQ
Entry Wire Line
	3350 1550 3250 1650
Entry Wire Line
	3350 1650 3250 1750
Text Label 3450 1650 2    50   ~ 0
a6
Text Label 3450 1750 2    50   ~ 0
a7
Entry Wire Line
	3350 1750 3250 1850
Text Label 3450 1850 2    50   ~ 0
a8
Entry Wire Line
	3350 1850 3250 1950
Text Label 3450 1950 2    50   ~ 0
a9
Entry Wire Line
	3350 2900 3250 3000
Text Label 3450 3000 2    50   ~ 0
a15
Connection ~ 3250 3250
$Comp
L power:VCC #PWR021
U 1 1 61DCAB39
P 6100 1100
AR Path="/61DCAB39" Ref="#PWR021"  Part="1" 
AR Path="/60CB2595/61DCAB39" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 6100 950 50  0001 C CNN
F 1 "VCC" H 6100 1250 50  0000 C CNN
F 2 "" H 6100 1100 50  0001 C CNN
F 3 "" H 6100 1100 50  0001 C CNN
	1    6100 1100
	1    0    0    -1  
$EndComp
Text GLabel 6650 1550 2    50   BiDi ~ 0
U6-21
Text GLabel 6650 1650 2    50   BiDi ~ 0
U6-20
Text GLabel 6650 1750 2    50   BiDi ~ 0
U6-19
Text GLabel 5550 1350 0    50   Input ~ 0
U6-1
$Comp
L 65xx:W65C22SxP U7
U 1 1 617FC12E
P 8000 4650
F 0 "U7" H 7650 5950 50  0000 C CNN
F 1 "W65C22SxP" H 8350 5950 50  0000 C CIB
F 2 "Package_DIP:DIP-40_W15.24mm" H 8000 4800 50  0001 C CNN
F 3 "http://www.westerndesigncenter.com/wdc/documentation/w65c22.pdf" H 8000 4800 50  0001 C CNN
	1    8000 4650
	1    0    0    -1  
$EndComp
Wire Bus Line
	3650 3250 5750 3250
$Comp
L power:GND #PWR026
U 1 1 6182EE7E
P 8000 6100
F 0 "#PWR026" H 8000 5850 50  0001 C CNN
F 1 "GND" V 8005 5972 50  0000 R CNN
F 2 "" H 8000 6100 50  0001 C CNN
F 3 "" H 8000 6100 50  0001 C CNN
	1    8000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR025
U 1 1 6182F4FE
P 8000 3200
F 0 "#PWR025" H 8000 3050 50  0001 C CNN
F 1 "VCC" H 8015 3373 50  0000 C CNN
F 2 "" H 8000 3200 50  0001 C CNN
F 3 "" H 8000 3200 50  0001 C CNN
	1    8000 3200
	1    0    0    -1  
$EndComp
Text GLabel 7400 3550 0    50   Input ~ 0
RST
Text GLabel 7400 3650 0    50   Input ~ 0
CLK
Text GLabel 7400 3850 0    50   Output ~ 0
IRQ1
Text GLabel 7400 4150 0    50   Input ~ 0
IO1
$Comp
L power:VCC #PWR024
U 1 1 618302F5
P 7400 4050
F 0 "#PWR024" H 7400 3900 50  0001 C CNN
F 1 "VCC" V 7415 4223 50  0000 C CNN
F 2 "" H 7400 4050 50  0001 C CNN
F 3 "" H 7400 4050 50  0001 C CNN
	1    7400 4050
	0    -1   -1   0   
$EndComp
Wire Bus Line
	5750 3250 7100 3250
Connection ~ 5750 3250
Entry Wire Line
	7200 4650 7100 4550
Entry Wire Line
	7200 4550 7100 4450
Entry Wire Line
	7200 4450 7100 4350
Entry Wire Line
	7200 4350 7100 4250
Text Label 7300 4350 2    50   ~ 0
a0
Text Label 7300 4450 2    50   ~ 0
a1
Text Label 7300 4550 2    50   ~ 0
a2
Text Label 7300 4650 2    50   ~ 0
a3
Wire Wire Line
	7200 4650 7400 4650
Wire Wire Line
	7200 4550 7400 4550
Wire Wire Line
	7200 4450 7400 4450
Wire Wire Line
	7200 4350 7400 4350
Text GLabel 7400 4850 0    50   Input ~ 0
RW
Entry Wire Line
	7050 5050 6950 5150
Entry Wire Line
	7050 5150 6950 5250
Entry Wire Line
	7050 5250 6950 5350
Entry Wire Line
	7050 5350 6950 5450
Entry Wire Line
	7050 5450 6950 5550
Text Label 7050 5050 0    50   ~ 0
d0
Text Label 7050 5150 0    50   ~ 0
d1
Text Label 7050 5250 0    50   ~ 0
d2
Text Label 7050 5350 0    50   ~ 0
d3
Text Label 7050 5450 0    50   ~ 0
d4
Text Label 7050 5550 0    50   ~ 0
d5
Text Label 7050 5650 0    50   ~ 0
d6
Text Label 7050 5750 0    50   ~ 0
d7
Entry Wire Line
	7050 5550 6950 5650
Entry Wire Line
	7050 5650 6950 5750
Entry Wire Line
	7050 5750 6950 5850
Wire Wire Line
	7050 5050 7400 5050
Wire Wire Line
	7050 5150 7400 5150
Wire Wire Line
	7050 5250 7400 5250
Wire Wire Line
	7050 5350 7400 5350
Wire Wire Line
	7050 5450 7400 5450
Wire Wire Line
	7050 5550 7400 5550
Wire Wire Line
	7050 5650 7400 5650
Wire Wire Line
	7050 5750 7400 5750
Text GLabel 1850 5350 0    50   Output ~ 0
SYNC
Text GLabel 1850 4350 0    50   Input ~ 0
NMI
Text GLabel 6650 1850 2    50   BiDi ~ 0
U6-18
Text GLabel 6650 1950 2    50   BiDi ~ 0
U6-17
Wire Wire Line
	3600 2250 3350 2250
Wire Wire Line
	3600 2150 3350 2150
Wire Wire Line
	3600 2050 3350 2050
Wire Wire Line
	3600 1950 3350 1950
Wire Wire Line
	3600 1850 3350 1850
Wire Wire Line
	3600 1750 3350 1750
Wire Wire Line
	3600 1650 3350 1650
Wire Wire Line
	3600 1550 3350 1550
Wire Wire Line
	3600 1450 3350 1450
$Comp
L power:VCC #PWR015
U 1 1 61AEF5CB
P 4150 1100
AR Path="/61AEF5CB" Ref="#PWR015"  Part="1" 
AR Path="/60CB2595/61AEF5CB" Ref="#PWR?"  Part="1" 
F 0 "#PWR015" H 4150 950 50  0001 C CNN
F 1 "VCC" H 4150 1250 50  0000 C CNN
F 2 "" H 4150 1100 50  0001 C CNN
F 3 "" H 4150 1100 50  0001 C CNN
	1    4150 1100
	1    0    0    -1  
$EndComp
Text GLabel 6650 2050 2    50   BiDi ~ 0
U6-16
$Comp
L Device:C C8
U 1 1 61CA5BA3
P 5700 7100
AR Path="/61CA5BA3" Ref="C8"  Part="1" 
AR Path="/60CB2595/61CA5BA3" Ref="C?"  Part="1" 
F 0 "C8" H 5815 7146 50  0000 L CNN
F 1 "0.1uF" H 5815 7055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5738 6950 50  0001 C CNN
F 3 "~" H 5700 7100 50  0001 C CNN
	1    5700 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 6950 5250 6950
Wire Wire Line
	5250 7250 5700 7250
$Comp
L Connector_Generic:Conn_01x40 J6
U 1 1 61CBE254
P 9800 4200
F 0 "J6" H 9880 4192 50  0000 L CNN
F 1 "IO" H 9880 4101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x40_P2.54mm_Vertical" H 9800 4200 50  0001 C CNN
F 3 "~" H 9800 4200 50  0001 C CNN
	1    9800 4200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x40 J7
U 1 1 61E03B88
P 10800 2700
F 0 "J7" H 10880 2692 50  0000 L CNN
F 1 "DEBUG" H 10880 2601 50  0000 L CNN
F 2 "Connector_IDC:IDC-Header_2x20_P2.54mm_Vertical" H 10800 2700 50  0001 C CNN
F 3 "~" H 10800 2700 50  0001 C CNN
	1    10800 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 61E04B0B
P 10600 800
F 0 "#PWR027" H 10600 650 50  0001 C CNN
F 1 "VCC" V 10615 973 50  0000 C CNN
F 2 "" H 10600 800 50  0001 C CNN
F 3 "" H 10600 800 50  0001 C CNN
	1    10600 800 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61E04F96
P 10600 900
F 0 "#PWR028" H 10600 650 50  0001 C CNN
F 1 "GND" V 10605 772 50  0000 R CNN
F 2 "" H 10600 900 50  0001 C CNN
F 3 "" H 10600 900 50  0001 C CNN
	1    10600 900 
	0    1    1    0   
$EndComp
Text GLabel 10600 1100 0    50   BiDi ~ 0
RST_I
Text GLabel 10600 1000 0    50   BiDi ~ 0
CLK
Text GLabel 10600 1500 0    50   Output ~ 0
RDY_I
Text GLabel 10600 1600 0    50   Output ~ 0
BE
Text GLabel 10600 1400 0    50   Input ~ 0
RW
Text GLabel 10600 1700 0    50   Output ~ 0
NMI
Text GLabel 8600 3550 2    50   BiDi ~ 0
PA0
Text GLabel 8600 3650 2    50   BiDi ~ 0
PA1
Text GLabel 8600 3750 2    50   BiDi ~ 0
PA2
Text GLabel 8600 3850 2    50   BiDi ~ 0
PA3
Text GLabel 8600 3950 2    50   BiDi ~ 0
PA4
Text GLabel 8600 4050 2    50   BiDi ~ 0
PA5
Text GLabel 8600 4150 2    50   BiDi ~ 0
PA6
Text GLabel 8600 4250 2    50   BiDi ~ 0
PA7
Text GLabel 8600 4450 2    50   BiDi ~ 0
CA1
Text GLabel 8600 4550 2    50   BiDi ~ 0
CA2
Text GLabel 8600 4750 2    50   BiDi ~ 0
PB0
Text GLabel 8600 4850 2    50   BiDi ~ 0
PB1
Text GLabel 8600 4950 2    50   BiDi ~ 0
PB2
Text GLabel 8600 5050 2    50   BiDi ~ 0
PB3
Text GLabel 8600 5150 2    50   BiDi ~ 0
PB4
Text GLabel 8600 5250 2    50   BiDi ~ 0
PB5
Text GLabel 8600 5350 2    50   BiDi ~ 0
PB6
Text GLabel 8600 5450 2    50   BiDi ~ 0
PB7
Text GLabel 8600 5650 2    50   BiDi ~ 0
CB1
Text GLabel 8600 5750 2    50   BiDi ~ 0
CB2
Wire Bus Line
	6950 6400 5050 6400
Connection ~ 6950 6400
Wire Bus Line
	5050 6400 3250 6400
Connection ~ 5050 6400
Text GLabel 9600 4300 0    50   BiDi ~ 0
PA0
Text GLabel 9600 4400 0    50   BiDi ~ 0
PA1
Text GLabel 9600 4500 0    50   BiDi ~ 0
PA2
Text GLabel 9600 4600 0    50   BiDi ~ 0
PA3
Text GLabel 9600 4700 0    50   BiDi ~ 0
PA4
Text GLabel 9600 4800 0    50   BiDi ~ 0
PA5
Text GLabel 9600 4900 0    50   BiDi ~ 0
PA6
Text GLabel 9600 5000 0    50   BiDi ~ 0
PA7
Text GLabel 9600 5100 0    50   BiDi ~ 0
CA1
Text GLabel 9600 5200 0    50   BiDi ~ 0
CA2
Text GLabel 9600 5300 0    50   BiDi ~ 0
PB0
Text GLabel 9600 5400 0    50   BiDi ~ 0
PB1
Text GLabel 9600 5500 0    50   BiDi ~ 0
PB2
Text GLabel 9600 5600 0    50   BiDi ~ 0
PB3
Text GLabel 9600 5700 0    50   BiDi ~ 0
PB4
Text GLabel 9600 5800 0    50   BiDi ~ 0
PB5
Text GLabel 9600 5900 0    50   BiDi ~ 0
PB6
Text GLabel 9600 6000 0    50   BiDi ~ 0
PB7
Text GLabel 9600 6100 0    50   BiDi ~ 0
CB1
Text GLabel 9600 6200 0    50   BiDi ~ 0
CB2
NoConn ~ 1850 3950
NoConn ~ 1850 3850
Text GLabel 9600 2300 0    50   Input ~ 0
SYNC
$Comp
L Connector:TestPoint_Small TP2
U 1 1 6257B5A2
P 1800 5550
F 0 "TP2" H 2100 5550 50  0000 R CNN
F 1 "~ML" H 1950 5550 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 2000 5550 50  0001 C CNN
F 3 "~" H 2000 5550 50  0001 C CNN
	1    1800 5550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Small TP3
U 1 1 6257EA82
P 1800 5450
F 0 "TP3" H 2100 5450 50  0000 R CNN
F 1 "~VP" H 1950 5450 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 2000 5450 50  0001 C CNN
F 3 "~" H 2000 5450 50  0001 C CNN
	1    1800 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 5450 1800 5450
Wire Wire Line
	1850 5550 1800 5550
$Comp
L Connector_Generic:Conn_01x10 J5
U 1 1 625DA52D
P 9800 1700
F 0 "J5" H 9880 1692 50  0000 L CNN
F 1 "IO" H 9880 1601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 9800 1700 50  0001 C CNN
F 3 "~" H 9800 1700 50  0001 C CNN
	1    9800 1700
	1    0    0    -1  
$EndComp
Connection ~ 5250 6950
Connection ~ 5250 7250
$Comp
L mainboard_v3:ATF22V10C U5
U 1 1 625ECC93
P 4150 1850
F 0 "U5" H 3800 2500 50  0000 C CNN
F 1 "ATF22V10C" H 4450 2500 50  0000 C CNN
F 2 "Socket:DIP_Socket-24_W4.3_W5.08_W7.62_W10.16_W10.9_3M_224-5248-00-0602J" H 4150 1850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/doc0735.pdf" H 4150 1850 50  0001 C CNN
	1    4150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2350 3350 2350
Wire Wire Line
	4700 2350 4750 2350
Text GLabel 6650 2350 2    50   Input ~ 0
OSC
Text GLabel 10600 1300 0    50   Output ~ 0
~READ
Text GLabel 10600 1200 0    50   Output ~ 0
~WRITE
$Comp
L power:GND #PWR020
U 1 1 62678553
P 4150 2600
AR Path="/62678553" Ref="#PWR020"  Part="1" 
AR Path="/60CB2595/62678553" Ref="#PWR?"  Part="1" 
F 0 "#PWR020" H 4150 2350 50  0001 C CNN
F 1 "GND" V 4155 2472 50  0000 R CNN
F 2 "" H 4150 2600 50  0001 C CNN
F 3 "" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
Text GLabel 4700 1650 2    50   BiDi ~ 0
U5-20
Text GLabel 4700 1750 2    50   BiDi ~ 0
U5-19
Text GLabel 4700 1850 2    50   BiDi ~ 0
U5-18
Wire Wire Line
	3350 2900 4750 2900
Wire Wire Line
	4750 2350 4750 2900
Wire Wire Line
	4800 3000 4800 2250
Wire Wire Line
	4800 2250 4700 2250
Wire Wire Line
	3350 3000 4800 3000
Text GLabel 3600 1350 0    50   Input ~ 0
U5-1
$Comp
L mainboard_v3:ATF22V10C U6
U 1 1 626D250F
P 6100 1850
F 0 "U6" H 5750 2500 50  0000 C CNN
F 1 "ATF22V10C" H 6400 2500 50  0000 C CNN
F 2 "Socket:DIP_Socket-24_W4.3_W5.08_W7.62_W10.16_W10.9_3M_224-5248-00-0602J" H 6100 1850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/doc0735.pdf" H 6100 1850 50  0001 C CNN
	1    6100 1850
	1    0    0    -1  
$EndComp
Text GLabel 6650 2150 2    50   Output ~ 0
CLK
$Comp
L power:GND #PWR022
U 1 1 6270EC7A
P 6100 2600
AR Path="/6270EC7A" Ref="#PWR022"  Part="1" 
AR Path="/60CB2595/6270EC7A" Ref="#PWR?"  Part="1" 
F 0 "#PWR022" H 6100 2350 50  0001 C CNN
F 1 "GND" V 6105 2472 50  0000 R CNN
F 2 "" H 6100 2600 50  0001 C CNN
F 3 "" H 6100 2600 50  0001 C CNN
	1    6100 2600
	1    0    0    -1  
$EndComp
Text GLabel 7950 1100 0    50   Input ~ 0
U5-1
Text GLabel 7950 1200 0    50   BiDi ~ 0
U5-20
Text GLabel 7950 1300 0    50   BiDi ~ 0
U5-19
Text GLabel 7950 1400 0    50   BiDi ~ 0
U5-18
Text GLabel 7950 1500 0    50   Input ~ 0
U6-1
Text GLabel 7950 1700 0    50   Input ~ 0
U6-3
Text GLabel 7950 1800 0    50   BiDi ~ 0
U6-21
Text GLabel 7950 1900 0    50   BiDi ~ 0
U6-20
Text GLabel 7950 2000 0    50   BiDi ~ 0
U6-19
Text GLabel 7950 2100 0    50   BiDi ~ 0
U6-18
Text GLabel 7950 2200 0    50   BiDi ~ 0
U6-17
Text GLabel 7950 1800 0    50   BiDi ~ 0
U6-21
Text GLabel 10600 4600 0    50   BiDi ~ 0
U6-16
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 62761C0C
P 1100 1200
F 0 "TP1" V 1108 1352 50  0000 L CNN
F 1 "GND" V 1199 1352 50  0000 L CNN
F 2 "TestPoint:TestPoint_Loop_D2.60mm_Drill1.6mm_Beaded" H 1300 1200 50  0001 C CNN
F 3 "~" H 1300 1200 50  0001 C CNN
	1    1100 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1100 1100 1200
Connection ~ 1100 1100
Wire Wire Line
	1100 1100 850  1100
Text GLabel 10600 4500 0    50   Input ~ 0
U6-3
Text GLabel 10600 4700 0    50   BiDi ~ 0
U6-17
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 627BF23D
P 8150 1400
F 0 "J3" H 8230 1392 50  0000 L CNN
F 1 "PLD" H 8230 1301 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 8150 1400 50  0001 C CNN
F 3 "~" H 8150 1400 50  0001 C CNN
	1    8150 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 62A35B93
P 1950 850
F 0 "D1" V 1996 780 50  0000 R CNN
F 1 "POWER" V 1905 780 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" V 1950 850 50  0001 C CNN
F 3 "~" V 1950 850 50  0001 C CNN
	1    1950 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 62A37692
P 1950 750
F 0 "#PWR023" H 1950 600 50  0001 C CNN
F 1 "VCC" H 1965 923 50  0000 C CNN
F 2 "" H 1950 750 50  0001 C CNN
F 3 "" H 1950 750 50  0001 C CNN
	1    1950 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 62A37BD2
P 1950 1250
F 0 "#PWR029" H 1950 1000 50  0001 C CNN
F 1 "GND" V 1955 1122 50  0000 R CNN
F 2 "" H 1950 1250 50  0001 C CNN
F 3 "" H 1950 1250 50  0001 C CNN
	1    1950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2050 1550 2250
Wire Wire Line
	1850 4950 1800 4950
Text GLabel 1350 4950 2    50   Input ~ 0
RDY
$Comp
L Device:Fuse_Small F1
U 1 1 62BB817A
P 1100 1000
F 0 "F1" H 1100 1185 50  0000 C CNN
F 1 "500mA" H 1100 1094 50  0000 C CNN
F 2 "Fuse:Fuse_Littelfuse_372_D8.50mm" H 1100 1000 50  0001 C CNN
F 3 "~" H 1100 1000 50  0001 C CNN
	1    1100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1100 1200 1100
Wire Bus Line
	6950 6400 9200 6400
Wire Bus Line
	3250 650  9200 650 
Connection ~ 9200 650 
Wire Bus Line
	9200 650  10200 650 
Connection ~ 9200 6400
Wire Bus Line
	9200 6400 10200 6400
$Comp
L Connector:TestPoint_Small TP4
U 1 1 61A00E6B
P 1800 5900
F 0 "TP4" V 1900 6050 50  0000 R CNN
F 1 "~SO" V 1900 5900 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 2000 5900 50  0001 C CNN
F 3 "~" H 2000 5900 50  0001 C CNN
	1    1800 5900
	0    -1   1    0   
$EndComp
Wire Wire Line
	1750 5850 1800 5850
Wire Wire Line
	1800 5850 1800 5900
Wire Wire Line
	1850 5850 1800 5850
Connection ~ 1800 5850
Text GLabel 10600 1900 0    39   Output ~ 0
ROM_~WE
Wire Wire Line
	1550 2050 1850 2050
$Comp
L power:VCC #PWR06
U 1 1 61567ED9
P 2650 750
F 0 "#PWR06" H 2650 600 50  0001 C CNN
F 1 "VCC" H 2665 923 50  0000 C CNN
F 2 "" H 2650 750 50  0001 C CNN
F 3 "" H 2650 750 50  0001 C CNN
	1    2650 750 
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ACO-xxxMHz X1
U 1 1 612F439F
P 2650 1050
F 0 "X1" H 2500 1300 50  0000 R CNN
F 1 "4Mhz" H 2900 1300 50  0000 R CNN
F 2 "Oscillator:Oscillator_DIP-14" H 3100 700 50  0001 C CNN
F 3 "http://www.conwin.com/datasheets/cx/cx030.pdf" H 2550 1050 50  0001 C CNN
	1    2650 1050
	1    0    0    -1  
$EndComp
Text GLabel 3000 1050 2    50   Output ~ 0
OSC
Wire Wire Line
	2950 1050 3000 1050
$Comp
L power:GND #PWR07
U 1 1 6176203E
P 2650 1350
F 0 "#PWR07" H 2650 1100 50  0001 C CNN
F 1 "GND" V 2655 1222 50  0000 R CNN
F 2 "" H 2650 1350 50  0001 C CNN
F 3 "" H 2650 1350 50  0001 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
Text GLabel 5550 1650 0    50   Input ~ 0
OSC_EN
Text GLabel 7950 2300 0    50   BiDi ~ 0
U6-16
Wire Wire Line
	10300 3500 10600 3500
Text Label 10400 3500 2    50   ~ 0
a15
Entry Wire Line
	10300 3500 10200 3400
Wire Wire Line
	10300 2000 10600 2000
Wire Wire Line
	10300 2100 10600 2100
Wire Wire Line
	10300 2200 10600 2200
Wire Wire Line
	10300 2300 10600 2300
Wire Wire Line
	10300 2400 10600 2400
Wire Wire Line
	10300 2500 10600 2500
Wire Wire Line
	10300 2600 10600 2600
Wire Wire Line
	10300 2700 10600 2700
Wire Wire Line
	10300 2800 10600 2800
Wire Wire Line
	10300 2900 10600 2900
Wire Wire Line
	10300 3000 10600 3000
Wire Wire Line
	10300 3100 10600 3100
Wire Wire Line
	10300 3200 10600 3200
Wire Wire Line
	10300 3300 10600 3300
Wire Wire Line
	10300 3400 10600 3400
Text Label 10400 3400 2    50   ~ 0
a14
Text Label 10400 3300 2    50   ~ 0
a13
Text Label 10400 3200 2    50   ~ 0
a12
Text Label 10400 3100 2    50   ~ 0
a11
Text Label 10400 3000 2    50   ~ 0
a10
Text Label 10400 2900 2    50   ~ 0
a9
Text Label 10400 2800 2    50   ~ 0
a8
Text Label 10400 2700 2    50   ~ 0
a7
Text Label 10400 2600 2    50   ~ 0
a6
Text Label 10400 2500 2    50   ~ 0
a5
Text Label 10400 2400 2    50   ~ 0
a4
Text Label 10400 2300 2    50   ~ 0
a3
Text Label 10400 2200 2    50   ~ 0
a2
Text Label 10400 2100 2    50   ~ 0
a1
Text Label 10400 2000 2    50   ~ 0
a0
Entry Wire Line
	10300 2000 10200 1900
Entry Wire Line
	10300 2100 10200 2000
Entry Wire Line
	10300 2200 10200 2100
Entry Wire Line
	10300 2300 10200 2200
Entry Wire Line
	10300 2400 10200 2300
Entry Wire Line
	10300 2500 10200 2400
Entry Wire Line
	10300 2600 10200 2500
Entry Wire Line
	10300 2700 10200 2600
Entry Wire Line
	10300 2800 10200 2700
Entry Wire Line
	10300 2900 10200 2800
Entry Wire Line
	10300 3000 10200 2900
Entry Wire Line
	10300 3100 10200 3000
Entry Wire Line
	10300 3200 10200 3100
Entry Wire Line
	10300 3300 10200 3200
Entry Wire Line
	10300 3400 10200 3300
Wire Wire Line
	10300 4300 10600 4300
Wire Wire Line
	10300 4200 10600 4200
Wire Wire Line
	10300 4100 10600 4100
Wire Wire Line
	10300 4000 10600 4000
Wire Wire Line
	10300 3900 10600 3900
Wire Wire Line
	10300 3800 10600 3800
Wire Wire Line
	10300 3700 10600 3700
Wire Wire Line
	10300 3600 10600 3600
Entry Wire Line
	10300 4300 10200 4400
Entry Wire Line
	10300 4200 10200 4300
Entry Wire Line
	10300 4100 10200 4200
Text Label 10300 4300 0    50   ~ 0
d7
Text Label 10300 4200 0    50   ~ 0
d6
Text Label 10300 4100 0    50   ~ 0
d5
Text Label 10300 4000 0    50   ~ 0
d4
Text Label 10300 3900 0    50   ~ 0
d3
Text Label 10300 3800 0    50   ~ 0
d2
Text Label 10300 3700 0    50   ~ 0
d1
Text Label 10300 3600 0    50   ~ 0
d0
Entry Wire Line
	10300 4000 10200 4100
Entry Wire Line
	10300 3900 10200 4000
Entry Wire Line
	10300 3800 10200 3900
Entry Wire Line
	10300 3700 10200 3800
Entry Wire Line
	10300 3600 10200 3700
Text GLabel 10600 4400 0    50   Output ~ 0
OSC_EN
Text GLabel 1750 5850 0    50   Output ~ 0
~SO
$Comp
L power:VCC #PWR030
U 1 1 61D7DCB0
P 1550 1700
F 0 "#PWR030" H 1550 1550 50  0001 C CNN
F 1 "VCC" H 1565 1873 50  0000 C CNN
F 2 "" H 1550 1700 50  0001 C CNN
F 3 "" H 1550 1700 50  0001 C CNN
	1    1550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2050 1550 2000
Connection ~ 1550 2050
$Comp
L power:VCC #PWR014
U 1 1 61EA69D7
P 1200 4600
F 0 "#PWR014" H 1200 4450 50  0001 C CNN
F 1 "VCC" H 1215 4773 50  0000 C CNN
F 2 "" H 1200 4600 50  0001 C CNN
F 3 "" H 1200 4600 50  0001 C CNN
	1    1200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4950 1200 4950
Wire Wire Line
	1200 4900 1200 4950
Connection ~ 1200 4950
Wire Wire Line
	1200 4950 1350 4950
Text GLabel 5550 1550 0    50   Input ~ 0
U6-3
$Comp
L Device:R_Pack03_SIP_Split RN2
U 3 1 61E42176
P 1550 1850
F 0 "RN2" H 1480 1804 50  0000 R CNN
F 1 "1k" H 1480 1895 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP6" V 1470 1850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1550 1850 50  0001 C CNN
	3    1550 1850
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Pack03_SIP_Split RN2
U 1 1 619DF703
P 1950 1100
F 0 "RN2" H 1880 1054 50  0000 R CNN
F 1 "1k" H 1880 1145 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP6" V 1870 1100 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1950 1100 50  0001 C CNN
	1    1950 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Pack03_SIP_Split RN2
U 2 1 61EA616F
P 1200 4750
F 0 "RN2" H 1130 4704 50  0000 R CNN
F 1 "1k" H 1130 4795 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP6" V 1120 4750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1200 4750 50  0001 C CNN
	2    1200 4750
	-1   0    0    -1  
$EndComp
Text GLabel 5550 1450 0    50   Input ~ 0
U6-2
Text GLabel 7950 1600 0    50   Input ~ 0
U6-2
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 61FC4886
P 8150 2100
F 0 "J4" H 8230 2142 50  0000 L CNN
F 1 "PLD" H 8230 2051 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8150 2100 50  0001 C CNN
F 3 "~" H 8150 2100 50  0001 C CNN
	1    8150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2050 2200 2050
Text GLabel 2200 2050 2    50   BiDi ~ 0
RST_I
$Comp
L Diode:1N5817 D3
U 1 1 61D7CF1D
P 2000 2050
F 0 "D3" H 2000 1833 50  0000 C CNN
F 1 "1N5817" H 2000 1924 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2000 1875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 2000 2050 50  0001 C CNN
	1    2000 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  4950 850  4950
Text GLabel 800  4950 0    50   Input ~ 0
RDY_I
$Comp
L Diode:1N5817 D2
U 1 1 61E84A57
P 1000 4950
F 0 "D2" H 1000 4733 50  0000 C CNN
F 1 "1N5817" H 1000 4824 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 1000 4775 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 1000 4950 50  0001 C CNN
	1    1000 4950
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 619253D3
P 550 3150
F 0 "#PWR05" H 550 3000 50  0001 C CNN
F 1 "VCC" H 565 3323 50  0000 C CNN
F 2 "" H 550 3150 50  0001 C CNN
F 3 "" H 550 3150 50  0001 C CNN
	1    550  3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  3200 550  3200
Wire Wire Line
	550  3200 550  3150
Text GLabel 1050 3200 2    50   Input ~ 0
NMI
Text GLabel 1050 3300 2    50   Output ~ 0
RW
Text GLabel 1050 3400 2    50   Input ~ 0
BE
Text GLabel 1050 3500 2    50   Input ~ 0
ROM_~WE
Text GLabel 1050 3600 2    50   Input ~ 0
IRQ2
Text GLabel 1050 3700 2    50   Input ~ 0
IRQ3
Text GLabel 1050 3800 2    50   Input ~ 0
IRQ4
Text GLabel 1050 3900 2    50   Input ~ 0
~WRITE
Text GLabel 1050 4000 2    50   Input ~ 0
~READ
Text GLabel 1050 4100 2    50   Input ~ 0
OSC_EN
Text GLabel 1050 4200 2    50   Input ~ 0
~SO
$Comp
L Device:R_Network11 RN1
U 1 1 61EFB7F9
P 850 3700
F 0 "RN1" V 133 3700 50  0000 C CNN
F 1 "10k" V 224 3700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP12" V 1525 3700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 850 3700 50  0001 C CNN
	1    850  3700
	0    -1   1    0   
$EndComp
Wire Bus Line
	7100 3250 7100 4550
Wire Bus Line
	9200 650  9200 2700
Wire Bus Line
	9200 3000 9200 6400
Wire Bus Line
	5050 3800 5050 6400
Wire Bus Line
	3250 5250 3250 6400
Wire Bus Line
	10200 3700 10200 6400
Wire Bus Line
	3650 3250 3650 5000
Wire Bus Line
	5750 3250 5750 5000
Wire Bus Line
	3250 650  3250 3250
Wire Bus Line
	3250 3250 3250 4850
Wire Bus Line
	6950 3800 6950 6400
Wire Bus Line
	10200 650  10200 3400
$EndSCHEMATC
