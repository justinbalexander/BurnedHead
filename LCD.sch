EESchema Schematic File Version 4
LIBS:BurnedHead-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title "LCD"
Date "2019-11-10"
Rev "A"
Comp "Justin Alexander"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L parts-lib-SnapEDA:51296-5494 U4
U 1 1 5D510E45
P 8550 3700
F 0 "U4" H 8550 3700 50  0001 L BNN
F 1 "51296-5494" H 8550 3700 50  0001 L BNN
F 2 "parts-lib-SnapEDA:51296" H 8550 3700 50  0001 L BNN
F 3 "None" H 8550 3700 50  0001 L BNN
F 4 "Molex" H 8550 3700 50  0001 L BNN "Field4"
F 5 "Conn.; Rect/PCB; FFC/FPC; 54 Cir.; SMT; ZIF; Rt. Angle; Easy-On Type; Gold Plate" H 8550 3700 50  0001 L BNN "Field5"
F 6 "LQ035NC111" H 8550 3700 50  0001 L BNN "Pinout"
F 7 "None" H 8550 3700 50  0001 L BNN "Field7"
F 8 "51296-5494" H 8550 3700 50  0001 L BNN "Field8"
F 9 "Unavailable" H 0   0   50  0001 C CNN "Field6"
	1    8550 3700
	1    0    0    -1  
$EndComp
Text Label 8250 2400 0    50   ~ 0
LCD_B3
Text Label 8250 2500 0    50   ~ 0
LCD_B4
Text Label 8250 2600 0    50   ~ 0
LCD_B5
Text Label 8250 2700 0    50   ~ 0
LCD_B6
Text Label 8250 2800 0    50   ~ 0
LCD_B7
Wire Bus Line
	7700 2900 7800 2900
Text HLabel 7700 2900 0    50   Output ~ 0
LCD_B[0...7]
Text Label 8250 2900 0    50   ~ 0
LCD_G0
Text Label 8250 3000 0    50   ~ 0
LCD_G1
Text Label 8250 3100 0    50   ~ 0
LCD_G2
Text Label 8250 3200 0    50   ~ 0
LCD_G3
Text Label 8250 3300 0    50   ~ 0
LCD_G4
Text Label 8250 3400 0    50   ~ 0
LCD_G5
Text Label 8250 3500 0    50   ~ 0
LCD_G6
Text Label 8250 3600 0    50   ~ 0
LCD_G7
Wire Bus Line
	7800 3700 7700 3700
Text Label 8250 3700 0    50   ~ 0
LCD_R0
Text Label 8250 3800 0    50   ~ 0
LCD_R1
Text Label 8250 3900 0    50   ~ 0
LCD_R2
Text Label 8250 4000 0    50   ~ 0
LCD_R3
Text Label 8250 4100 0    50   ~ 0
LCD_R4
Text Label 8250 4200 0    50   ~ 0
LCD_R5
Text Label 8250 4300 0    50   ~ 0
LCD_R6
Text Label 8250 4400 0    50   ~ 0
LCD_R7
Text HLabel 7700 3700 0    50   Output ~ 0
LCD_G[0...7]
Text HLabel 7700 4500 0    50   Output ~ 0
LCD_R[0...7]
NoConn ~ 8450 1600
NoConn ~ 8450 4800
NoConn ~ 8450 4900
NoConn ~ 8450 5400
NoConn ~ 8450 5500
NoConn ~ 8450 5600
NoConn ~ 8450 6000
Text Notes 7950 850  0    118  ~ 0
LQ035NC111
Wire Wire Line
	8450 6200 8450 6250
Wire Wire Line
	8450 5000 8450 5050
Connection ~ 8450 6250
Wire Wire Line
	8450 6250 8450 6300
Text Label 8400 6250 2    50   ~ 0
GND
Connection ~ 8450 5050
Wire Wire Line
	8450 5050 8450 5100
Text Label 8400 5050 2    50   ~ 0
VCC
Text HLabel 8100 6250 0    50   Input ~ 0
VSS
Text HLabel 7800 5050 0    50   Input ~ 0
3V3
$Comp
L Device:R R10
U 1 1 5D50C6A4
P 8300 1900
F 0 "R10" V 8350 1750 50  0000 C CNN
F 1 "10K" V 8200 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8230 1900 50  0001 C CNN
F 3 "~" H 8300 1900 50  0001 C CNN
	1    8300 1900
	0    1    1    0   
$EndComp
Text Label 8150 1900 2    50   ~ 0
VCC
$Comp
L Device:R R11
U 1 1 5D50D13C
P 8300 5800
F 0 "R11" V 8350 5650 50  0000 C CNN
F 1 "10K" V 8400 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8230 5800 50  0001 C CNN
F 3 "~" H 8300 5800 50  0001 C CNN
	1    8300 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 1800 8450 1900
Connection ~ 8450 1900
Wire Wire Line
	8450 1900 8450 2000
Wire Wire Line
	8450 5700 8450 5800
Connection ~ 8450 5800
Wire Wire Line
	8450 5800 8450 5900
Text Notes 7450 5700 0    50   ~ 0
0b000 RGB Parallel Mode
NoConn ~ 8450 5200
NoConn ~ 8450 5300
NoConn ~ 8450 1400
NoConn ~ 8450 1500
Wire Wire Line
	8450 1700 7950 1700
$Comp
L Device:R R9
U 1 1 5D520EE9
P 7950 1850
F 0 "R9" V 8000 1700 50  0000 C CNN
F 1 "100K" V 7850 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7880 1850 50  0001 C CNN
F 3 "~" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
Text Label 7825 2000 2    50   ~ 0
GND
Wire Wire Line
	7950 1700 7750 1700
Connection ~ 7950 1700
Text HLabel 7750 1700 0    50   Input ~ 0
LCD_NRESET
Text Label 8150 5800 2    50   ~ 0
GND
Wire Wire Line
	8100 6250 8450 6250
Text HLabel 8450 6100 0    50   Input ~ 0
LCD_DE
Text HLabel 8450 4500 0    50   Input ~ 0
LCD_HSYNC
Text HLabel 8450 4600 0    50   Input ~ 0
LCD_VSYNC
Text HLabel 8450 4700 0    50   Input ~ 0
LCD_DCLK
Text Notes 8800 2000 0    50   ~ 0
Pulled high per Note 3 in \nTable 10.1 LCM Pin Defiition\nLQ035NC111.pdf
Wire Wire Line
	8450 1200 8450 1250
Connection ~ 8450 1250
Wire Wire Line
	8450 1250 8450 1300
Wire Wire Line
	8450 1000 8450 1050
Wire Wire Line
	8300 1250 8450 1250
Wire Wire Line
	8450 1050 8300 1050
Connection ~ 8450 1050
Wire Wire Line
	8450 1050 8450 1100
Text Label 8300 1050 2    50   ~ 0
LED_V-
Text Label 8300 1250 2    50   ~ 0
LED_V+
$Comp
L parts-lib:TPS61169 U3
U 1 1 5D525FF4
P 3825 3600
F 0 "U3" H 3825 3950 50  0000 C CNN
F 1 "TPS61169" H 3825 3600 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3825 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61169.pdf" H 3825 3600 50  0001 C CNN
F 4 "LCSC" H 275 1800 50  0001 C CNN "Distributor"
F 5 "C71045" H 275 1800 50  0001 C CNN "Distributor Part No."
F 6 "Texas Instruments" H 275 1800 50  0001 C CNN "Manufacturer"
F 7 "TPS61169" H 275 1800 50  0001 C CNN "Part No."
	1    3825 3600
	1    0    0    -1  
$EndComp
Text HLabel 2000 3400 0    50   Input ~ 0
LCD_VLED
Text HLabel 2750 3600 0    50   Input ~ 0
LCD_DIM
Text Label 1975 3900 2    50   ~ 0
GND
Text Notes 2075 4275 0    50   ~ 0
PWM Dimming\n5kHz < f < 100kHz
Wire Wire Line
	3075 3100 3625 3100
Wire Wire Line
	4575 3100 4575 3400
Wire Wire Line
	3075 3100 3075 3400
Connection ~ 3075 3400
Wire Wire Line
	4725 3100 4575 3100
Connection ~ 4575 3100
Text Label 5175 3400 2    50   ~ 0
GND
Text Label 5525 3100 0    50   ~ 0
LED_V+
Text Label 4575 3800 0    50   ~ 0
LED_V-
$Comp
L Device:R R8
U 1 1 5D53236E
P 4575 3950
F 0 "R8" H 4645 3996 50  0000 L CNN
F 1 "10.2 1%" H 4645 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4505 3950 50  0001 C CNN
F 3 "~" H 4575 3950 50  0001 C CNN
	1    4575 3950
	1    0    0    -1  
$EndComp
Text Label 4575 4100 3    50   ~ 0
GND
Wire Notes Line
	5975 2800 5975 4300
Text Notes 2075 4075 0    50   ~ 0
LED VOLTAGE GENERATION
$Comp
L Device:R R7
U 1 1 5D6EEEE1
P 2875 3750
F 0 "R7" H 3075 3700 50  0000 C CNN
F 1 "100K" H 3050 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2805 3750 50  0001 C CNN
F 3 "~" H 2875 3750 50  0001 C CNN
	1    2875 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3075 3800 3075 3900
Wire Wire Line
	3075 3900 2875 3900
Connection ~ 2875 3900
Wire Wire Line
	2875 3900 2075 3900
Wire Wire Line
	2000 3400 2075 3400
Connection ~ 2075 3400
Wire Wire Line
	2075 3400 3075 3400
Connection ~ 2075 3900
Wire Wire Line
	2075 3900 1975 3900
Wire Wire Line
	2875 3600 3075 3600
Wire Wire Line
	2750 3600 2875 3600
Connection ~ 2875 3600
$Comp
L parts-lib:C4.7uF C6
U 1 1 5D5BFE86
P 2075 3625
F 0 "C6" H 2167 3671 50  0000 L CNN
F 1 "C4.7uF" H 2167 3580 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2075 3625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0805KKX5R8BB475_C132173.pdf" H 2075 3625 50  0001 C CNN
F 4 "CC0805KKX5R8BB475" H 2285 3895 50  0001 C CNN "Part No."
F 5 "Yageo" H 2185 3795 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 2185 3795 50  0001 C CNN "Distributor"
F 7 "C132173" H 2185 3795 50  0001 C CNN "Distributor Part No."
	1    2075 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 3400 2075 3525
Wire Wire Line
	2075 3725 2075 3900
$Comp
L parts-lib:NSR0240 D4
U 1 1 5D5C3134
P 4875 3100
F 0 "D4" H 4875 2884 50  0000 C CNN
F 1 "NSR0240" H 4875 2975 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 4925 2850 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/ON-Semicon-ON-NSR0240HT1G_C152519.pdf" H 4725 3050 50  0001 C CNN
F 4 "NSR0240HT1G" H 5085 3370 50  0001 C CNN "Part No."
F 5 "ON Semiconductor" H 4985 3270 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 4985 3270 50  0001 C CNN "Distributor"
F 7 "C152519" H 4985 3270 50  0001 C CNN "Distributor Part No."
F 8 "Schottky (250mA Continuous Current) (.48V FVD) (.2uA @ 25V Reverse)" H 4985 3270 50  0001 C CNN "Description"
	1    4875 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5025 3100 5175 3100
$Comp
L parts-lib:C1uF C7
U 1 1 5D5C3623
P 5175 3250
F 0 "C7" H 5267 3296 50  0000 L CNN
F 1 "C1uF" H 5267 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5175 3250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R7BB105_C106248.pdf" H 5175 3250 50  0001 C CNN
F 4 "CC0603KRX7R7BB105" H 5385 3520 50  0001 C CNN "Part No."
F 5 "Yageo" H 5285 3420 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5285 3420 50  0001 C CNN "Distributor"
F 7 "C272771" H 5285 3420 50  0001 C CNN "Distributor Part No."
	1    5175 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 3150 5175 3100
Connection ~ 5175 3100
Wire Wire Line
	5175 3100 5525 3100
Wire Wire Line
	5175 3350 5175 3400
$Comp
L parts-lib:SNR4018K-6R8M L1
U 1 1 5D5C6274
P 3775 3100
F 0 "L1" V 3965 3100 50  0000 C CNN
F 1 "SNR4018K-6R8M" V 3874 3100 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-40xx" H 3825 2850 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/1901161733_3L-COILS-SNR4018K-6R8M_C326302.pdf" H 3625 3050 50  0001 C CNN
F 4 "SNR4018K-6R8M" H 3985 3370 50  0001 C CNN "Part No."
F 5 "3L Coils" H 3885 3270 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 3885 3270 50  0001 C CNN "Distributor"
F 7 "C326302" H 3885 3270 50  0001 C CNN "Distributor Part No."
F 8 "Inductor SMD 4x4mm 6.8uH 20%, 124m DCR, 1.45 Isat" H 3885 3270 50  0001 C CNN "Description"
	1    3775 3100
	0    -1   -1   0   
$EndComp
Wire Notes Line
	1550 2800 1550 4300
Wire Notes Line
	1550 2800 5975 2800
Wire Notes Line
	1550 4300 5975 4300
Entry Wire Line
	7800 3800 7900 3700
Entry Wire Line
	7800 3900 7900 3800
Entry Wire Line
	7800 4000 7900 3900
Entry Wire Line
	7800 4100 7900 4000
Entry Wire Line
	7800 4200 7900 4100
Entry Wire Line
	7800 4300 7900 4200
Entry Wire Line
	7800 4400 7900 4300
Entry Wire Line
	7800 4500 7900 4400
Wire Wire Line
	7900 4400 8450 4400
Wire Wire Line
	7900 4300 8450 4300
Wire Wire Line
	7900 4200 8450 4200
Wire Wire Line
	7900 4100 8450 4100
Wire Wire Line
	7900 4000 8450 4000
Wire Wire Line
	7900 3900 8450 3900
Wire Wire Line
	7900 3800 8450 3800
Wire Wire Line
	7900 3700 8450 3700
Wire Bus Line
	7800 4500 7700 4500
Entry Wire Line
	7800 3000 7900 2900
Entry Wire Line
	7800 3100 7900 3000
Entry Wire Line
	7800 3200 7900 3100
Entry Wire Line
	7800 3300 7900 3200
Entry Wire Line
	7800 3400 7900 3300
Entry Wire Line
	7800 3500 7900 3400
Entry Wire Line
	7800 3600 7900 3500
Entry Wire Line
	7800 3700 7900 3600
Wire Wire Line
	7900 2900 8450 2900
Wire Wire Line
	7900 3000 8450 3000
Wire Wire Line
	7900 3100 8450 3100
Wire Wire Line
	7900 3200 8450 3200
Wire Wire Line
	7900 3300 8450 3300
Wire Wire Line
	7900 3400 8450 3400
Wire Wire Line
	7900 3500 8450 3500
Wire Wire Line
	7900 3600 8450 3600
Entry Wire Line
	7800 2200 7900 2100
Entry Wire Line
	7800 2300 7900 2200
Entry Wire Line
	7800 2400 7900 2300
Entry Wire Line
	7800 2500 7900 2400
Entry Wire Line
	7800 2600 7900 2500
Entry Wire Line
	7800 2700 7900 2600
Entry Wire Line
	7800 2800 7900 2700
Entry Wire Line
	7800 2900 7900 2800
Wire Wire Line
	7950 2000 7825 2000
Wire Wire Line
	7900 2100 8450 2100
Wire Wire Line
	7900 2200 8450 2200
Wire Wire Line
	7900 2300 8450 2300
Wire Wire Line
	7900 2400 8450 2400
Wire Wire Line
	7900 2500 8450 2500
Wire Wire Line
	7900 2600 8450 2600
Wire Wire Line
	7900 2700 8450 2700
Wire Wire Line
	7900 2800 8450 2800
Text Label 8250 2300 0    50   ~ 0
LCD_B2
Text Label 8250 2200 0    50   ~ 0
LCD_B1
Text Label 8250 2100 0    50   ~ 0
LCD_B0
Wire Wire Line
	3925 3100 4575 3100
$Comp
L parts-lib:C100nF C35
U 1 1 5DCF917A
P 8000 5150
F 0 "C35" H 8092 5196 50  0000 L CNN
F 1 "C100nF" H 8092 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8000 5150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8000 5150 50  0001 C CNN
F 4 "AC0603KRX7R9BB104" H 8210 5420 50  0001 C CNN "Part No."
F 5 "Yageo" H 8110 5320 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 8110 5320 50  0001 C CNN "Distributor"
F 7 "C149620" H 8110 5320 50  0001 C CNN "Distributor Part No."
	1    8000 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5050 8000 5050
Wire Bus Line
	7800 3800 7800 4500
Wire Bus Line
	7800 3000 7800 3700
Wire Bus Line
	7800 2200 7800 2900
Connection ~ 8000 5050
Wire Wire Line
	8000 5050 8450 5050
Text Label 8000 5250 3    50   ~ 0
GND
$EndSCHEMATC
