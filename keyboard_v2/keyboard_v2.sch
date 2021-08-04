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
L AK's_Library:Mini-DIN-6 J1
U 1 1 60A3F33E
P 1700 1800
F 0 "J1" H 1700 2167 50  0000 C CNN
F 1 "Mini-DIN-6" H 1700 2076 50  0000 C CNN
F 2 "AK's_Footprints:Mini_din6" H 1700 1800 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Text GLabel 2300 1900 2    50   Output ~ 0
KBD_DATA
Text GLabel 2300 1700 2    50   Output ~ 0
KBD_CLK
$Comp
L power:GND #PWR02
U 1 1 60A436E9
P 2000 1800
F 0 "#PWR02" H 2000 1550 50  0001 C CNN
F 1 "GND" V 2005 1672 50  0000 R CNN
F 2 "" H 2000 1800 50  0001 C CNN
F 3 "" H 2000 1800 50  0001 C CNN
	1    2000 1800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 60A4439D
P 1400 1800
F 0 "#PWR01" H 1400 1650 50  0001 C CNN
F 1 "VCC" V 1415 1927 50  0000 L CNN
F 2 "" H 1400 1800 50  0001 C CNN
F 3 "" H 1400 1800 50  0001 C CNN
	1    1400 1800
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 1700
NoConn ~ 1400 1900
$Comp
L 74xx:74HC595 U1
U 1 1 60A44DF4
P 3200 3300
F 0 "U1" H 2950 3850 50  0000 C CNN
F 1 "74HC595" H 3450 3850 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3200 3300 50  0001 C CNN
F 3 "" H 3200 3300 50  0001 C CNN
	1    3200 3300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 60A45B36
P 3200 5100
F 0 "U2" H 2950 5650 50  0000 C CNN
F 1 "74HC595" H 3450 5650 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 3200 5100 50  0001 C CNN
F 3 "" H 3200 5100 50  0001 C CNN
	1    3200 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 60A484EF
P 3200 4500
F 0 "#PWR05" H 3200 4350 50  0001 C CNN
F 1 "VCC" H 3215 4673 50  0000 C CNN
F 2 "" H 3200 4500 50  0001 C CNN
F 3 "" H 3200 4500 50  0001 C CNN
	1    3200 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60A48CA1
P 3200 4000
F 0 "#PWR04" H 3200 3750 50  0001 C CNN
F 1 "GND" H 3205 3827 50  0000 C CNN
F 2 "" H 3200 4000 50  0001 C CNN
F 3 "" H 3200 4000 50  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60A49408
P 3200 5800
F 0 "#PWR06" H 3200 5550 50  0001 C CNN
F 1 "GND" H 3205 5627 50  0000 C CNN
F 2 "" H 3200 5800 50  0001 C CNN
F 3 "" H 3200 5800 50  0001 C CNN
	1    3200 5800
	1    0    0    -1  
$EndComp
Text GLabel 2800 2900 0    50   Input ~ 0
KBD_DATA
Wire Wire Line
	2800 3100 2650 3100
Wire Wire Line
	2650 3100 2650 4900
Wire Wire Line
	2650 4900 2800 4900
Wire Wire Line
	2800 3200 2550 3200
Wire Wire Line
	2550 3200 2550 3700
Wire Wire Line
	2550 5000 2800 5000
Wire Wire Line
	2800 3400 2450 3400
Wire Wire Line
	2450 3400 2450 5200
Wire Wire Line
	2450 5200 2800 5200
Wire Wire Line
	2800 3500 2350 3500
Wire Wire Line
	2350 3500 2350 3700
Wire Wire Line
	2350 5300 2800 5300
Wire Wire Line
	3600 3800 3600 4250
Wire Wire Line
	3600 4250 2700 4250
Wire Wire Line
	2700 4250 2700 4700
Wire Wire Line
	2700 4700 2800 4700
Wire Wire Line
	3600 4700 3750 4700
Text Label 3650 4700 0    50   ~ 0
D1
Wire Wire Line
	3600 4800 3750 4800
Text Label 3650 4800 0    50   ~ 0
D0
Wire Wire Line
	3600 4900 3750 4900
Text Label 3650 4900 0    50   ~ 0
DS
NoConn ~ 3600 5000
NoConn ~ 3600 5100
NoConn ~ 3600 5200
NoConn ~ 3600 5300
NoConn ~ 3600 5400
Entry Wire Line
	3750 4700 3850 4800
Entry Wire Line
	3750 4800 3850 4900
Entry Wire Line
	3750 4900 3850 5000
Text GLabel 4050 1700 0    50   Input ~ 0
KBD_CLK
Text GLabel 5000 1700 2    50   Output ~ 0
~KBD_CLK
Text GLabel 2650 3100 0    50   Input ~ 0
~KBD_CLK
$Comp
L 74xx:74LS08 U4
U 4 1 60A5B7DA
P 5300 1350
F 0 "U4" H 5300 1675 50  0000 C CNN
F 1 "74HC08" H 5300 1584 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5300 1350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5300 1350 50  0001 C CNN
	4    5300 1350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U4
U 3 1 60A5D68E
P 5900 1250
F 0 "U4" H 5900 1575 50  0000 C CNN
F 1 "74HC08" H 5900 1484 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5900 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5900 1250 50  0001 C CNN
	3    5900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1450 5000 1450
Wire Wire Line
	4900 1700 4900 1450
Wire Wire Line
	4900 1700 5000 1700
Connection ~ 4900 1700
$Comp
L power:VCC #PWR09
U 1 1 60A65D07
P 5000 1250
F 0 "#PWR09" H 5000 1100 50  0001 C CNN
F 1 "VCC" H 5015 1423 50  0000 C CNN
F 2 "" H 5000 1250 50  0001 C CNN
F 3 "" H 5000 1250 50  0001 C CNN
	1    5000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR010
U 1 1 60A662F7
P 5600 1150
F 0 "#PWR010" H 5600 1000 50  0001 C CNN
F 1 "VCC" H 5615 1323 50  0000 C CNN
F 2 "" H 5600 1150 50  0001 C CNN
F 3 "" H 5600 1150 50  0001 C CNN
	1    5600 1150
	1    0    0    -1  
$EndComp
Text GLabel 6200 1250 2    50   Output ~ 0
~LATCH_CLK
Text GLabel 2450 3400 0    50   Input ~ 0
~LATCH_CLK
Text GLabel 7050 3200 0    50   Output ~ 0
BUS_ENABLE
Text GLabel 8050 1250 0    50   Input ~ 0
BUS_ENABLE
Text GLabel 2300 3700 0    50   Input ~ 0
~REG_OE
Text GLabel 8800 1250 2    50   Output ~ 0
~REG_OE
Wire Wire Line
	6900 3300 7050 3300
Text Label 6900 3300 0    50   ~ 0
D7
Wire Wire Line
	6900 3400 7050 3400
Text Label 6900 3400 0    50   ~ 0
D6
Wire Wire Line
	6900 3500 7050 3500
Text Label 6900 3500 0    50   ~ 0
D5
Wire Wire Line
	6900 3600 7050 3600
Text Label 6900 3600 0    50   ~ 0
D4
Wire Wire Line
	6900 3700 7050 3700
Text Label 6900 3700 0    50   ~ 0
D3
Wire Wire Line
	6900 3800 7050 3800
Text Label 6900 3800 0    50   ~ 0
D2
Wire Wire Line
	6900 3900 7050 3900
Text Label 6900 3900 0    50   ~ 0
D1
Wire Wire Line
	6900 4000 7050 4000
Text Label 6900 4000 0    50   ~ 0
D0
Entry Wire Line
	6800 3400 6900 3300
Entry Wire Line
	6800 3500 6900 3400
Entry Wire Line
	6800 3600 6900 3500
Entry Wire Line
	6800 3700 6900 3600
Entry Wire Line
	6800 3800 6900 3700
Entry Wire Line
	6800 3900 6900 3800
Entry Wire Line
	6800 4000 6900 3900
Entry Wire Line
	6800 4100 6900 4000
$Comp
L 74xx:74HC14 U5
U 5 1 60A66CAA
P 8500 1250
F 0 "U5" H 8500 1567 50  0000 C CNN
F 1 "74HC14" H 8500 1476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8500 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8500 1250 50  0001 C CNN
	5    8500 1250
	1    0    0    -1  
$EndComp
Entry Wire Line
	3750 3600 3850 3700
Entry Wire Line
	3750 3500 3850 3600
Entry Wire Line
	3750 3400 3850 3500
Entry Wire Line
	3750 3300 3850 3400
Entry Wire Line
	3750 3200 3850 3300
Entry Wire Line
	3750 3100 3850 3200
Entry Wire Line
	3750 3000 3850 3100
Entry Wire Line
	3750 2900 3850 3000
Text Label 3650 3600 0    50   ~ 0
D2
Wire Wire Line
	3600 3600 3750 3600
Text Label 3650 3500 0    50   ~ 0
D3
Wire Wire Line
	3600 3500 3750 3500
Text Label 3650 3400 0    50   ~ 0
D4
Wire Wire Line
	3600 3400 3750 3400
Text Label 3650 3300 0    50   ~ 0
D5
Wire Wire Line
	3600 3300 3750 3300
Text Label 3650 3200 0    50   ~ 0
D6
Wire Wire Line
	3600 3200 3750 3200
Text Label 3650 3100 0    50   ~ 0
D7
Wire Wire Line
	3600 3100 3750 3100
Text Label 3650 3000 0    50   ~ 0
DP
Wire Wire Line
	3600 3000 3750 3000
Text Label 3650 2900 0    50   ~ 0
DE
Wire Wire Line
	3600 2900 3750 2900
Entry Wire Line
	6600 5250 6500 5150
Text Label 6700 5250 2    50   ~ 0
DS
$Comp
L 74xx:74HC14 U5
U 1 1 60AC514F
P 7150 5250
F 0 "U5" H 7150 5567 50  0000 C CNN
F 1 "74HC14" H 7150 5476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7150 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7150 5250 50  0001 C CNN
	1    7150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 5250 6850 5250
Text Label 6900 4800 0    50   ~ 0
DE
Entry Wire Line
	6800 4900 6900 4800
$Comp
L 74xx:74LS08 U4
U 1 1 60ACA5F3
P 7750 5150
F 0 "U4" H 7750 5475 50  0000 C CNN
F 1 "74HC08" H 7750 5384 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 7750 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4800 7450 5050
Wire Wire Line
	6900 4800 7450 4800
$Comp
L 74xx:74LS08 U4
U 2 1 60ACF9F8
P 8450 5650
F 0 "U4" H 8450 5975 50  0000 C CNN
F 1 "74HC08" H 8450 5884 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 8450 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 8450 5650 50  0001 C CNN
	2    8450 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 6150 7300 5750
Wire Wire Line
	7300 5750 8150 5750
Wire Wire Line
	8150 5550 8050 5550
Wire Wire Line
	8050 5550 8050 5150
Text GLabel 8750 5650 2    50   Output ~ 0
VALID_PACKET
Text GLabel 7050 3100 0    50   Input ~ 0
VALID_PACKET
Wire Wire Line
	4050 1700 4200 1700
Wire Wire Line
	4200 1700 4200 2250
Wire Wire Line
	4200 2250 4300 2250
Connection ~ 4200 1700
Wire Wire Line
	4200 1700 4300 1700
$Comp
L 74xx:74HC14 U5
U 2 1 60AE30A3
P 4600 2250
F 0 "U5" H 4600 2567 50  0000 C CNN
F 1 "74HC14" H 4600 2476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4600 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4600 2250 50  0001 C CNN
	2    4600 2250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5817 D1
U 1 1 60AE5332
P 5150 2250
F 0 "D1" H 5150 2033 50  0000 C CNN
F 1 "1N5817" H 5150 2124 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 5150 2075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88525/1n5817.pdf" H 5150 2250 50  0001 C CNN
	1    5150 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 60AE62AC
P 5150 2450
F 0 "R1" V 5050 2450 50  0000 C CNN
F 1 "22k" V 5150 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5080 2450 50  0001 C CNN
F 3 "~" H 5150 2450 50  0001 C CNN
	1    5150 2450
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC14 U5
U 3 1 60AEA9C9
P 5700 2250
F 0 "U5" H 5700 2567 50  0000 C CNN
F 1 "74HC14" H 5700 2476 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5700 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5700 2250 50  0001 C CNN
	3    5700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60AEC9A3
P 5350 2650
F 0 "C1" H 5465 2696 50  0000 L CNN
F 1 "10nF" H 5465 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5388 2500 50  0001 C CNN
F 3 "~" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2250 4950 2250
Wire Wire Line
	4950 2250 4950 2450
Wire Wire Line
	4950 2450 5000 2450
Connection ~ 4950 2250
Wire Wire Line
	4950 2250 5000 2250
Wire Wire Line
	5300 2250 5350 2250
Wire Wire Line
	5350 2250 5350 2450
Connection ~ 5350 2250
Wire Wire Line
	5350 2250 5400 2250
Wire Wire Line
	5300 2450 5350 2450
Connection ~ 5350 2450
Wire Wire Line
	5350 2450 5350 2500
$Comp
L power:GND #PWR011
U 1 1 60B02B46
P 5350 2800
F 0 "#PWR011" H 5350 2550 50  0001 C CNN
F 1 "GND" H 5355 2627 50  0000 C CNN
F 2 "" H 5350 2800 50  0001 C CNN
F 3 "" H 5350 2800 50  0001 C CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
Text GLabel 6000 2250 2    50   Output ~ 0
IRQ
Text GLabel 7050 3000 0    50   Input ~ 0
IRQ
Connection ~ 4900 5150
Wire Bus Line
	3850 5150 4900 5150
Entry Wire Line
	5000 5950 4900 5850
Entry Wire Line
	5000 6050 4900 5950
Entry Wire Line
	5000 6150 4900 6050
Entry Wire Line
	5000 6250 4900 6150
Entry Wire Line
	5000 6350 4900 6250
Entry Wire Line
	5000 6450 4900 6350
Entry Wire Line
	5900 5250 5800 5150
Text Label 5100 5950 2    50   ~ 0
D2
Wire Wire Line
	5150 5950 5000 5950
Text Label 5100 6050 2    50   ~ 0
D3
Wire Wire Line
	5150 6050 5000 6050
Text Label 5100 6150 2    50   ~ 0
D4
Wire Wire Line
	5150 6150 5000 6150
Text Label 5100 6250 2    50   ~ 0
D5
Wire Wire Line
	5150 6250 5000 6250
Text Label 5100 6350 2    50   ~ 0
D6
Wire Wire Line
	5150 6350 5000 6350
Text Label 5100 6450 2    50   ~ 0
D7
Wire Wire Line
	5150 6450 5000 6450
Text Label 6000 5250 2    50   ~ 0
DP
Wire Wire Line
	6050 5250 5900 5250
Wire Wire Line
	5150 5850 5000 5850
Text Label 5100 5850 2    50   ~ 0
D1
Wire Wire Line
	5150 5750 5000 5750
Text Label 5100 5750 2    50   ~ 0
D0
Entry Wire Line
	5000 5850 4900 5750
Entry Wire Line
	5000 5750 4900 5650
Wire Wire Line
	6050 5250 6050 5850
$Comp
L 74xx:74HC14 U5
U 4 1 60AA0467
P 6300 5600
F 0 "U5" V 6254 5780 50  0000 L CNN
F 1 "74HC14" V 6345 5780 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6300 5600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 6300 5600 50  0001 C CNN
	4    6300 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 5250 6300 5250
Wire Wire Line
	6300 5250 6300 5300
Connection ~ 6050 5250
Wire Wire Line
	6300 5900 6300 5950
Wire Wire Line
	5950 6250 6050 6250
NoConn ~ 6050 6250
$Comp
L AK's_Library:74HC180 U3
U 1 1 60AB3FB5
P 5550 6100
F 0 "U3" H 5300 6650 50  0000 C CNN
F 1 "74HC180" H 5800 6650 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5550 6100 50  0001 C CNN
F 3 "" H 5550 6100 50  0001 C CNN
	1    5550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5850 5950 5850
Wire Wire Line
	5950 5950 6300 5950
$Comp
L power:VCC #PWR07
U 1 1 60AC03F3
P 5550 5500
F 0 "#PWR07" H 5550 5350 50  0001 C CNN
F 1 "VCC" H 5565 5673 50  0000 C CNN
F 2 "" H 5550 5500 50  0001 C CNN
F 3 "" H 5550 5500 50  0001 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60AC0B91
P 5550 6700
F 0 "#PWR08" H 5550 6450 50  0001 C CNN
F 1 "GND" H 5555 6527 50  0000 C CNN
F 2 "" H 5550 6700 50  0001 C CNN
F 3 "" H 5550 6700 50  0001 C CNN
	1    5550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6150 7300 6150
NoConn ~ 3600 5600
Wire Wire Line
	2300 3700 2350 3700
Connection ~ 2350 3700
Wire Wire Line
	2350 3700 2350 5300
Wire Wire Line
	2350 3700 2550 3700
Connection ~ 2550 3700
Wire Wire Line
	2550 3700 2550 5000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60B32EBC
P 7050 2800
F 0 "#FLG01" H 7050 2875 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 2973 50  0000 C CNN
F 2 "" H 7050 2800 50  0001 C CNN
F 3 "~" H 7050 2800 50  0001 C CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 60A47B03
P 3200 2700
F 0 "#PWR03" H 3200 2550 50  0001 C CNN
F 1 "VCC" H 3215 2873 50  0000 C CNN
F 2 "" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x13 J2
U 1 1 60B384BE
P 7250 3400
F 0 "J2" H 7330 3442 50  0000 L CNN
F 1 "Conn_01x13" H 7330 3351 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 7250 3400 50  0001 C CNN
F 3 "~" H 7250 3400 50  0001 C CNN
	1    7250 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60B38E0C
P 6800 2900
F 0 "#PWR013" H 6800 2650 50  0001 C CNN
F 1 "GND" V 6805 2772 50  0000 R CNN
F 2 "" H 6800 2900 50  0001 C CNN
F 3 "" H 6800 2900 50  0001 C CNN
	1    6800 2900
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 60B398E0
P 7050 2800
F 0 "#PWR012" H 7050 2650 50  0001 C CNN
F 1 "VCC" V 7065 2927 50  0000 L CNN
F 2 "" H 7050 2800 50  0001 C CNN
F 3 "" H 7050 2800 50  0001 C CNN
	1    7050 2800
	0    -1   -1   0   
$EndComp
Connection ~ 7050 2800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60B3B316
P 6800 2900
F 0 "#FLG0101" H 6800 2975 50  0001 C CNN
F 1 "PWR_FLAG" H 7050 3000 50  0000 C CNN
F 2 "" H 6800 2900 50  0001 C CNN
F 3 "~" H 6800 2900 50  0001 C CNN
	1    6800 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 2900 7050 2900
Connection ~ 6800 2900
Wire Wire Line
	2000 1700 2150 1700
Wire Wire Line
	2150 1700 2150 1600
Connection ~ 2150 1700
Wire Wire Line
	2150 1700 2300 1700
$Comp
L Device:R R2
U 1 1 60B61B98
P 2150 1450
F 0 "R2" H 2050 1450 50  0000 C CNN
F 1 "10k" V 2150 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2080 1450 50  0001 C CNN
F 3 "~" H 2150 1450 50  0001 C CNN
	1    2150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60B63208
P 2250 1450
F 0 "R3" H 2350 1450 50  0000 C CNN
F 1 "10k" V 2250 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2180 1450 50  0001 C CNN
F 3 "~" H 2250 1450 50  0001 C CNN
	1    2250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1900 2250 1600
Wire Wire Line
	2000 1900 2250 1900
Connection ~ 2250 1900
Wire Wire Line
	2250 1900 2300 1900
$Comp
L power:VCC #PWR0101
U 1 1 60B706EB
P 2200 1250
F 0 "#PWR0101" H 2200 1100 50  0001 C CNN
F 1 "VCC" H 2215 1423 50  0000 C CNN
F 2 "" H 2200 1250 50  0001 C CNN
F 3 "" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1300 2150 1250
Wire Wire Line
	2150 1250 2200 1250
Wire Wire Line
	2250 1250 2250 1300
Connection ~ 2200 1250
Wire Wire Line
	2200 1250 2250 1250
$Comp
L Device:R R4
U 1 1 60B74EAA
P 8150 1450
F 0 "R4" H 8050 1450 50  0000 C CNN
F 1 "10k" V 8150 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8080 1450 50  0001 C CNN
F 3 "~" H 8150 1450 50  0001 C CNN
	1    8150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1250 8150 1250
Connection ~ 8150 1250
Wire Wire Line
	8150 1250 8200 1250
Wire Wire Line
	8150 1250 8150 1300
$Comp
L power:GND #PWR014
U 1 1 60B7C793
P 8150 1600
F 0 "#PWR014" H 8150 1350 50  0001 C CNN
F 1 "GND" H 8155 1427 50  0000 C CNN
F 2 "" H 8150 1600 50  0001 C CNN
F 3 "" H 8150 1600 50  0001 C CNN
	1    8150 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60BE98EE
P 1300 7150
F 0 "C2" H 1415 7196 50  0000 L CNN
F 1 "0.1uF" H 1415 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1338 7000 50  0001 C CNN
F 3 "~" H 1300 7150 50  0001 C CNN
	1    1300 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60BEACE7
P 1750 7150
F 0 "C3" H 1865 7196 50  0000 L CNN
F 1 "0.1uF" H 1865 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1788 7000 50  0001 C CNN
F 3 "~" H 1750 7150 50  0001 C CNN
	1    1750 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60BEB148
P 2200 7150
F 0 "C4" H 2315 7196 50  0000 L CNN
F 1 "0.1uF" H 2315 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2238 7000 50  0001 C CNN
F 3 "~" H 2200 7150 50  0001 C CNN
	1    2200 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60BEB5B5
P 2650 7150
F 0 "C5" H 2765 7196 50  0000 L CNN
F 1 "0.1uF" H 2765 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2688 7000 50  0001 C CNN
F 3 "~" H 2650 7150 50  0001 C CNN
	1    2650 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 60BEBBA3
P 3100 7150
F 0 "C6" H 3215 7196 50  0000 L CNN
F 1 "0.1uF" H 3215 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3138 7000 50  0001 C CNN
F 3 "~" H 3100 7150 50  0001 C CNN
	1    3100 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60BEC0C0
P 3550 7150
F 0 "C7" H 3665 7196 50  0000 L CNN
F 1 "0.1uF" H 3665 7105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3588 7000 50  0001 C CNN
F 3 "~" H 3550 7150 50  0001 C CNN
	1    3550 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 7000 1750 7000
Connection ~ 1750 7000
Wire Wire Line
	1750 7000 2200 7000
Connection ~ 2200 7000
Wire Wire Line
	2200 7000 2450 7000
Connection ~ 2650 7000
Wire Wire Line
	2650 7000 3100 7000
Connection ~ 3100 7000
Wire Wire Line
	3100 7000 3550 7000
Wire Wire Line
	3550 7300 3100 7300
Connection ~ 1750 7300
Wire Wire Line
	1750 7300 1300 7300
Connection ~ 2200 7300
Wire Wire Line
	2200 7300 1750 7300
Connection ~ 2650 7300
Wire Wire Line
	2650 7300 2450 7300
Connection ~ 3100 7300
Wire Wire Line
	3100 7300 2650 7300
$Comp
L power:VCC #PWR015
U 1 1 60BF47DC
P 2450 7000
F 0 "#PWR015" H 2450 6850 50  0001 C CNN
F 1 "VCC" H 2465 7173 50  0000 C CNN
F 2 "" H 2450 7000 50  0001 C CNN
F 3 "" H 2450 7000 50  0001 C CNN
	1    2450 7000
	1    0    0    -1  
$EndComp
Connection ~ 2450 7000
Wire Wire Line
	2450 7000 2650 7000
$Comp
L power:GND #PWR016
U 1 1 60BF4DA8
P 2450 7300
F 0 "#PWR016" H 2450 7050 50  0001 C CNN
F 1 "GND" H 2455 7127 50  0000 C CNN
F 2 "" H 2450 7300 50  0001 C CNN
F 3 "" H 2450 7300 50  0001 C CNN
	1    2450 7300
	1    0    0    -1  
$EndComp
Connection ~ 2450 7300
Wire Wire Line
	2450 7300 2200 7300
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60C6C10B
P 9750 2300
F 0 "H1" V 9704 2450 50  0000 L CNN
F 1 "MountingHole_Pad" V 9795 2450 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 9750 2300 50  0001 C CNN
F 3 "~" H 9750 2300 50  0001 C CNN
	1    9750 2300
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60C6C4F1
P 9750 2500
F 0 "H2" V 9704 2650 50  0000 L CNN
F 1 "MountingHole_Pad" V 9795 2650 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 9750 2500 50  0001 C CNN
F 3 "~" H 9750 2500 50  0001 C CNN
	1    9750 2500
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60C6C5D3
P 9750 2700
F 0 "H3" V 9704 2850 50  0000 L CNN
F 1 "MountingHole_Pad" V 9795 2850 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 9750 2700 50  0001 C CNN
F 3 "~" H 9750 2700 50  0001 C CNN
	1    9750 2700
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60C6C6FD
P 9750 2900
F 0 "H4" V 9704 3050 50  0000 L CNN
F 1 "MountingHole_Pad" V 9795 3050 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 9750 2900 50  0001 C CNN
F 3 "~" H 9750 2900 50  0001 C CNN
	1    9750 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 60C6CAA4
P 9650 3000
F 0 "#PWR0102" H 9650 2750 50  0001 C CNN
F 1 "GND" H 9655 2827 50  0000 C CNN
F 2 "" H 9650 3000 50  0001 C CNN
F 3 "" H 9650 3000 50  0001 C CNN
	1    9650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2300 9650 2500
Connection ~ 9650 2500
Wire Wire Line
	9650 2500 9650 2700
Connection ~ 9650 2700
Wire Wire Line
	9650 2700 9650 2900
Connection ~ 9650 2900
Wire Wire Line
	9650 2900 9650 3000
$Comp
L 74xx:74LS08 U4
U 5 1 60CF5E7E
P 10500 1450
F 0 "U4" H 10350 1800 50  0000 C CNN
F 1 "74HC08" H 10500 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10500 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 10500 1450 50  0001 C CNN
	5    10500 1450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U5
U 7 1 60CF875F
P 10000 1450
F 0 "U5" H 9850 1800 50  0000 C CNN
F 1 "74HC14" H 10000 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 10000 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 10000 1450 50  0001 C CNN
	7    10000 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 60D14F6C
P 10250 1950
F 0 "#PWR0103" H 10250 1700 50  0001 C CNN
F 1 "GND" H 10255 1777 50  0000 C CNN
F 2 "" H 10250 1950 50  0001 C CNN
F 3 "" H 10250 1950 50  0001 C CNN
	1    10250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 60D152B1
P 10250 950
F 0 "#PWR0104" H 10250 800 50  0001 C CNN
F 1 "VCC" H 10265 1123 50  0000 C CNN
F 2 "" H 10250 950 50  0001 C CNN
F 3 "" H 10250 950 50  0001 C CNN
	1    10250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 950  10250 950 
Connection ~ 10250 950 
Wire Wire Line
	10250 950  10500 950 
Wire Wire Line
	10500 1950 10250 1950
Connection ~ 10250 1950
Wire Wire Line
	10250 1950 10000 1950
$Comp
L power:GND #PWR0105
U 1 1 60D399C6
P 1700 2150
F 0 "#PWR0105" H 1700 1900 50  0001 C CNN
F 1 "GND" V 1705 2022 50  0000 R CNN
F 2 "" H 1700 2150 50  0001 C CNN
F 3 "" H 1700 2150 50  0001 C CNN
	1    1700 2150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U5
U 6 1 60A54000
P 4600 1700
F 0 "U5" H 4600 2017 50  0000 C CNN
F 1 "74HC14" H 4600 1926 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 4600 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4600 1700 50  0001 C CNN
	6    4600 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 60B22BE5
P 4050 7150
F 0 "C8" H 4168 7196 50  0000 L CNN
F 1 "1uF" H 4168 7105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 4088 7000 50  0001 C CNN
F 3 "~" H 4050 7150 50  0001 C CNN
	1    4050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 7000 4050 7000
Connection ~ 3550 7000
Wire Wire Line
	4050 7300 3550 7300
Connection ~ 3550 7300
$Comp
L 74xx:74LS165 U?
U 1 1 60CE9DDA
P 16200 1800
F 0 "U?" H 15950 2550 50  0000 C CNN
F 1 "74LS165" H 16450 2550 50  0000 C CNN
F 2 "" H 16200 1800 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74ls165a.pdf" H 16200 1800 50  0001 C CNN
	1    16200 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS165 U?
U 1 1 60CEF40D
P 16200 4200
F 0 "U?" H 15950 4950 50  0000 C CNN
F 1 "74LS165" H 16450 4950 50  0000 C CNN
F 2 "" H 16200 4200 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74ls165a.pdf" H 16200 4200 50  0001 C CNN
	1    16200 4200
	1    0    0    -1  
$EndComp
Text GLabel 15700 4400 0    50   Input ~ 0
DSTART
Text GLabel 15700 4300 0    50   Input ~ 0
D0
Text GLabel 15700 4200 0    50   Input ~ 0
D1
Text GLabel 15700 4100 0    50   Input ~ 0
D2
Text GLabel 15700 4000 0    50   Input ~ 0
D3
Text GLabel 15700 3900 0    50   Input ~ 0
D4
Text GLabel 15700 3800 0    50   Input ~ 0
D5
Text GLabel 15700 3700 0    50   Input ~ 0
D6
Text GLabel 15700 2000 0    50   Input ~ 0
D7
Text GLabel 15700 1900 0    50   Input ~ 0
DPARITY
Text GLabel 15700 1800 0    50   Input ~ 0
DEND
Wire Wire Line
	15700 1700 15700 1600
Connection ~ 15700 1200
Connection ~ 15700 1300
Wire Wire Line
	15700 1300 15700 1200
Connection ~ 15700 1400
Wire Wire Line
	15700 1400 15700 1300
Connection ~ 15700 1500
Wire Wire Line
	15700 1500 15700 1400
Connection ~ 15700 1600
Wire Wire Line
	15700 1600 15700 1500
$Comp
L power:VCC #PWR?
U 1 1 60CFBBE9
P 15700 900
F 0 "#PWR?" H 15700 750 50  0001 C CNN
F 1 "VCC" H 15715 1073 50  0000 C CNN
F 2 "" H 15700 900 50  0001 C CNN
F 3 "" H 15700 900 50  0001 C CNN
	1    15700 900 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60CFC40B
P 16200 900
F 0 "#PWR?" H 16200 750 50  0001 C CNN
F 1 "VCC" H 16215 1073 50  0000 C CNN
F 2 "" H 16200 900 50  0001 C CNN
F 3 "" H 16200 900 50  0001 C CNN
	1    16200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	15700 900  15700 1200
$Comp
L power:VCC #PWR?
U 1 1 60D037DA
P 16200 3300
F 0 "#PWR?" H 16200 3150 50  0001 C CNN
F 1 "VCC" H 16215 3473 50  0000 C CNN
F 2 "" H 16200 3300 50  0001 C CNN
F 3 "" H 16200 3300 50  0001 C CNN
	1    16200 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D0CC19
P 16200 2800
F 0 "#PWR?" H 16200 2550 50  0001 C CNN
F 1 "GND" H 16205 2627 50  0000 C CNN
F 2 "" H 16200 2800 50  0001 C CNN
F 3 "" H 16200 2800 50  0001 C CNN
	1    16200 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60D0CF47
P 16200 5200
F 0 "#PWR?" H 16200 4950 50  0001 C CNN
F 1 "GND" H 16205 5027 50  0000 C CNN
F 2 "" H 16200 5200 50  0001 C CNN
F 3 "" H 16200 5200 50  0001 C CNN
	1    16200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	16700 1200 16800 1200
Wire Wire Line
	16800 3050 15650 3050
Wire Wire Line
	15650 3600 15700 3600
Wire Wire Line
	16800 1200 16800 3050
NoConn ~ 16700 1300
NoConn ~ 16700 3700
Wire Wire Line
	15650 3050 15650 3600
Wire Wire Line
	15700 4600 15050 4600
Wire Wire Line
	15050 4600 15050 2850
Wire Wire Line
	15050 2200 15700 2200
Wire Wire Line
	15050 2850 14250 2850
Connection ~ 15050 2850
Wire Wire Line
	15050 2850 15050 2200
Text GLabel 14250 2850 0    50   Input ~ 0
~WP
$Comp
L AK's_Library:Mini-DIN-6 J?
U 1 1 60D3FBB2
P 13300 200
F 0 "J?" H 13300 567 50  0000 C CNN
F 1 "Mini-DIN-6" H 13300 476 50  0000 C CNN
F 2 "AK's_Footprints:Mini_din6" H 13300 200 50  0001 C CNN
F 3 "http://service.powerdynamics.com/ec/Catalog17/Section%2011.pdf" H 13300 200 50  0001 C CNN
	1    13300 200 
	1    0    0    -1  
$EndComp
Text GLabel 14400 300  2    50   Output ~ 0
KBD_DATA
Text GLabel 14400 100  2    50   Output ~ 0
KBD_CLK
$Comp
L power:GND #PWR?
U 1 1 60D3FBBA
P 13600 200
F 0 "#PWR?" H 13600 -50 50  0001 C CNN
F 1 "GND" V 13605 72  50  0000 R CNN
F 2 "" H 13600 200 50  0001 C CNN
F 3 "" H 13600 200 50  0001 C CNN
	1    13600 200 
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 60D3FBC0
P 13000 200
F 0 "#PWR?" H 13000 50  50  0001 C CNN
F 1 "VCC" V 13015 327 50  0000 L CNN
F 2 "" H 13000 200 50  0001 C CNN
F 3 "" H 13000 200 50  0001 C CNN
	1    13000 200 
	0    -1   -1   0   
$EndComp
NoConn ~ 13000 100 
NoConn ~ 13000 300 
Wire Wire Line
	13950 100  13950 0   
Connection ~ 13950 100 
$Comp
L Device:R R?
U 1 1 60D3FBCC
P 13950 -150
F 0 "R?" H 13850 -150 50  0000 C CNN
F 1 "10k" V 13950 -150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 13880 -150 50  0001 C CNN
F 3 "~" H 13950 -150 50  0001 C CNN
	1    13950 -150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60D3FBD2
P 14250 -150
F 0 "R?" H 14350 -150 50  0000 C CNN
F 1 "10k" V 14250 -150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 14180 -150 50  0001 C CNN
F 3 "~" H 14250 -150 50  0001 C CNN
	1    14250 -150
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 300  14250 0   
Connection ~ 14250 300 
$Comp
L power:VCC #PWR?
U 1 1 60D3FBDC
P 14100 -350
F 0 "#PWR?" H 14100 -500 50  0001 C CNN
F 1 "VCC" H 14115 -177 50  0000 C CNN
F 2 "" H 14100 -350 50  0001 C CNN
F 3 "" H 14100 -350 50  0001 C CNN
	1    14100 -350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 -300 13950 -350
Wire Wire Line
	14250 -350 14250 -300
$Comp
L power:GND #PWR?
U 1 1 60D3FBE7
P 13300 550
F 0 "#PWR?" H 13300 300 50  0001 C CNN
F 1 "GND" V 13305 422 50  0000 R CNN
F 2 "" H 13300 550 50  0001 C CNN
F 3 "" H 13300 550 50  0001 C CNN
	1    13300 550 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 60D46F05
P 14150 1300
F 0 "Q?" H 14340 1346 50  0000 L CNN
F 1 "2N3904" H 14340 1255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14350 1225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 14150 1300 50  0001 L CNN
	1    14150 1300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 60D4786A
P 13850 900
F 0 "Q?" H 14040 946 50  0000 L CNN
F 1 "2N3904" H 14040 855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 14050 825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3903-D.PDF" H 13850 900 50  0001 L CNN
	1    13850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	13950 100  13950 700 
Wire Wire Line
	13600 100  13950 100 
Wire Wire Line
	13600 300  14250 300 
Wire Wire Line
	13950 100  14400 100 
Wire Wire Line
	14250 300  14400 300 
Wire Wire Line
	14250 300  14250 1100
Wire Wire Line
	13950 -350 14100 -350
Connection ~ 14100 -350
Wire Wire Line
	14100 -350 14250 -350
$Comp
L 74xx:74HC04 U?
U 1 1 60DB9F31
P 12900 900
F 0 "U?" H 12900 1217 50  0000 C CNN
F 1 "74HC04" H 12900 1126 50  0000 C CNN
F 2 "" H 12900 900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 12900 900 50  0001 C CNN
	1    12900 900 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U?
U 1 1 60DBB664
P 12900 1300
F 0 "U?" H 12900 1100 50  0000 C CNN
F 1 "74HC04" H 12900 1000 50  0000 C CNN
F 2 "" H 12900 1300 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 12900 1300 50  0001 C CNN
	1    12900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13650 900  13200 900 
Wire Wire Line
	13200 1300 13950 1300
Wire Wire Line
	13950 1550 14100 1550
Wire Wire Line
	14250 1550 14250 1500
$Comp
L power:GND #PWR?
U 1 1 60DD0992
P 14100 1550
F 0 "#PWR?" H 14100 1300 50  0001 C CNN
F 1 "GND" H 14105 1377 50  0000 C CNN
F 2 "" H 14100 1550 50  0001 C CNN
F 3 "" H 14100 1550 50  0001 C CNN
	1    14100 1550
	1    0    0    -1  
$EndComp
Connection ~ 14100 1550
Wire Wire Line
	14100 1550 14250 1550
Wire Wire Line
	13950 1100 13950 1300
Text GLabel 12600 900  0    50   Input ~ 0
CLK_PULL
Text GLabel 12600 1300 0    50   Input ~ 0
DATA_PULL
Connection ~ 13950 1300
Wire Wire Line
	13950 1300 13950 1550
Wire Bus Line
	4900 5150 6800 5150
Wire Bus Line
	4900 5150 4900 6350
Wire Bus Line
	6800 3400 6800 5150
Wire Bus Line
	3850 3000 3850 5150
Text GLabel 15700 2400 0    50   Input ~ 0
~KBD_CLK
Text GLabel 15700 4800 0    50   Input ~ 0
~KBD_CLK
Text GLabel 16700 3600 2    50   Output ~ 0
DATA_PULL
$EndSCHEMATC
