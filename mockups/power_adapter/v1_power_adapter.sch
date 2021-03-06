EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ETL Readout Board Power Adapter"
Date "2021-07-14"
Rev "1"
Comp "Boston University"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x07_Odd_Even J2
U 1 1 60B12E9C
P 6000 4200
F 0 "J2" H 6050 4717 50  0000 C CNN
F 1 "Conn_02x07_Odd_Even" H 6050 4626 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x07_P2.54mm_Vertical" H 6000 4200 50  0001 C CNN
F 3 "~" H 6000 4200 50  0001 C CNN
F 4 "SFH11-PBPC-D07-ST-BK" H 6000 4200 50  0001 C CNN "PN"
	1    6000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4000 5600 3550
Wire Wire Line
	5600 3550 6550 3550
Wire Wire Line
	6550 3550 6550 4000
Wire Wire Line
	6550 4000 6300 4000
Wire Wire Line
	5800 4100 5700 4100
Wire Wire Line
	5700 4100 5700 4200
Wire Wire Line
	5700 4300 5800 4300
Wire Wire Line
	5800 4200 5700 4200
Connection ~ 5700 4200
Wire Wire Line
	5700 4200 5700 4300
Wire Wire Line
	6300 4100 6550 4100
Wire Wire Line
	6550 4100 6550 4200
Wire Wire Line
	6550 4200 6300 4200
Wire Wire Line
	6300 4300 6400 4300
Wire Wire Line
	6400 4300 6400 4400
Wire Wire Line
	6400 4400 6300 4400
Wire Wire Line
	6400 4400 6400 4500
Wire Wire Line
	6400 4500 6300 4500
Connection ~ 6400 4400
Wire Wire Line
	6400 4500 6400 4750
Wire Wire Line
	6400 4750 5700 4750
Wire Wire Line
	5700 4750 5700 4500
Wire Wire Line
	5700 4400 5800 4400
Connection ~ 6400 4500
Wire Wire Line
	5800 4500 5700 4500
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 5700 4400
Text Label 4900 4750 0    50   ~ 0
1V2
Wire Wire Line
	5000 3050 5000 4000
Connection ~ 5700 4300
$Comp
L Device:LED D1
U 1 1 60B20D54
P 2500 3500
F 0 "D1" V 2447 3578 50  0000 L CNN
F 1 "LED" V 2538 3578 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2500 3500 50  0001 C CNN
F 3 "~" H 2500 3500 50  0001 C CNN
F 4 "LTST-C193KRKT-5A" H 2500 3500 50  0001 C CNN "PN"
	1    2500 3500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 3350 2500 3050
$Comp
L Device:R_US R5
U 1 1 60B1374A
P 2500 3800
F 0 "R5" H 2568 3846 50  0000 L CNN
F 1 "1k" H 2568 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2540 3790 50  0001 C CNN
F 3 "~" H 2500 3800 50  0001 C CNN
F 4 "RMCF0603JT1K00" H 2500 3800 50  0001 C CNN "PN"
	1    2500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3950 2500 4300
$Comp
L power:GND #PWR01
U 1 1 60B14EE7
P 1950 4300
F 0 "#PWR01" H 1950 4050 50  0001 C CNN
F 1 "GND" V 1955 4172 50  0000 R CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3050 2500 3050
Wire Wire Line
	1950 4300 2500 4300
Connection ~ 6550 4200
$Comp
L Regulator_Linear:L7805 U1
U 1 1 60B3720C
P 7700 3050
F 0 "U1" H 7700 3292 50  0000 C CNN
F 1 "L7805" H 7700 3201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7725 2900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 7700 3000 50  0001 C CNN
F 4 "TPSM84203EAB" H 7700 3050 50  0001 C CNN "PN"
	1    7700 3050
	1    0    0    -1  
$EndComp
Text Notes 6150 2700 0    50   ~ 0
USE TPSM84203 if possible, else you want a heatsink
Wire Wire Line
	7700 3350 7700 4200
Connection ~ 7700 4200
Text Label 8050 3050 0    50   ~ 0
3V3
Wire Wire Line
	9900 3050 10100 3050
Wire Wire Line
	10500 3450 10500 3050
$Comp
L Device:D_Zener D2
U 1 1 60B1F2BD
P 2900 3500
F 0 "D2" V 2854 3579 50  0000 L CNN
F 1 "10V" V 2945 3579 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 2900 3500 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
F 4 "3SMBJ5925B-TP" H 2900 3500 50  0001 C CNN "PN"
	1    2900 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 3650 2900 4300
Wire Wire Line
	2900 3050 2900 3350
NoConn ~ 6300 3900
NoConn ~ 5800 3900
Wire Wire Line
	10500 3750 10500 4200
$Comp
L Device:C C1
U 1 1 60B9BE29
P 5000 4150
F 0 "C1" H 5115 4196 50  0000 L CNN
F 1 "47uF" H 5115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5038 4000 50  0001 C CNN
F 3 "~" H 5000 4150 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 5000 4150 50  0001 C CNN "PN"
	1    5000 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60BA210E
P 10500 3600
F 0 "C4" H 10615 3646 50  0000 L CNN
F 1 "47uF" H 10615 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 10538 3450 50  0001 C CNN
F 3 "~" H 10500 3600 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 10500 3600 50  0001 C CNN "PN"
	1    10500 3600
	1    0    0    -1  
$EndComp
Text Label 10350 3050 0    50   ~ 0
1V2
$Comp
L power:GND #PWR02
U 1 1 60BB0BC1
P 10500 4200
F 0 "#PWR02" H 10500 3950 50  0001 C CNN
F 1 "GND" V 10505 4072 50  0000 R CNN
F 2 "" H 10500 4200 50  0001 C CNN
F 3 "" H 10500 4200 50  0001 C CNN
	1    10500 4200
	1    0    0    -1  
$EndComp
Connection ~ 10500 4200
$Comp
L Connector:Barrel_Jack J1
U 1 1 60BB26EE
P 1400 3150
F 0 "J1" H 1457 3475 50  0000 C CNN
F 1 "Barrel_Jack" H 1457 3384 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_CUI_PJ-063AH_Horizontal" H 1450 3110 50  0001 C CNN
F 3 "~" H 1450 3110 50  0001 C CNN
F 4 "PJ-063AH" H 1400 3150 50  0001 C CNN "PN"
	1    1400 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3050 1900 3050
Wire Wire Line
	1700 3250 1950 3250
Wire Wire Line
	1950 3250 1950 4300
Connection ~ 1950 4300
$Comp
L Device:Fuse F1
U 1 1 60BB860F
P 2050 3050
F 0 "F1" V 1853 3050 50  0000 C CNN
F 1 "Fuse" V 1944 3050 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1980 3050 50  0001 C CNN
F 3 "~" H 2050 3050 50  0001 C CNN
F 4 "1206L035/30WR" H 2050 3050 50  0001 C CNN "PN"
	1    2050 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 60BDC642
P 8850 3600
F 0 "C5" H 8965 3646 50  0000 L CNN
F 1 "47uF" H 8965 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8888 3450 50  0001 C CNN
F 3 "~" H 8850 3600 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 8850 3600 50  0001 C CNN "PN"
	1    8850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3750 8850 4200
$Comp
L Regulator_Linear:LT1963EQ U3
U 1 1 60F052C9
P 9500 3150
F 0 "U3" H 9500 3517 50  0000 C CNN
F 1 "LT1963EQ" H 9500 3426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 9500 2700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1963fc.pdf" H 9500 2600 50  0001 C CNN
F 4 "LT1963EQ#TRPBF" H 9500 3150 50  0001 C CNN "PN"
	1    9500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3050 9100 3050
Connection ~ 9000 3050
Wire Wire Line
	9100 3150 9000 3150
Wire Wire Line
	9000 3150 9000 3050
Wire Wire Line
	9500 3450 9500 4200
Connection ~ 9500 4200
Wire Wire Line
	9500 4200 10100 4200
Text Notes 8950 2700 0    50   ~ 0
VOUT = 1.21 * (1 + R2/R1) +  (3uA * R2)
$Comp
L Device:R_Small_US R2
U 1 1 60F12BAA
P 10100 3150
F 0 "R2" H 10168 3196 50  0000 L CNN
F 1 "0" H 10168 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10100 3150 50  0001 C CNN
F 3 "~" H 10100 3150 50  0001 C CNN
F 4 "RMCF0603ZT0R00" H 10100 3150 50  0001 C CNN "PN"
	1    10100 3150
	1    0    0    -1  
$EndComp
Connection ~ 10100 3050
Wire Wire Line
	10100 3050 10500 3050
$Comp
L Device:R_Small_US R1
U 1 1 60F13269
P 10100 3450
F 0 "R1" H 10168 3496 50  0000 L CNN
F 1 "1G" H 10168 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10100 3450 50  0001 C CNN
F 3 "~" H 10100 3450 50  0001 C CNN
	1    10100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3250 10100 3300
Wire Wire Line
	10100 3300 9900 3300
Wire Wire Line
	9900 3300 9900 3150
Connection ~ 10100 3300
Wire Wire Line
	10100 3300 10100 3350
Wire Wire Line
	10100 3550 10100 4200
Connection ~ 10100 4200
Wire Wire Line
	10100 4200 10500 4200
Connection ~ 2500 3050
Connection ~ 2500 4300
Connection ~ 2900 3050
Connection ~ 2900 4300
Wire Wire Line
	2500 4300 2900 4300
Wire Wire Line
	2500 3050 2900 3050
$Comp
L Regulator_Linear:LT1963EQ U2
U 1 1 60F2A2D3
P 4000 3150
F 0 "U2" H 4000 3517 50  0000 C CNN
F 1 "LT1963EQ" H 4000 3426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4000 2700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1963fc.pdf" H 4000 2600 50  0001 C CNN
F 4 "LT1963EQ#TRPBF" H 4000 3150 50  0001 C CNN "PN"
	1    4000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 60F2A2DE
P 4750 3150
F 0 "R3" H 4818 3196 50  0000 L CNN
F 1 "5.1k" H 4818 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4750 3150 50  0001 C CNN
F 3 "~" H 4750 3150 50  0001 C CNN
F 4 "RMCF0603FT5K10" H 4750 3150 50  0001 C CNN "PN"
	1    4750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 60F2A2EA
P 4750 3400
F 0 "R4" H 4818 3446 50  0000 L CNN
F 1 "1k" H 4818 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4750 3400 50  0001 C CNN
F 3 "~" H 4750 3400 50  0001 C CNN
F 4 "RMCF0603JT1K00" H 4750 3400 50  0001 C CNN "PN"
	1    4750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3300 4400 3150
Wire Wire Line
	2900 4300 3200 4300
Wire Wire Line
	2900 3050 3200 3050
Wire Wire Line
	3600 3150 3200 3150
Wire Wire Line
	3200 3150 3200 3050
Connection ~ 3200 3050
Wire Wire Line
	3200 3050 3600 3050
Wire Wire Line
	4000 3450 4000 4300
Connection ~ 4000 4300
Text Label 4750 3050 0    50   ~ 0
7V5
Text Label 1750 3050 0    50   ~ 0
9V
$Comp
L Device:C C2
U 1 1 60F5C6AE
P 3200 3800
F 0 "C2" H 3315 3846 50  0000 L CNN
F 1 "47uF" H 3315 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 3238 3650 50  0001 C CNN
F 3 "~" H 3200 3800 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 3200 3800 50  0001 C CNN "PN"
	1    3200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3650 3200 3150
Connection ~ 3200 3150
Wire Wire Line
	3200 3950 3200 4300
Connection ~ 3200 4300
Wire Wire Line
	3200 4300 4000 4300
Wire Wire Line
	8850 3050 8850 3450
Text Label 2500 3050 0    50   ~ 0
9V_FUSED
Text Label 4450 3300 0    50   ~ 0
8VADJ
Connection ~ 4750 3050
Wire Wire Line
	4750 3050 5000 3050
Wire Wire Line
	4750 3250 4750 3300
Wire Wire Line
	4400 3050 4750 3050
Connection ~ 4750 3300
Wire Wire Line
	4750 3500 4750 4300
Connection ~ 4750 4300
Wire Wire Line
	4750 4300 5000 4300
Wire Wire Line
	4000 4300 4750 4300
Wire Wire Line
	4400 3300 4750 3300
$Comp
L Device:C C3
U 1 1 60F98938
P 7200 3600
F 0 "C3" H 7315 3646 50  0000 L CNN
F 1 "47uF" H 7315 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7238 3450 50  0001 C CNN
F 3 "~" H 7200 3600 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 7200 3600 50  0001 C CNN "PN"
	1    7200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3050 7200 3450
Wire Wire Line
	7200 3750 7200 4200
Connection ~ 7200 3050
Wire Wire Line
	7200 3050 7400 3050
Connection ~ 7200 4200
Wire Wire Line
	7200 4200 7700 4200
Wire Wire Line
	7700 4200 8050 4200
Wire Wire Line
	8000 3050 8050 3050
$Comp
L Device:C C6
U 1 1 60FA38F5
P 8050 3600
F 0 "C6" H 8165 3646 50  0000 L CNN
F 1 "47uF" H 8165 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8088 3450 50  0001 C CNN
F 3 "~" H 8050 3600 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 8050 3600 50  0001 C CNN "PN"
	1    8050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3750 8050 4200
Wire Wire Line
	8050 3050 8050 3450
Text Notes 850  2650 0    157  ~ 0
9V Input
Text Notes 9900 2950 0    79   ~ 0
I = 0.3A
Text Notes 5050 3250 0    79   ~ 0
I = 0.1A
Wire Wire Line
	3200 3050 3200 2600
Wire Wire Line
	3200 2600 5800 2600
Wire Wire Line
	5800 2600 5800 3050
Wire Wire Line
	6550 4200 7200 4200
Wire Wire Line
	5800 3050 7200 3050
Connection ~ 5000 4300
Wire Wire Line
	5000 4300 5700 4300
Text Notes 8350 2950 0    79   ~ 0
I = 0.3A
Text Notes 6700 2950 0    79   ~ 0
I = 0.12A
Text Notes 2450 2950 0    79   ~ 0
I = 0.22A
Text Notes 2450 2800 0    79   ~ 0
P = 2W
Text Notes 2950 3400 0    79   ~ 0
3W
Connection ~ 8050 3050
Connection ~ 8050 4200
Wire Wire Line
	8050 3050 8450 3050
Wire Wire Line
	8050 4200 8450 4200
$Comp
L Device:C C7
U 1 1 610182FF
P 8450 3600
F 0 "C7" H 8565 3646 50  0000 L CNN
F 1 "47uF" H 8565 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 8488 3450 50  0001 C CNN
F 3 "~" H 8450 3600 50  0001 C CNN
F 4 "GRM32ER61C476ME15L" H 8450 3600 50  0001 C CNN "PN"
	1    8450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3750 8450 4200
Wire Wire Line
	8450 3050 8450 3450
Connection ~ 8450 3050
Connection ~ 8450 4200
Connection ~ 8850 3050
Wire Wire Line
	8850 3050 9000 3050
Connection ~ 8850 4200
Wire Wire Line
	8850 4200 9500 4200
Wire Wire Line
	8450 3050 8850 3050
Wire Wire Line
	8450 4200 8850 4200
$Comp
L Device:Jumper JP2
U 1 1 6102B890
P 5400 4750
F 0 "JP2" H 5400 5014 50  0000 C CNN
F 1 "Jumper" H 5400 4923 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5400 4750 50  0001 C CNN
F 3 "~" H 5400 4750 50  0001 C CNN
	1    5400 4750
	1    0    0    -1  
$EndComp
Connection ~ 5700 4750
Wire Wire Line
	5100 4750 4900 4750
$Comp
L Device:Jumper JP1
U 1 1 6103922F
P 5300 4000
F 0 "JP1" H 5300 4264 50  0000 C CNN
F 1 "Jumper" H 5300 4173 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5300 4000 50  0001 C CNN
F 3 "~" H 5300 4000 50  0001 C CNN
	1    5300 4000
	1    0    0    -1  
$EndComp
Connection ~ 5000 4000
Connection ~ 5600 4000
Wire Wire Line
	5600 4000 5800 4000
Text Label 5850 4750 0    50   ~ 0
1V2_JUMP
Text Label 5850 3550 0    50   ~ 0
7V5_JUMP
$EndSCHEMATC
