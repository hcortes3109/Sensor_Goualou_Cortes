EESchema Schematic File Version 4
LIBS:projet shield capteur-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R R0
U 1 1 603697C8
P 1500 1300
F 0 "R0" H 1570 1346 50  0000 L CNN
F 1 "Rsensor" H 1570 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 1300 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6036A2E8
P 1850 1750
F 0 "R5" V 2057 1750 50  0000 C CNN
F 1 "10k" V 1966 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1780 1750 50  0001 C CNN
F 3 "~" H 1850 1750 50  0001 C CNN
	1    1850 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6036AEA7
P 2650 2100
F 0 "R1" H 2580 2054 50  0000 R CNN
F 1 "100k" H 2580 2145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 2100 50  0001 C CNN
F 3 "~" H 2650 2100 50  0001 C CNN
	1    2650 2100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 6036B7A1
P 2300 2100
F 0 "C1" H 2415 2146 50  0000 L CNN
F 1 "100n" H 2415 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 2338 1950 50  0001 C CNN
F 3 "~" H 2300 2100 50  0001 C CNN
	1    2300 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60370B62
P 2300 2550
F 0 "#PWR0101" H 2300 2300 50  0001 C CNN
F 1 "GND" H 2305 2377 50  0000 C CNN
F 2 "" H 2300 2550 50  0001 C CNN
F 3 "" H 2300 2550 50  0001 C CNN
	1    2300 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 60372286
P 1500 1150
F 0 "#PWR0102" H 1500 1000 50  0001 C CNN
F 1 "+5V" H 1515 1323 50  0000 C CNN
F 2 "" H 1500 1150 50  0001 C CNN
F 3 "" H 1500 1150 50  0001 C CNN
	1    1500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1950 2300 1750
Wire Wire Line
	2300 1750 2000 1750
Wire Wire Line
	2650 1950 2650 1750
Wire Wire Line
	2650 1750 2300 1750
Connection ~ 2300 1750
Wire Wire Line
	2650 2250 2650 2450
Wire Wire Line
	2300 2250 2300 2450
Wire Wire Line
	2300 2450 2650 2450
Wire Wire Line
	2300 2550 2300 2450
Connection ~ 2300 2450
Wire Wire Line
	1500 1450 1500 1750
Wire Wire Line
	1500 1750 1700 1750
Text GLabel 2950 1750 2    50   Input ~ 0
IN+
Wire Wire Line
	2650 1750 2950 1750
Connection ~ 2650 1750
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6037A1A5
P 700 800
F 0 "#FLG0101" H 700 875 50  0001 C CNN
F 1 "PWR_FLAG" H 700 973 50  0000 C CNN
F 2 "" H 700 800 50  0001 C CNN
F 3 "~" H 700 800 50  0001 C CNN
	1    700  800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6037A836
P 700 1000
F 0 "#PWR0103" H 700 750 50  0001 C CNN
F 1 "GND" H 705 827 50  0000 C CNN
F 2 "" H 700 1000 50  0001 C CNN
F 3 "" H 700 1000 50  0001 C CNN
	1    700  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  800  700  1000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6037CF55
P 1100 1000
F 0 "#FLG0102" H 1100 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 1173 50  0000 C CNN
F 2 "" H 1100 1000 50  0001 C CNN
F 3 "~" H 1100 1000 50  0001 C CNN
	1    1100 1000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 6038004B
P 1100 750
F 0 "#PWR0104" H 1100 600 50  0001 C CNN
F 1 "+5V" H 1115 923 50  0000 C CNN
F 2 "" H 1100 750 50  0001 C CNN
F 3 "" H 1100 750 50  0001 C CNN
	1    1100 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 750  1100 1000
NoConn ~ 8900 2600
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 2400
NoConn ~ 10550 2500
NoConn ~ 10550 2300
NoConn ~ 10550 2900
NoConn ~ 10550 3000
NoConn ~ 10550 2100
NoConn ~ 10550 2000
NoConn ~ 10550 1400
NoConn ~ 10550 1600
NoConn ~ 10550 1700
NoConn ~ 8650 1800
NoConn ~ 9350 1450
NoConn ~ 8950 1450
Text GLabel 8900 2500 0    50   Input ~ 0
ADC
Text GLabel 8900 2900 0    50   Input ~ 0
SDA
Text GLabel 8900 3000 0    50   Input ~ 0
SCK
Wire Wire Line
	10200 2600 10800 2600
Text GLabel 10800 2700 2    50   Input ~ 0
CLK
Wire Wire Line
	10200 2700 10800 2700
Wire Wire Line
	10200 2800 10800 2800
Text GLabel 10800 2600 2    50   Input ~ 0
DATA
Text GLabel 10800 2800 2    50   Input ~ 0
SWITCH
Wire Wire Line
	10200 1800 11050 1800
Wire Wire Line
	10200 1900 11050 1900
Text GLabel 11050 1800 2    50   Input ~ 0
TX
Text GLabel 11050 1900 2    50   Input ~ 0
RX
Text GLabel 6850 1900 2    50   Input ~ 0
ADC
$Comp
L Device:R R6
U 1 1 603A1DAD
P 6300 1900
F 0 "R6" V 6093 1900 50  0000 C CNN
F 1 "1k" V 6184 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 1900 50  0001 C CNN
F 3 "~" H 6300 1900 50  0001 C CNN
	1    6300 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1900 6650 1900
$Comp
L Device:C C2
U 1 1 603A3A37
P 6650 2200
F 0 "C2" H 6765 2246 50  0000 L CNN
F 1 "100n" H 6765 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 6688 2050 50  0001 C CNN
F 3 "~" H 6650 2200 50  0001 C CNN
	1    6650 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 603A3F4C
P 6300 2500
F 0 "R2" V 6093 2500 50  0000 C CNN
F 1 "1k" V 6184 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6230 2500 50  0001 C CNN
F 3 "~" H 6300 2500 50  0001 C CNN
	1    6300 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 2050 6650 1900
Connection ~ 6650 1900
Wire Wire Line
	6650 1900 6450 1900
Wire Wire Line
	6450 2500 6650 2500
Wire Wire Line
	6650 2500 6650 2350
$Comp
L power:GND #PWR0105
U 1 1 603A6800
P 6650 2700
F 0 "#PWR0105" H 6650 2450 50  0001 C CNN
F 1 "GND" H 6655 2527 50  0000 C CNN
F 2 "" H 6650 2700 50  0001 C CNN
F 3 "" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2500 6650 2700
Connection ~ 6650 2500
$Comp
L Device:C C4
U 1 1 603A8023
P 5950 2200
F 0 "C4" H 6065 2246 50  0000 L CNN
F 1 "1µ" H 6065 2155 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 5988 2050 50  0001 C CNN
F 3 "~" H 5950 2200 50  0001 C CNN
	1    5950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2500 5950 2500
Wire Wire Line
	5950 2500 5950 2350
Wire Wire Line
	5950 2050 5950 1900
Wire Wire Line
	5950 1900 6150 1900
$Comp
L Device:R R3
U 1 1 603AB7B9
P 5550 2200
F 0 "R3" H 5480 2154 50  0000 R CNN
F 1 "100k" H 5480 2245 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5480 2200 50  0001 C CNN
F 3 "~" H 5550 2200 50  0001 C CNN
	1    5550 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2050 5550 1900
Wire Wire Line
	5550 1900 5950 1900
Connection ~ 5950 1900
Wire Wire Line
	5950 2500 5550 2500
Wire Wire Line
	5550 2500 5550 2350
Connection ~ 5950 2500
$Comp
L Device:C C3
U 1 1 603B0591
P 5700 1450
F 0 "C3" H 5815 1496 50  0000 L CNN
F 1 "100n" H 5815 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L5.1mm_D3.1mm_P7.50mm_Horizontal" H 5738 1300 50  0001 C CNN
F 3 "~" H 5700 1450 50  0001 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 603B0B57
P 5700 1700
F 0 "#PWR0106" H 5700 1450 50  0001 C CNN
F 1 "GND" H 5705 1527 50  0000 C CNN
F 2 "" H 5700 1700 50  0001 C CNN
F 3 "" H 5700 1700 50  0001 C CNN
	1    5700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1700 5700 1600
Wire Wire Line
	5700 1300 5700 1150
Wire Wire Line
	5700 1150 5800 1150
$Comp
L power:+5V #PWR0107
U 1 1 603B4292
P 5800 1150
F 0 "#PWR0107" H 5800 1000 50  0001 C CNN
F 1 "+5V" H 5815 1323 50  0000 C CNN
F 2 "" H 5800 1150 50  0001 C CNN
F 3 "" H 5800 1150 50  0001 C CNN
	1    5800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1150 5500 1150
Wire Wire Line
	5500 1150 5500 1750
Connection ~ 5700 1150
Text Notes 1400 650  0    50   ~ 0
Amplificateur des familles\n
Text GLabel 3650 1800 0    50   Input ~ 0
IN-
Text GLabel 3650 1900 0    50   Input ~ 0
IN+
$Comp
L GLou_TREK:LT1050 U1
U 1 1 603C365B
P 4550 1800
F 0 "U1" H 4355 2165 50  0000 C CNN
F 1 "LT1050" H 4355 2074 50  0000 C CNN
F 2 "projet shield capteur:LT1050" H 4550 1800 50  0001 C CNN
F 3 "" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 603CED14
P 3850 2100
F 0 "#PWR0108" H 3850 1850 50  0001 C CNN
F 1 "GND" H 3855 1927 50  0000 C CNN
F 2 "" H 3850 2100 50  0001 C CNN
F 3 "" H 3850 2100 50  0001 C CNN
	1    3850 2100
	1    0    0    -1  
$EndComp
Wire Notes Line
	1350 3050 7200 3050
Wire Notes Line
	7200 3050 7200 550 
Wire Notes Line
	1350 550  7200 550 
Wire Notes Line
	1350 550  1350 3050
$Comp
L GLou_TREK:Bluetooth-HC05 U31
U 1 1 603E42B8
P 5200 4300
F 0 "U31" H 5828 3886 50  0000 L CNN
F 1 "Bluetooth-HC05" H 5828 3795 50  0000 L CNN
F 2 "projet shield capteur:HC-05_BT" H 5200 4300 50  0001 C CNN
F 3 "" H 5200 4300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
$Comp
L GLou_TREK:KY_040 U41
U 1 1 603E5AA9
P 7850 4250
F 0 "U41" H 8198 3796 50  0000 L CNN
F 1 "KY_040" H 8198 3705 50  0000 L CNN
F 2 "projet shield capteur:Encodeur" H 7850 4250 50  0001 C CNN
F 3 "" H 7850 4250 50  0001 C CNN
	1    7850 4250
	1    0    0    -1  
$EndComp
$Comp
L GLou_TREK:OLED_0.91 U21
U 1 1 603E6DB8
P 2900 4300
F 0 "U21" H 3448 3896 50  0000 L CNN
F 1 "OLED_0.91" H 3448 3805 50  0000 L CNN
F 2 "projet shield capteur:OLED" H 2900 4300 50  0001 C CNN
F 3 "" H 2900 4300 50  0001 C CNN
	1    2900 4300
	1    0    0    -1  
$EndComp
Text GLabel 2050 4600 0    50   Input ~ 0
SDA
Text GLabel 2050 4700 0    50   Input ~ 0
SCK
Wire Wire Line
	2050 4600 2300 4600
Wire Wire Line
	2050 4700 2300 4700
Wire Wire Line
	2300 4800 1700 4800
Wire Wire Line
	1700 4800 1700 4700
Wire Wire Line
	2300 4900 2200 4900
Wire Wire Line
	2200 4900 2200 5000
$Comp
L power:GND #PWR0109
U 1 1 603F33FD
P 2200 5000
F 0 "#PWR0109" H 2200 4750 50  0001 C CNN
F 1 "GND" H 2205 4827 50  0000 C CNN
F 2 "" H 2200 5000 50  0001 C CNN
F 3 "" H 2200 5000 50  0001 C CNN
	1    2200 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 603F3B50
P 1700 4700
F 0 "#PWR0110" H 1700 4550 50  0001 C CNN
F 1 "+5V" H 1715 4873 50  0000 C CNN
F 2 "" H 1700 4700 50  0001 C CNN
F 3 "" H 1700 4700 50  0001 C CNN
	1    1700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4600 4050 4600
Wire Wire Line
	4400 4700 4050 4700
Wire Wire Line
	4400 4800 4300 4800
Wire Wire Line
	4400 4900 4300 4900
Text GLabel 4300 4800 0    50   Input ~ 0
RX
Text GLabel 4300 4900 0    50   Input ~ 0
TX
$Comp
L power:GND #PWR0111
U 1 1 6040276A
P 4050 4700
F 0 "#PWR0111" H 4050 4450 50  0001 C CNN
F 1 "GND" H 4055 4527 50  0000 C CNN
F 2 "" H 4050 4700 50  0001 C CNN
F 3 "" H 4050 4700 50  0001 C CNN
	1    4050 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 60402EDA
P 4050 4600
F 0 "#PWR0112" H 4050 4450 50  0001 C CNN
F 1 "+5V" H 4065 4773 50  0000 C CNN
F 2 "" H 4050 4600 50  0001 C CNN
F 3 "" H 4050 4600 50  0001 C CNN
	1    4050 4600
	1    0    0    -1  
$EndComp
Text GLabel 7100 4550 0    50   Input ~ 0
CLK
Text GLabel 7100 4650 0    50   Input ~ 0
DATA
Text GLabel 7100 4750 0    50   Input ~ 0
SWITCH
Wire Wire Line
	7100 4550 7250 4550
Wire Wire Line
	7100 4650 7250 4650
Wire Wire Line
	7100 4750 7250 4750
Wire Wire Line
	7250 4850 6650 4850
Wire Wire Line
	7250 4950 7000 4950
$Comp
L power:GND #PWR0113
U 1 1 60418629
P 7000 4950
F 0 "#PWR0113" H 7000 4700 50  0001 C CNN
F 1 "GND" H 7005 4777 50  0000 C CNN
F 2 "" H 7000 4950 50  0001 C CNN
F 3 "" H 7000 4950 50  0001 C CNN
	1    7000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 60418DEE
P 6650 4850
F 0 "#PWR0114" H 6650 4700 50  0001 C CNN
F 1 "+5V" H 6665 5023 50  0000 C CNN
F 2 "" H 6650 4850 50  0001 C CNN
F 3 "" H 6650 4850 50  0001 C CNN
	1    6650 4850
	1    0    0    -1  
$EndComp
Wire Notes Line
	1400 4000 8500 4000
Wire Notes Line
	8500 4000 8500 5450
Wire Notes Line
	1400 5450 1400 4000
Wire Notes Line
	1400 5450 8500 5450
Text Notes 1450 4150 0    50   ~ 0
Modules\n
NoConn ~ 3900 3050
Connection ~ 5550 1900
Wire Wire Line
	5100 1750 5500 1750
Wire Wire Line
	5250 1900 5250 1850
Wire Wire Line
	5250 1850 5100 1850
Wire Wire Line
	5250 1900 5550 1900
Wire Wire Line
	3650 1800 3900 1800
Wire Wire Line
	3650 1900 3900 1900
Wire Wire Line
	3900 2050 3850 2050
Wire Wire Line
	3850 2050 3850 2100
Text GLabel 5950 2700 3    50   Input ~ 0
IN-
Wire Wire Line
	5950 2700 5950 2500
$EndSCHEMATC
