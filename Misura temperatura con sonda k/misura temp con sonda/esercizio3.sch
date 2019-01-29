EESchema Schematic File Version 4
LIBS:esercizio3-cache
EELAYER 26 0
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
Text Label 3050 2700 1    60   ~ 0
Vin
Text Label 3450 2700 1    60   ~ 0
IOREF
Text Label 3000 3750 0    60   ~ 0
A0
Text Label 3000 3850 0    60   ~ 0
A1
Text Label 3000 3950 0    60   ~ 0
A2
Text Label 3000 4050 0    60   ~ 0
A3
Text Label 3000 4150 0    60   ~ 0
A4(SDA)
Text Label 3000 4250 0    60   ~ 0
A5(SCL)
Text Label 4650 4250 0    60   ~ 0
0(Rx)
Text Label 4650 4050 0    60   ~ 0
2
Text Label 4650 4150 0    60   ~ 0
1(Tx)
Text Label 4650 3950 0    60   ~ 0
3(**)
Text Label 4650 3850 0    60   ~ 0
4
Text Label 4650 3750 0    60   ~ 0
5(**)
Text Label 4650 3650 0    60   ~ 0
6(**)
Text Label 4650 3550 0    60   ~ 0
7
Text Label 4650 3350 0    60   ~ 0
8
Text Label 4650 3250 0    60   ~ 0
9(**)
Text Label 4650 3150 0    60   ~ 0
10(**/SS)
Text Label 4650 3050 0    60   ~ 0
11(**/MOSI)
Text Label 4650 2950 0    60   ~ 0
12(MISO)
Text Label 4650 2850 0    60   ~ 0
13(SCK)
Text Label 4650 2650 0    60   ~ 0
AREF
NoConn ~ 3500 2850
Text Label 4650 2550 0    60   ~ 0
A4(SDA)
Text Label 4650 2450 0    60   ~ 0
A5(SCL)
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 3700 3150
F 0 "P1" H 3700 3600 50  0000 C CNN
F 1 "Power" V 3800 3150 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 3850 3150 20  0000 C CNN
F 3 "" H 3700 3150 50  0000 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
Text Label 2750 3050 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 3250 2700
F 0 "#PWR01" H 3250 2550 50  0001 C CNN
F 1 "+3.3V" V 3250 2950 50  0000 C CNN
F 2 "" H 3250 2700 50  0000 C CNN
F 3 "" H 3250 2700 50  0000 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 3150 2600
F 0 "#PWR02" H 3150 2450 50  0001 C CNN
F 1 "+5V" V 3150 2800 50  0000 C CNN
F 2 "" H 3150 2600 50  0000 C CNN
F 3 "" H 3150 2600 50  0000 C CNN
	1    3150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 3400 4400
F 0 "#PWR03" H 3400 4150 50  0001 C CNN
F 1 "GND" H 3400 4250 50  0000 C CNN
F 2 "" H 3400 4400 50  0000 C CNN
F 3 "" H 3400 4400 50  0000 C CNN
	1    3400 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 4400 4400
F 0 "#PWR04" H 4400 4150 50  0001 C CNN
F 1 "GND" H 4400 4250 50  0000 C CNN
F 2 "" H 4400 4400 50  0000 C CNN
F 3 "" H 4400 4400 50  0000 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 3700 3950
F 0 "P2" H 3700 3550 50  0000 C CNN
F 1 "Analog" V 3800 3950 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 3850 4000 20  0000 C CNN
F 3 "" H 3700 3950 50  0000 C CNN
	1    3700 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 4100 3850
F 0 "P4" H 4100 3350 50  0000 C CNN
F 1 "Digital" V 4200 3850 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 4250 3800 20  0000 C CNN
F 3 "" H 4100 3850 50  0000 C CNN
	1    4100 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 2700 3450 2950
Wire Wire Line
	3450 2950 3500 2950
Wire Wire Line
	3500 3150 3250 3150
Wire Wire Line
	3500 3250 3150 3250
Wire Wire Line
	3500 3550 3050 3550
Wire Wire Line
	3500 3350 3400 3350
Wire Wire Line
	3500 3450 3400 3450
Connection ~ 3400 3450
Wire Wire Line
	3050 3550 3050 2700
Wire Wire Line
	3150 3250 3150 2600
Wire Wire Line
	3250 3150 3250 2700
Wire Wire Line
	3500 3750 3000 3750
Wire Wire Line
	3500 3850 3000 3850
Wire Wire Line
	3500 3950 3000 3950
Wire Wire Line
	3500 4050 3000 4050
Wire Wire Line
	3500 4150 3000 4150
Wire Wire Line
	3500 4250 3000 4250
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 4100 2850
F 0 "P3" H 4100 3400 50  0000 C CNN
F 1 "Digital" V 4200 2850 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 4250 2850 20  0000 C CNN
F 3 "" H 4100 2850 50  0000 C CNN
	1    4100 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 3350 4650 3350
Wire Wire Line
	4300 3250 4650 3250
Wire Wire Line
	4300 3150 4650 3150
Wire Wire Line
	4300 3050 4650 3050
Wire Wire Line
	4300 2950 4650 2950
Wire Wire Line
	4300 2850 4650 2850
Wire Wire Line
	4300 2650 4650 2650
Wire Wire Line
	4300 2550 4650 2550
Wire Wire Line
	4300 2450 4650 2450
Wire Wire Line
	4300 4250 4650 4250
Wire Wire Line
	4300 4150 4650 4150
Wire Wire Line
	4300 3550 4650 3550
Wire Wire Line
	4300 2750 4400 2750
Wire Wire Line
	4400 2750 4400 4400
Wire Wire Line
	3400 3350 3400 3450
Wire Wire Line
	3400 3450 3400 4400
Wire Wire Line
	3500 3050 2750 3050
Text Notes 3800 2850 0    60   ~ 0
1
$Comp
L esercizio3-rescue:MAX6675ISA-MAX6675ISA IC?
U 1 1 5C4F46D7
P 7050 3050
F 0 "IC?" H 7600 3315 50  0000 C CNN
F 1 "MAX6675ISA" H 7600 3224 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 8000 3150 50  0001 L CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX6675.pdf" H 8000 3050 50  0001 L CNN
F 4 "IC THERMOCOUP TO DGTL 8-SOIC" H 8000 2950 50  0001 L CNN "Description"
F 5 "1.75" H 8000 2850 50  0001 L CNN "Height"
F 6 "Maxim Integrated" H 8000 2750 50  0001 L CNN "Manufacturer_Name"
F 7 "MAX6675ISA" H 8000 2650 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 8000 2550 50  0001 L CNN "RS Part Number"
F 9 "" H 8000 2450 50  0001 L CNN "RS Price/Stock"
F 10 "N/A" H 8000 2350 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.com/Search/Refine.aspx?Keyword=N%2FA" H 8000 2250 50  0001 L CNN "Mouser Price/Stock"
	1    7050 3050
	0    1    1    0   
$EndComp
$Comp
L Device:Thermocouple TC?
U 1 1 5C4F47D2
P 6900 2600
F 0 "TC?" H 6871 2925 50  0000 C CNN
F 1 "Thermocouple" H 6871 2834 50  0000 C CNN
F 2 "" H 6325 2650 50  0001 C CNN
F 3 "~" H 6325 2650 50  0001 C CNN
	1    6900 2600
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J?
U 1 1 5C50B629
P 6000 3600
F 0 "J?" H 5920 3175 50  0000 C CNN
F 1 "Conn_01x05" H 5920 3266 50  0000 C CNN
F 2 "" H 6000 3600 50  0001 C CNN
F 3 "~" H 6000 3600 50  0001 C CNN
	1    6000 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 3050 6950 2850
Wire Wire Line
	6950 2850 6800 2850
Wire Wire Line
	6800 2850 6800 2800
Wire Wire Line
	6850 3050 6850 2700
Wire Wire Line
	6850 2700 7000 2700
Wire Wire Line
	6750 3050 6600 3050
Wire Wire Line
	6600 3050 6600 3700
Wire Wire Line
	6600 3700 6200 3700
Wire Wire Line
	7050 3050 7400 3050
Wire Wire Line
	7500 3050 7500 4600
Wire Wire Line
	7500 4600 6200 4600
Wire Wire Line
	6200 4600 6200 3800
Wire Wire Line
	6800 2800 7400 2800
Wire Wire Line
	7400 2800 7400 3050
Connection ~ 6800 2800
Wire Wire Line
	6800 2800 6800 2700
Connection ~ 7400 3050
Wire Wire Line
	7400 3050 7500 3050
Wire Wire Line
	6750 4150 6750 4350
Wire Wire Line
	6750 4350 6350 4350
Wire Wire Line
	6350 4350 6350 3600
Wire Wire Line
	6350 3600 6200 3600
Wire Wire Line
	6850 4150 6850 4250
Wire Wire Line
	6850 4250 6400 4250
Wire Wire Line
	6400 4250 6400 3500
Wire Wire Line
	6400 3500 6200 3500
Wire Wire Line
	6950 4150 6950 4400
Wire Wire Line
	6950 4400 6500 4400
Wire Wire Line
	6500 4400 6500 3400
Wire Wire Line
	6500 3400 6200 3400
Wire Wire Line
	5800 4050 5800 3800
Wire Wire Line
	5800 3800 5950 3800
Wire Wire Line
	4300 4050 5800 4050
Wire Wire Line
	5950 3700 5750 3700
Wire Wire Line
	5750 3700 5750 3950
Wire Wire Line
	5750 3950 4300 3950
Wire Wire Line
	5950 3600 5650 3600
Wire Wire Line
	5650 3600 5650 3850
Wire Wire Line
	5650 3850 4300 3850
Wire Wire Line
	5950 3500 5550 3500
Wire Wire Line
	5550 3500 5550 3750
Wire Wire Line
	5550 3750 4300 3750
Wire Wire Line
	5950 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3650
Wire Wire Line
	5450 3650 4300 3650
$EndSCHEMATC
