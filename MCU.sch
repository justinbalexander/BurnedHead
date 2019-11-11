EESchema Schematic File Version 4
LIBS:Gamete-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 6
Title "MCU/RAM/SOUND"
Date "2019-11-10"
Rev "A"
Comp "Justin Alexander"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2150 600  0    50   ~ 0
VDD
Text Label 2850 7800 0    50   ~ 0
VSS
$Comp
L Device:R_Small R13
U 1 1 5D562295
P 1200 1650
F 0 "R13" H 1300 1550 50  0000 C CNN
F 1 "10K" H 1300 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1200 1650 50  0001 C CNN
F 3 "~" H 1200 1650 50  0001 C CNN
	1    1200 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 1800 2400 1800
Wire Wire Line
	1200 1550 2400 1550
Text Label 650  2000 2    50   ~ 0
VSS
$Comp
L parts-lib:C100nF C28
U 1 1 5D58780C
P 10100 725
F 0 "C28" H 10150 775 50  0000 L CNN
F 1 "C100nF" H 10150 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10100 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 10100 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 10310 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 10210 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    10100 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 625  9650 625 
Connection ~ 6950 625 
Wire Wire Line
	6950 625  6500 625 
Connection ~ 7400 625 
Wire Wire Line
	7400 625  6950 625 
Connection ~ 7850 625 
Wire Wire Line
	7850 625  7400 625 
Connection ~ 8300 625 
Wire Wire Line
	8300 625  7850 625 
Connection ~ 9650 625 
Wire Wire Line
	10100 825  9650 825 
Connection ~ 6950 825 
Wire Wire Line
	6950 825  6500 825 
Connection ~ 7400 825 
Wire Wire Line
	7400 825  6950 825 
Connection ~ 7850 825 
Wire Wire Line
	7850 825  7400 825 
Connection ~ 8300 825 
Wire Wire Line
	8300 825  7850 825 
Connection ~ 9650 825 
Text Label 4925 625  0    50   ~ 0
VDD
Text Label 4925 825  0    50   ~ 0
VSS
Text Notes 6050 575  0    50   ~ 0
NEXT TO MCU VDD PINS
$Comp
L parts-lib:C2.2uF C11
U 1 1 5D5938DA
P 1500 1750
F 0 "C11" H 1592 1796 50  0000 L CNN
F 1 "C2.2uF" H 1500 1650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1500 1750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX5R7BB225_C106853.pdf" H 1500 1750 50  0001 C CNN
F 4 "CC0603KRX5R7BB225" H 1710 2020 50  0001 C CNN "Part No."
F 5 "Yageo" H 1610 1920 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 0   0   50  0001 C CNN "Distributor"
F 7 "C106853" H 0   0   50  0001 C CNN "Distributor Part No."
	1    1500 1750
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C2.2uF C12
U 1 1 5D59393A
P 1800 1900
F 0 "C12" H 1892 1946 50  0000 L CNN
F 1 "C2.2uF" H 1850 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1800 1900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX5R7BB225_C106853.pdf" H 1800 1900 50  0001 C CNN
F 4 "CC0603KRX5R7BB225" H 2010 2170 50  0001 C CNN "Part No."
F 5 "Yageo" H 1910 2070 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 0   0   50  0001 C CNN "Distributor"
F 7 "C106853" H 0   0   50  0001 C CNN "Distributor Part No."
	1    1800 1900
	1    0    0    -1  
$EndComp
Connection ~ 6050 825 
Wire Wire Line
	6500 625  6050 625 
Connection ~ 6050 625 
Wire Wire Line
	1800 2000 1500 2000
Wire Wire Line
	1200 1750 1200 2000
Connection ~ 1200 2000
Wire Wire Line
	1500 1850 1500 2000
Connection ~ 1500 2000
Wire Wire Line
	1500 2000 1200 2000
$Comp
L parts-lib:C10uF C14
U 1 1 5D59E774
P 5550 725
F 0 "C14" H 5642 771 50  0000 L CNN
F 1 "C10uF" H 5642 680 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5550 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC1206ZKY5V8BB106_C106238.pdf" H 5550 725 50  0001 C CNN
F 4 "CC1206ZKY5V8BB106" H 5760 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 5660 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C106238" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    5550 725 
	1    0    0    -1  
$EndComp
Connection ~ 5550 625 
Wire Wire Line
	5550 625  6050 625 
Connection ~ 5550 825 
Wire Wire Line
	5550 825  6050 825 
$Comp
L parts-lib:C1uF C8
U 1 1 5D5A2FE4
P 800 900
F 0 "C8" H 892 946 50  0000 L CNN
F 1 "C1uF" H 892 855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 800 900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R7BB105_C106248.pdf" H 800 900 50  0001 C CNN
F 4 "CC0603KRX7R7BB105" H 1010 1170 50  0001 C CNN "Part No."
F 5 "Yageo" H 910 1070 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -50 50  50  0001 C CNN "Distributor"
F 7 "C272771" H -50 50  50  0001 C CNN "Distributor Part No."
	1    800  900 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C10
U 1 1 5D5A3060
P 1150 900
F 0 "C10" H 1200 950 50  0000 L CNN
F 1 "C100nF" H 1200 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1150 900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 1150 900 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 1360 1170 50  0001 C CNN "Part No."
F 5 "Yageo" H 1260 1070 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -50 50  50  0001 C CNN "Distributor"
F 7 "C149620" H -50 50  50  0001 C CNN "Distributor Part No."
	1    1150 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 800  800  800 
Connection ~ 800  800 
Wire Wire Line
	800  800  550  800 
Wire Wire Line
	1150 1000 800  1000
Connection ~ 800  1000
Wire Wire Line
	800  1000 550  1000
Text Label 550  800  0    50   ~ 0
VDD
Text Label 550  1000 0    50   ~ 0
VSS
Text Notes 750  750  0    50   ~ 0
NEXT TO VDDA PIN
Wire Notes Line
	500  650  1600 650 
Wire Notes Line
	1600 650  1600 1050
Wire Notes Line
	1600 1050 500  1050
Wire Notes Line
	500  1050 500  650 
Text Notes 1500 2150 0    50   ~ 0
ESR < 2 ohm
Wire Notes Line
	1400 2200 2150 2200
Wire Notes Line
	2150 2200 2150 1600
Wire Notes Line
	2150 1600 1400 1600
Wire Notes Line
	1400 1600 1400 2200
Text Label 9750 1125 0    50   ~ 0
VDD
Wire Wire Line
	4800 2900 5000 2900
Text Label 5000 2900 2    50   ~ 0
SWO
Text Label 5075 2200 2    50   ~ 0
SWDIO
$Comp
L Device:R_Small R14
U 1 1 5D5FB59F
P 1875 850
F 0 "R14" H 2025 750 50  0000 C CNN
F 1 "10K" H 2025 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1875 850 50  0001 C CNN
F 3 "~" H 1875 850 50  0001 C CNN
	1    1875 850 
	-1   0    0    1   
$EndComp
Text Label 2250 1950 0    50   ~ 0
VDD
Wire Wire Line
	2400 1950 2250 1950
Connection ~ 2400 600 
Wire Wire Line
	1875 1450 1875 950 
Wire Wire Line
	1875 750  1875 600 
Text Label 2150 1350 0    50   ~ 0
nSRST
NoConn ~ 2400 2400
$Comp
L parts-lib:XO_8MHz_SMD U5
U 1 1 5D63914F
P 1350 2600
F 0 "U5" H 1300 2850 50  0000 L CNN
F 1 "XO_8MHz_SMD" H 1100 2350 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 1750 1850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/SiTime-SiT8008AI-22-33E-8-000000D_C39097.pdf" H 2150 1750 50  0001 C CNN
F 4 "SiT8008AI-22-33E-8.000000D" H 1600 1650 50  0001 C CNN "Part No."
F 5 "SiTime" H 1100 1550 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 0   0   50  0001 C CNN "Distributor"
F 7 "C39097" H 0   0   50  0001 C CNN "Distributor Part No."
	1    1350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2500 1650 2300
Wire Wire Line
	1650 2300 1050 2300
$Comp
L Device:R_Small R12
U 1 1 5D63C954
P 1050 2400
F 0 "R12" H 1175 2450 50  0000 C CNN
F 1 "1K" H 1175 2375 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1050 2400 50  0001 C CNN
F 3 "~" H 1050 2400 50  0001 C CNN
	1    1050 2400
	-1   0    0    1   
$EndComp
Connection ~ 1050 2300
Text Label 900  2300 0    50   ~ 0
VDD
Wire Wire Line
	1650 2700 1725 2700
Wire Wire Line
	1725 2700 1725 2300
Wire Wire Line
	1725 2300 2400 2300
Text Label 900  2700 0    50   ~ 0
VSS
$Comp
L parts-lib:C100nF C9
U 1 1 5D6491CC
P 800 2500
F 0 "C9" H 600 2575 50  0000 L CNN
F 1 "C100nF" H 475 2425 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 800 2500 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 800 2500 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 1010 2770 50  0001 C CNN "Part No."
F 5 "Yageo" H 910 2670 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 0   0   50  0001 C CNN "Distributor"
F 7 "C149620" H 0   0   50  0001 C CNN "Distributor Part No."
	1    800  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2300 800  2400
Wire Wire Line
	800  2300 1050 2300
Wire Wire Line
	800  2600 800  2700
Wire Wire Line
	800  2700 1050 2700
Text Label 2400 2500 2    50   ~ 0
A10
Text Label 2400 2600 2    50   ~ 0
A11
Text Label 2400 2700 2    50   ~ 0
A12
Text Label 2400 2900 2    50   ~ 0
BA0
Text Label 2400 3000 2    50   ~ 0
BA1
Text Label 8825 3350 2    50   ~ 0
A0
Text Label 8825 3450 2    50   ~ 0
A1
Text Label 8825 3550 2    50   ~ 0
A2
Text Label 8825 3650 2    50   ~ 0
A3
Text Label 8825 3750 2    50   ~ 0
A4
Text Label 8825 3850 2    50   ~ 0
A5
Text Label 8825 3950 2    50   ~ 0
A6
Text Label 8825 4050 2    50   ~ 0
A7
Text Label 8825 4150 2    50   ~ 0
A8
Text Label 8825 4250 2    50   ~ 0
A9
Text Label 8825 4350 2    50   ~ 0
A10
Text Label 8825 4450 2    50   ~ 0
A11
Text Label 8825 4550 2    50   ~ 0
A12
Text Label 8825 4750 2    50   ~ 0
BA0
Text Label 8825 4850 2    50   ~ 0
BA1
Text Label 8825 5050 2    50   ~ 0
SDNRAS
Text Label 8825 5150 2    50   ~ 0
SDNCAS
Text Label 8825 5250 2    50   ~ 0
SDNWE
Text Label 8825 5350 2    50   ~ 0
SDNCS
Text Label 8825 5850 2    50   ~ 0
SDCLK
Text Label 8825 5950 2    50   ~ 0
SDCKE
Wire Wire Line
	10225 6350 10400 6350
Text Label 10400 6350 2    50   ~ 0
VSS
Wire Wire Line
	10225 3000 10375 3000
Text Label 10375 3000 2    50   ~ 0
VDD
Text Label 2400 3300 2    50   ~ 0
SDCLK
Text Label 2400 4000 2    50   ~ 0
SDNCAS
Text Label 2400 4200 2    50   ~ 0
A0
Text Label 2400 4300 2    50   ~ 0
A1
Text Label 2400 4400 2    50   ~ 0
A2
Text Label 2400 4500 2    50   ~ 0
A3
Text Label 2400 4600 2    50   ~ 0
A4
Text Label 2400 4700 2    50   ~ 0
A5
Text Label 2400 5300 2    50   ~ 0
SDNRAS
Text Label 2400 5400 2    50   ~ 0
A6
Text Label 2400 5500 2    50   ~ 0
A7
Text Label 2400 5600 2    50   ~ 0
A8
Text Label 2400 5700 2    50   ~ 0
A9
Text Label 8825 5550 2    50   ~ 0
DQM0
Text Label 8825 5650 2    50   ~ 0
DQM1
Text Label 2400 5900 2    50   ~ 0
DQM0
Text Label 2400 6000 2    50   ~ 0
DQM1
Text Label 2400 6600 2    50   ~ 0
D4
Text Label 2400 6700 2    50   ~ 0
D5
Text Label 2400 6800 2    50   ~ 0
D6
Text Label 2400 6900 2    50   ~ 0
D7
Text Label 2400 7000 2    50   ~ 0
D8
Text Label 2400 7100 2    50   ~ 0
D9
Text Label 2400 7200 2    50   ~ 0
D10
Text Label 2400 7300 2    50   ~ 0
D11
Text Label 2400 7400 2    50   ~ 0
D12
Text Label 4800 1600 0    50   ~ 0
SDNWE
Text Label 4800 4700 0    50   ~ 0
SDNCS
Text Label 4800 4800 0    50   ~ 0
SDCKE
Text Label 4800 6000 0    50   ~ 0
D2
Text Label 4800 6100 0    50   ~ 0
D3
Text Label 4800 6800 0    50   ~ 0
D13
Text Label 4800 6900 0    50   ~ 0
D14
Text Label 4800 7000 0    50   ~ 0
D15
Text Label 4800 7400 0    50   ~ 0
D0
Text Label 4800 7500 0    50   ~ 0
D1
Text Label 2400 3100 2    50   ~ 0
LCD_R7
Text Label 2400 3200 2    50   ~ 0
LCD_CLK
Text Label 2400 3500 2    50   ~ 0
LCD_G3
Text Label 2400 3600 2    50   ~ 0
LCD_B3
Text Label 2400 5200 2    50   ~ 0
LCD_DE
Text Label 4800 1000 0    50   ~ 0
LCD_NRESET
Text Label 4800 1200 0    50   ~ 0
LCD_B5
Text Label 4800 1300 0    50   ~ 0
LCD_VSYNC
Text Label 4800 1500 0    50   ~ 0
LCD_G2
Text Label 4800 1700 0    50   ~ 0
LCD_R6
Text Label 4800 1800 0    50   ~ 0
LCD_R5
Text Label 4800 1900 0    50   ~ 0
LCD_B4
Text Label 4800 2000 0    50   ~ 0
LCD_R4
Text Label 4800 2600 0    50   ~ 0
LCD_R3
Text Label 4800 3400 0    50   ~ 0
LCD_B6
Text Label 4800 3500 0    50   ~ 0
LCD_B7
Text Label 4800 3600 0    50   ~ 0
LCD_G4
Text Label 4800 3700 0    50   ~ 0
LCD_G5
Text Label 4800 5000 0    50   ~ 0
LCD_G6
Text Label 4800 6300 0    50   ~ 0
LCD_G7
Text Label 7275 1275 2    50   ~ 0
LCD_B0
Text Label 7275 1375 2    50   ~ 0
LCD_B1
Text Label 7275 1475 2    50   ~ 0
LCD_B2
Text Label 7275 1575 2    50   ~ 0
LCD_B3
Text Label 7275 1675 2    50   ~ 0
LCD_B4
Text Label 7275 1775 2    50   ~ 0
LCD_B5
Text Label 7275 1875 2    50   ~ 0
LCD_B6
Text Label 7275 1975 2    50   ~ 0
LCD_B7
Wire Wire Line
	7275 1275 7325 1275
Wire Wire Line
	7275 1375 7325 1375
Wire Wire Line
	7275 1475 7325 1475
Wire Wire Line
	7275 1575 7325 1575
Wire Wire Line
	7275 1675 7325 1675
Wire Wire Line
	7275 1775 7325 1775
Wire Wire Line
	7275 1875 7325 1875
Wire Wire Line
	7275 1975 7325 1975
Entry Wire Line
	7325 1275 7425 1375
Entry Wire Line
	7325 1375 7425 1475
Entry Wire Line
	7325 1475 7425 1575
Entry Wire Line
	7325 1575 7425 1675
Entry Wire Line
	7325 1675 7425 1775
Entry Wire Line
	7325 1775 7425 1875
Entry Wire Line
	7325 1875 7425 1975
Entry Wire Line
	7325 1975 7425 2075
Text Label 6300 1275 2    50   ~ 0
LCD_R0
Text Label 6300 1375 2    50   ~ 0
LCD_R1
Text Label 6300 1475 2    50   ~ 0
LCD_R2
Text Label 6300 1575 2    50   ~ 0
LCD_R3
Text Label 6300 1675 2    50   ~ 0
LCD_R4
Text Label 6300 1775 2    50   ~ 0
LCD_R5
Text Label 6300 1875 2    50   ~ 0
LCD_R6
Text Label 6300 1975 2    50   ~ 0
LCD_R7
Wire Wire Line
	6300 1275 6350 1275
Wire Wire Line
	6300 1375 6350 1375
Wire Wire Line
	6300 1475 6350 1475
Wire Wire Line
	6300 1575 6350 1575
Wire Wire Line
	6300 1675 6350 1675
Wire Wire Line
	6300 1775 6350 1775
Wire Wire Line
	6300 1875 6350 1875
Wire Wire Line
	6300 1975 6350 1975
Entry Wire Line
	6350 1275 6450 1375
Entry Wire Line
	6350 1375 6450 1475
Entry Wire Line
	6350 1475 6450 1575
Entry Wire Line
	6350 1575 6450 1675
Entry Wire Line
	6350 1675 6450 1775
Entry Wire Line
	6350 1775 6450 1875
Entry Wire Line
	6350 1875 6450 1975
Entry Wire Line
	6350 1975 6450 2075
Text Label 6775 1275 2    50   ~ 0
LCD_G0
Text Label 6775 1375 2    50   ~ 0
LCD_G1
Text Label 6775 1475 2    50   ~ 0
LCD_G2
Text Label 6775 1575 2    50   ~ 0
LCD_G3
Text Label 6775 1675 2    50   ~ 0
LCD_G4
Text Label 6775 1775 2    50   ~ 0
LCD_G5
Text Label 6775 1875 2    50   ~ 0
LCD_G6
Text Label 6775 1975 2    50   ~ 0
LCD_G7
Wire Wire Line
	6775 1275 6825 1275
Wire Wire Line
	6775 1375 6825 1375
Wire Wire Line
	6775 1475 6825 1475
Wire Wire Line
	6775 1575 6825 1575
Wire Wire Line
	6775 1675 6825 1675
Wire Wire Line
	6775 1775 6825 1775
Wire Wire Line
	6775 1875 6825 1875
Wire Wire Line
	6775 1975 6825 1975
Entry Wire Line
	6825 1275 6925 1375
Entry Wire Line
	6825 1375 6925 1475
Entry Wire Line
	6825 1475 6925 1575
Entry Wire Line
	6825 1575 6925 1675
Entry Wire Line
	6825 1675 6925 1775
Entry Wire Line
	6825 1775 6925 1875
Entry Wire Line
	6825 1875 6925 1975
Entry Wire Line
	6825 1975 6925 2075
Text HLabel 6375 2150 0    50   Input ~ 0
LCD_R[0...7]
Text HLabel 6925 2200 0    50   Input ~ 0
LCD_G[0...7]
Text HLabel 7425 2275 0    50   Input ~ 0
LCD_B[0...7]
Text Label 4800 1100 0    50   ~ 0
LCD_DIM
Text Label 7900 1225 2    50   ~ 0
LCD_DIM
Text Label 7900 1325 2    50   ~ 0
LCD_NRESET
Text Label 7900 1425 2    50   ~ 0
LCD_DE
Text Label 7900 1525 2    50   ~ 0
LCD_CLK
Text Label 4800 4900 0    50   ~ 0
LCD_HSYNC
Text Label 7900 1625 2    50   ~ 0
LCD_VSYNC
Text Label 7900 1725 2    50   ~ 0
LCD_HSYNC
Wire Wire Line
	7900 1225 7950 1225
Wire Wire Line
	7900 1325 7950 1325
Wire Wire Line
	7900 1425 7950 1425
Wire Wire Line
	7900 1525 7950 1525
Wire Wire Line
	7900 1625 7950 1625
Wire Wire Line
	7900 1725 7950 1725
Text HLabel 7950 1225 2    50   Input ~ 0
LCD_DIM
Text HLabel 7950 1325 2    50   Input ~ 0
LCD_NRESET
Text HLabel 7950 1425 2    50   Input ~ 0
LCD_DE
Text HLabel 7950 1525 2    50   Input ~ 0
LCD_CLK
Text HLabel 7950 1625 2    50   Input ~ 0
LCD_VSYNC
Text HLabel 7950 1725 2    50   Input ~ 0
LCD_HSYNC
Text Notes 7475 2150 0    50   ~ 0
LCD CONTROL SIGNALS\nRGB565 Parallel
Wire Wire Line
	6350 1475 6350 1375
Wire Wire Line
	6350 1275 6350 1200
Wire Wire Line
	6350 1375 6350 1275
Connection ~ 6350 1275
Connection ~ 6350 1375
Wire Wire Line
	6825 1375 6825 1275
Connection ~ 6825 1275
$Comp
L Device:R_Small R16
U 1 1 5D69B228
P 5800 1450
F 0 "R16" V 5875 1300 50  0000 C CNN
F 1 "10K" V 5875 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5800 1450 50  0001 C CNN
F 3 "~" H 5800 1450 50  0001 C CNN
	1    5800 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5D69B280
P 5950 1450
F 0 "R17" V 6025 1300 50  0000 C CNN
F 1 "10K" V 6025 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5950 1450 50  0001 C CNN
F 3 "~" H 5950 1450 50  0001 C CNN
	1    5950 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1550 5800 1550
Connection ~ 5800 1550
Wire Wire Line
	5800 1550 5950 1550
Text Label 5800 1725 1    50   ~ 0
VSS
Wire Wire Line
	5800 1550 5800 1725
Wire Wire Line
	5950 1350 5950 1200
Wire Wire Line
	5950 1200 6350 1200
Wire Wire Line
	5800 1350 5800 1175
Wire Wire Line
	5800 1175 6825 1175
Wire Wire Line
	6825 1175 6825 1275
Wire Notes Line
	8525 1125 5525 1125
Text Label 10225 3350 0    50   ~ 0
D0
Text Label 10225 3450 0    50   ~ 0
D1
Text Label 10225 3550 0    50   ~ 0
D2
Text Label 10225 3650 0    50   ~ 0
D3
Text Label 10225 3750 0    50   ~ 0
D4
Text Label 10225 3850 0    50   ~ 0
D5
Text Label 10225 3950 0    50   ~ 0
D6
Text Label 10225 4050 0    50   ~ 0
D7
Text Label 10225 4150 0    50   ~ 0
D8
Text Label 10225 4250 0    50   ~ 0
D9
Text Label 10225 4350 0    50   ~ 0
D10
Text Label 10225 4450 0    50   ~ 0
D11
Text Label 10225 4550 0    50   ~ 0
D12
Text Label 10225 4650 0    50   ~ 0
D13
Text Label 10225 4750 0    50   ~ 0
D14
Text Label 10225 4850 0    50   ~ 0
D15
Text HLabel 1750 600  0    50   Input ~ 0
VDD
Text HLabel 2750 7800 0    50   Input ~ 0
VSS
Connection ~ 6500 825 
Connection ~ 6500 625 
Wire Wire Line
	10025 6425 9700 6425
Connection ~ 9375 6425
Connection ~ 9700 6425
Wire Wire Line
	9700 6425 9375 6425
Wire Wire Line
	10025 6625 9700 6625
Connection ~ 9375 6625
Connection ~ 9700 6625
Wire Wire Line
	9700 6625 9375 6625
Text Label 8875 6425 0    50   ~ 0
VDD
Text Label 8875 6625 0    50   ~ 0
VSS
Wire Notes Line
	10425 2700 10425 6700
Wire Notes Line
	10425 6700 8475 6700
Wire Notes Line
	8475 6700 8475 2700
Wire Notes Line
	8475 2700 10425 2700
Text Notes 8525 2825 0    50   ~ 0
SDRAM
Wire Wire Line
	10225 3000 10225 3050
$Comp
L parts-lib-SnapEDA:MT48LC16M16A2 U7
U 1 1 5D6778E0
P 9525 4650
F 0 "U7" H 9525 6517 50  0000 C CNN
F 1 "MT48LC16M16A2" H 9525 6426 50  0000 C CNN
F 2 "parts-lib-SnapEDA:MT48LC16M16A2TG-6A_IT" H 9525 4650 50  0001 L BNN
F 3 "https://datasheet.lcsc.com/szlcsc/Micron-Tech-MT48LC16M16A2P-6A-IT-G_C26393.pdf" H 9525 4650 50  0001 L BNN
F 4 "Micron Tech" H 9525 4650 50  0001 L BNN "Manufacturer"
F 5 "C26393" H 9525 4650 50  0001 L BNN "LCSC Part No."
F 6 "MT48LC16M16A2P-6A-IT-G" H 9525 4650 50  0001 L BNN "Part No."
	1    9525 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10225 6250 10225 6350
Wire Wire Line
	10225 6150 10225 6250
Connection ~ 10225 6250
Wire Wire Line
	10225 3150 10225 3050
Connection ~ 10225 3050
Wire Wire Line
	8750 825  8300 825 
Connection ~ 8750 825 
Wire Wire Line
	8750 625  8300 625 
Connection ~ 8750 625 
Wire Wire Line
	9650 825  9200 825 
Wire Wire Line
	9200 825  8750 825 
Connection ~ 9200 825 
Wire Wire Line
	9650 625  9200 625 
Wire Wire Line
	9200 625  8750 625 
Connection ~ 9200 625 
$Comp
L parts-lib:C100nF C25
U 1 1 5D68B9DB
P 9650 725
F 0 "C25" H 9700 775 50  0000 L CNN
F 1 "C100nF" H 9700 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9650 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9650 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 9860 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 9760 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    9650 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C23
U 1 1 5D68BAD7
P 9200 725
F 0 "C23" H 9250 775 50  0000 L CNN
F 1 "C100nF" H 9250 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9200 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9200 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 9410 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 9310 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    9200 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C21
U 1 1 5D68BBD3
P 8750 725
F 0 "C21" H 8800 775 50  0000 L CNN
F 1 "C100nF" H 8800 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8750 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8750 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 8960 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 8860 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    8750 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C20
U 1 1 5D68BD8C
P 8300 725
F 0 "C20" H 8350 775 50  0000 L CNN
F 1 "C100nF" H 8350 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8300 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8300 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 8510 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 8410 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    8300 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C19
U 1 1 5D68BEC5
P 7850 725
F 0 "C19" H 7900 775 50  0000 L CNN
F 1 "C100nF" H 7900 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7850 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 7850 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 8060 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 7960 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    7850 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C18
U 1 1 5D68C03D
P 7400 725
F 0 "C18" H 7450 775 50  0000 L CNN
F 1 "C100nF" H 7450 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7400 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 7400 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 7610 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 7510 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    7400 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C17
U 1 1 5D68C135
P 6950 725
F 0 "C17" H 7000 775 50  0000 L CNN
F 1 "C100nF" H 7000 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6950 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 6950 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 7160 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 7060 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    6950 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C16
U 1 1 5D68C2F0
P 6500 725
F 0 "C16" H 6550 775 50  0000 L CNN
F 1 "C100nF" H 6550 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6500 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC1206KRX7R9BB104_C82601.pdf" H 6500 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 6710 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 6610 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    6500 725 
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C15
U 1 1 5D68C3E6
P 6050 725
F 0 "C15" H 6100 775 50  0000 L CNN
F 1 "C100nF" H 6100 675 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6050 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 6050 725 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 6260 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 6160 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -25 -75 50  0001 C CNN "Distributor"
F 7 "C149620" H -25 -75 50  0001 C CNN "Distributor Part No."
	1    6050 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8875 6425 9075 6425
Wire Wire Line
	8875 6625 9075 6625
$Comp
L parts-lib:C100nF C22
U 1 1 5D68DDA2
P 9075 6525
F 0 "C22" H 9167 6571 50  0000 L CNN
F 1 "C100nF" H 9167 6480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9075 6525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9075 6525 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 9285 6795 50  0001 C CNN "Part No."
F 5 "Yageo" H 9185 6695 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 9185 6695 50  0001 C CNN "Distributor"
F 7 "C149620" H 9185 6695 50  0001 C CNN "Distributor Part No."
	1    9075 6525
	1    0    0    -1  
$EndComp
Connection ~ 9075 6425
Wire Wire Line
	9075 6425 9375 6425
Connection ~ 9075 6625
Wire Wire Line
	9075 6625 9375 6625
$Comp
L parts-lib:C100nF C24
U 1 1 5D68DE76
P 9375 6525
F 0 "C24" H 9467 6571 50  0000 L CNN
F 1 "C100nF" H 9467 6480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9375 6525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9375 6525 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 9585 6795 50  0001 C CNN "Part No."
F 5 "Yageo" H 9485 6695 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 9485 6695 50  0001 C CNN "Distributor"
F 7 "C149620" H 9485 6695 50  0001 C CNN "Distributor Part No."
	1    9375 6525
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C26
U 1 1 5D68DF70
P 9700 6525
F 0 "C26" H 9792 6571 50  0000 L CNN
F 1 "C100nF" H 9792 6480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9700 6525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 9700 6525 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 9910 6795 50  0001 C CNN "Part No."
F 5 "Yageo" H 9810 6695 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 9810 6695 50  0001 C CNN "Distributor"
F 7 "C149620" H 9810 6695 50  0001 C CNN "Distributor Part No."
	1    9700 6525
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C100nF C27
U 1 1 5D68E066
P 10025 6525
F 0 "C27" H 10117 6571 50  0000 L CNN
F 1 "C100nF" H 10117 6480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10025 6525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 10025 6525 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 10235 6795 50  0001 C CNN "Part No."
F 5 "Yageo" H 10135 6695 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 10135 6695 50  0001 C CNN "Distributor"
F 7 "C149620" H 10135 6695 50  0001 C CNN "Distributor Part No."
	1    10025 6525
	1    0    0    -1  
$EndComp
Text HLabel 4800 3900 2    50   Input ~ 0
POWER_EN
Text HLabel 2400 2800 0    50   Input ~ 0
ON_SWITCH_5V
Text HLabel 4800 5500 2    50   Input ~ 0
SDMMC_CK
Text HLabel 4800 6200 2    50   Input ~ 0
SDMMC_CMD
Text HLabel 4800 5800 2    50   Input ~ 0
SDMMC_DETECT
Text HLabel 5350 5150 2    50   Input ~ 0
SDMMC_D[0...3]
Entry Wire Line
	5250 5100 5350 5200
Entry Wire Line
	5250 5200 5350 5300
Entry Wire Line
	5250 5300 5350 5400
Entry Wire Line
	5250 5400 5350 5500
Wire Wire Line
	5250 5100 4800 5100
Wire Wire Line
	4800 5200 5250 5200
Wire Wire Line
	4800 5300 5250 5300
Wire Wire Line
	4800 5400 5250 5400
Wire Bus Line
	6450 2150 6375 2150
Wire Wire Line
	7325 1475 7325 1375
Connection ~ 7325 1375
Wire Wire Line
	7325 1150 7325 1275
Wire Wire Line
	7325 1375 7325 1275
Connection ~ 7325 1275
$Comp
L Device:R_Small R15
U 1 1 5D89A0E9
P 5650 1450
F 0 "R15" V 5725 1300 50  0000 C CNN
F 1 "10K" V 5725 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5650 1450 50  0001 C CNN
F 3 "~" H 5650 1450 50  0001 C CNN
	1    5650 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1350 5650 1150
Wire Wire Line
	5650 1150 7325 1150
Wire Notes Line
	8525 2325 5525 2325
Wire Notes Line
	5525 1125 5525 2325
Wire Notes Line
	8525 1125 8525 2325
Text Label 4800 5100 0    50   ~ 0
SDMMC_D0
Text Label 4800 5200 0    50   ~ 0
SDMMC_D1
Text Label 4800 5300 0    50   ~ 0
SDMMC_D2
Text Label 4800 5400 0    50   ~ 0
SDMMC_D3
Wire Wire Line
	1750 600  1875 600 
Connection ~ 1875 600 
Wire Wire Line
	1875 1450 2400 1450
$Comp
L parts-lib:C100nF C13
U 1 1 5D913825
P 2075 825
F 0 "C13" H 2125 875 50  0000 L CNN
F 1 "C100nF" H 2100 750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2075 825 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 2075 825 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 2285 1095 50  0001 C CNN "Part No."
F 5 "Yageo" H 2185 995 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 875 -25 50  0001 C CNN "Distributor"
F 7 "C149620" H 875 -25 50  0001 C CNN "Distributor Part No."
	1    2075 825 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 600  2075 600 
Wire Wire Line
	2075 925  2075 1350
Wire Wire Line
	2075 1350 2400 1350
Wire Wire Line
	2075 725  2075 600 
Connection ~ 2075 600 
Wire Wire Line
	2075 600  2400 600 
Wire Wire Line
	650  2000 925  2000
$Comp
L Switch:SW_Push SW2
U 1 1 5D93C29C
P 925 1550
F 0 "SW2" V 1100 1775 50  0000 R CNN
F 1 "SW_Push" V 825 1950 50  0001 R CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 925 1750 50  0001 C CNN
F 3 "" H 925 1750 50  0001 C CNN
	1    925  1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2075 1350 925  1350
Connection ~ 2075 1350
Wire Wire Line
	925  1750 925  2000
Connection ~ 925  2000
Wire Wire Line
	925  2000 1200 2000
Text HLabel 4800 4300 2    50   Input ~ 0
LEFT_STICK_X
Text HLabel 4800 4400 2    50   Input ~ 0
LEFT_STICK_Y
Text HLabel 4800 4500 2    50   Input ~ 0
RIGHT_STICK_X
Text HLabel 4800 4600 2    50   Input ~ 0
RIGHT_STICK_Y
Text HLabel 2400 5100 0    50   Input ~ 0
BUT_A
Text HLabel 2400 5000 0    50   Input ~ 0
BUT_B
Text HLabel 2400 4900 0    50   Input ~ 0
BUT_X
Text HLabel 2400 4800 0    50   Input ~ 0
BUT_Y
Text HLabel 4800 7300 2    50   Input ~ 0
BUT_U
Text HLabel 4800 4000 2    50   Input ~ 0
BUT_D
Text HLabel 4800 4100 2    50   Input ~ 0
BUT_L
Text HLabel 4800 7200 2    50   Input ~ 0
BUT_R
Text HLabel 4800 3800 2    50   Input ~ 0
BUT_LSTICK
Text HLabel 4800 900  2    50   Input ~ 0
BUT_RSTICK
Text HLabel 2400 6100 0    50   Input ~ 0
BUT_SEL
Text HLabel 2400 6200 0    50   Input ~ 0
BUT_START
Text HLabel 2400 6300 0    50   Input ~ 0
BUT_RTRIG
Text HLabel 4800 2400 2    50   Input ~ 0
BUT_LTRIG
Text HLabel 4800 2100 2    50   Input ~ 0
BATT_STAT
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5D97C5D7
P 2400 1800
F 0 "#FLG04" H 2400 1875 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1875 50  0000 C CNN
F 2 "" H 2400 1800 50  0001 C CNN
F 3 "~" H 2400 1800 50  0001 C CNN
	1    2400 1800
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5D97C6BB
P 2400 1650
F 0 "#FLG03" H 2400 1725 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1823 50  0001 C CNN
F 2 "" H 2400 1650 50  0001 C CNN
F 3 "~" H 2400 1650 50  0001 C CNN
	1    2400 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 1650 2400 1650
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J2
U 1 1 5D8BCE21
P 9925 1725
F 0 "J2" H 9825 2300 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 9481 1680 50  0001 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 9975 1175 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 9575 475 50  0001 C CNN
	1    9925 1725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9925 1125 9750 1125
NoConn ~ 9425 1925
Text Label 10225 2425 2    50   ~ 0
VSS
Wire Wire Line
	9925 2325 9925 2425
Wire Wire Line
	9925 2425 10025 2425
Wire Wire Line
	10025 2325 10025 2425
Connection ~ 10025 2425
Wire Wire Line
	10025 2425 10225 2425
Text Label 9175 1425 0    50   ~ 0
nSRST
Wire Wire Line
	9425 1425 9175 1425
Wire Wire Line
	9425 1625 9175 1625
Wire Wire Line
	9425 1725 9175 1725
Wire Wire Line
	9425 1825 9175 1825
Wire Wire Line
	4800 2200 5075 2200
Wire Wire Line
	4800 2300 5075 2300
Text Label 5075 2300 2    50   ~ 0
SWCLK
Text Label 9175 1725 0    50   ~ 0
SWDIO
Text Label 9175 1625 0    50   ~ 0
SWCLK
Text Label 9175 1825 0    50   ~ 0
SWO
Text Label 1725 2700 0    50   ~ 0
XO_OUT
Text Label 900  2575 0    50   ~ 0
XO_EN
Wire Wire Line
	1050 2500 900  2500
Wire Wire Line
	900  2500 900  2575
Connection ~ 1050 2500
Wire Wire Line
	2400 1050 2400 600 
Wire Wire Line
	2400 1150 2400 1050
Connection ~ 2400 1050
Connection ~ 3600 7800
Connection ~ 3400 600 
Wire Wire Line
	3600 7800 3500 7800
Connection ~ 3500 7800
Wire Wire Line
	3300 600  3400 600 
Connection ~ 3300 600 
Connection ~ 2400 1650
Wire Wire Line
	3200 600  3300 600 
Connection ~ 3200 600 
Wire Wire Line
	3500 7800 3400 7800
Connection ~ 3400 7800
Wire Wire Line
	2400 600  2700 600 
Connection ~ 2700 600 
Wire Wire Line
	3100 600  3200 600 
Connection ~ 3100 600 
Wire Wire Line
	3400 7800 3300 7800
Connection ~ 3300 7800
Wire Wire Line
	3000 600  3100 600 
Connection ~ 3000 600 
Wire Wire Line
	3300 7800 3200 7800
Connection ~ 3200 7800
Wire Wire Line
	2900 600  3000 600 
Connection ~ 2900 600 
Wire Wire Line
	2800 600  2900 600 
Wire Wire Line
	2700 600  2800 600 
Connection ~ 2800 600 
Wire Wire Line
	2750 7800 3100 7800
Wire Wire Line
	3200 7800 3100 7800
Connection ~ 3100 7800
Wire Wire Line
	3700 600  3800 600 
Connection ~ 3700 600 
Wire Wire Line
	3600 600  3700 600 
Connection ~ 3600 600 
Wire Wire Line
	4000 7800 3900 7800
Connection ~ 3900 7800
Wire Wire Line
	3900 7800 3800 7800
Connection ~ 3800 7800
Wire Wire Line
	3500 600  3600 600 
Wire Wire Line
	3400 600  3500 600 
Connection ~ 3500 600 
Wire Wire Line
	3800 7800 3700 7800
Wire Wire Line
	3700 7800 3600 7800
Connection ~ 3700 7800
Connection ~ 2400 1800
$Comp
L parts-lib:STM32F767ZGTx U6
U 1 1 5D53FAFD
P 3600 4200
F 0 "U6" H 3600 514 50  0000 C CNN
F 1 "STM32F767ZGTx" H 3600 423 50  0000 C CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 2600 800 50  0001 R CNN
F 3 "" H 3600 4200 50  0001 C CNN
	1    3600 4200
	1    0    0    -1  
$EndComp
NoConn ~ 4800 2800
NoConn ~ 4800 3000
NoConn ~ 4800 3100
NoConn ~ 4800 5600
NoConn ~ 4800 5700
NoConn ~ 4800 6400
NoConn ~ 4800 6500
NoConn ~ 4800 6600
NoConn ~ 4800 6700
NoConn ~ 4800 7100
NoConn ~ 2400 6400
NoConn ~ 2400 6500
NoConn ~ 2400 3900
NoConn ~ 2400 3800
NoConn ~ 2400 3700
NoConn ~ 2400 3400
$Comp
L parts-lib:C10uF C31
U 1 1 5DCE174E
P 5125 725
F 0 "C31" H 5217 771 50  0000 L CNN
F 1 "C10uF" H 5217 680 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5125 725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC1206ZKY5V8BB106_C106238.pdf" H 5125 725 50  0001 C CNN
F 4 "CC1206ZKY5V8BB106" H 5335 995 50  0001 C CNN "Part No."
F 5 "Yageo" H 5235 895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H -450 -75 50  0001 C CNN "Distributor"
F 7 "C106238" H -450 -75 50  0001 C CNN "Distributor Part No."
	1    5125 725 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5125 825  5550 825 
Wire Wire Line
	6050 825  6500 825 
Wire Wire Line
	4925 825  5125 825 
Connection ~ 5125 825 
Wire Wire Line
	5125 625  5550 625 
Wire Wire Line
	5125 625  4925 625 
Connection ~ 5125 625 
Wire Notes Line
	4900 875  4900 500 
Wire Notes Line
	4900 500  10500 500 
Wire Notes Line
	10500 500  10500 875 
Wire Notes Line
	4900 875  10500 875 
$Comp
L parts-lib:C1uF C34
U 1 1 5DEF9D48
P 7350 3525
F 0 "C34" H 7442 3571 50  0000 L CNN
F 1 "C1uF" H 7442 3480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7350 3525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Vishay-Intertech-VJ0603G105KXJCW1BC_C272771.pdf" H 7350 3525 50  0001 C CNN
F 4 "VJ0603G105KXJCW1BC" H 7560 3795 50  0001 C CNN "Part No."
F 5 "Vishay Intertech" H 7460 3695 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 7460 3695 50  0001 C CNN "Distributor"
F 7 "C272771" H 7460 3695 50  0001 C CNN "Distributor Part No."
	1    7350 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3625 7350 3750
Wire Wire Line
	7350 3750 6800 3750
$Comp
L parts-lib:C100nF C33
U 1 1 5DF10BBB
P 6000 3150
F 0 "C33" V 5771 3150 50  0000 C CNN
F 1 "C100nF" V 5862 3150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6000 3150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 6000 3150 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 6210 3420 50  0001 C CNN "Part No."
F 5 "Yageo" H 6110 3320 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 6110 3320 50  0001 C CNN "Distributor"
F 7 "C149620" H 6110 3320 50  0001 C CNN "Distributor Part No."
	1    6000 3150
	0    1    1    0   
$EndComp
$Comp
L parts-lib:C100nF C32
U 1 1 5DF11F0F
P 5875 3600
F 0 "C32" H 5725 3700 50  0000 L CNN
F 1 "C100nF" H 5900 3525 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5875 3600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 5875 3600 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 6085 3870 50  0001 C CNN "Part No."
F 5 "Yageo" H 5985 3770 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5985 3770 50  0001 C CNN "Distributor"
F 7 "C149620" H 5985 3770 50  0001 C CNN "Distributor Part No."
	1    5875 3600
	1    0    0    -1  
$EndComp
Connection ~ 6800 3750
Wire Wire Line
	7200 3150 7200 3200
Wire Wire Line
	7200 3200 7500 3200
Wire Wire Line
	7200 3350 7200 3300
Wire Wire Line
	7200 3300 7500 3300
$Comp
L Device:Speaker LS1
U 1 1 5DF641A6
P 7700 3200
F 0 "LS1" H 7870 3196 50  0000 L CNN
F 1 "Speaker" H 7870 3105 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7700 3000 50  0001 C CNN
F 3 "~" H 7690 3150 50  0001 C CNN
	1    7700 3200
	1    0    0    -1  
$EndComp
Text Label 6400 3550 2    50   ~ 0
nSPKR_OFF
Wire Wire Line
	5875 3750 6800 3750
Text Label 4800 2700 0    50   ~ 0
nSPKR_OFF
Text Label 5900 3150 2    50   ~ 0
AUDIO
Text Label 4800 1400 0    50   ~ 0
AUDIO
Text Label 6800 3850 0    50   ~ 0
VSS
Wire Wire Line
	6800 3750 6800 3850
$Comp
L Amplifier_Audio:PAM8302AAS U8
U 1 1 5DED55D9
P 6800 3350
F 0 "U8" H 6800 3931 50  0000 C CNN
F 1 "PAM8302AAS" H 6800 3840 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 6800 3350 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/PAM8302A.pdf" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
Text Label 7350 2950 0    50   ~ 0
VDD
Wire Wire Line
	7350 2950 7350 3425
Wire Wire Line
	6800 2950 7350 2950
Wire Wire Line
	5875 3700 5875 3750
$Comp
L Device:R_Small R19
U 1 1 5DF9BC5E
P 6250 3150
F 0 "R19" V 6100 3150 50  0000 C CNN
F 1 "2K" V 6175 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 3150 50  0001 C CNN
F 3 "~" H 6250 3150 50  0001 C CNN
	1    6250 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3150 6150 3150
Wire Wire Line
	6350 3150 6400 3150
$Comp
L Device:R_Small R18
U 1 1 5DFB3754
P 6100 3350
F 0 "R18" V 5950 3350 50  0000 C CNN
F 1 "2K" V 6025 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6100 3350 50  0001 C CNN
F 3 "~" H 6100 3350 50  0001 C CNN
	1    6100 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3350 6400 3350
Wire Wire Line
	6000 3350 5875 3350
Wire Wire Line
	5875 3350 5875 3500
NoConn ~ 4800 3200
NoConn ~ 4800 3300
Wire Bus Line
	5350 5150 5350 5500
Wire Bus Line
	6925 1375 6925 2200
Wire Bus Line
	6450 1375 6450 2150
Wire Bus Line
	7425 1375 7425 2275
$EndSCHEMATC
