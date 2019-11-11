EESchema Schematic File Version 4
LIBS:Gamete-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 6
Title "Power and USB"
Date "2019-11-10"
Rev "A"
Comp "Justin Alexander"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_Small R2
U 1 1 5D4FFE05
P 4250 2825
F 0 "R2" H 4100 2875 50  0000 L CNN
F 1 "2K" H 4100 2775 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 2825 50  0001 C CNN
F 3 "~" H 4250 2825 50  0001 C CNN
F 4 "I (mA) = 1000 (V) / R (kOhms)" H 4250 2825 50  0001 C CNN "Notes"
	1    4250 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2925 4650 2925
Connection ~ 4650 2925
Connection ~ 4250 2925
Wire Wire Line
	4050 2325 4050 2375
Wire Wire Line
	4050 2625 4050 2925
Connection ~ 4050 2925
Wire Wire Line
	4050 2925 4250 2925
Wire Wire Line
	3900 2925 4050 2925
$Comp
L Device:R_Small R6
U 1 1 5D5013AE
P 6600 2225
F 0 "R6" H 6450 2275 50  0000 L CNN
F 1 "100K" H 6400 2125 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6600 2225 50  0001 C CNN
F 3 "~" H 6600 2225 50  0001 C CNN
F 4 "I (mA) = 1000 (V) / R (kOhms)" H 6600 2225 50  0001 C CNN "Notes"
	1    6600 2225
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR05
U 1 1 5D50285B
P 6600 2325
F 0 "#PWR05" H 6600 2075 50  0001 C CNN
F 1 "GNDD" H 6604 2170 50  0000 C CNN
F 2 "" H 6600 2325 50  0001 C CNN
F 3 "" H 6600 2325 50  0001 C CNN
	1    6600 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2325 5050 2125
Wire Wire Line
	7000 2125 7000 2225
Connection ~ 6600 2125
Wire Wire Line
	6600 2125 7000 2125
$Comp
L Device:R_Small R3
U 1 1 5D5068A6
P 4950 4675
F 0 "R3" H 4800 4725 50  0000 L CNN
F 1 "100K" H 4725 4625 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4950 4675 50  0001 C CNN
F 3 "~" H 4950 4675 50  0001 C CNN
F 4 "I (mA) = 1000 (V) / R (kOhms)" H 4950 4675 50  0001 C CNN "Notes"
	1    4950 4675
	1    0    0    -1  
$EndComp
Connection ~ 5625 5325
Wire Wire Line
	4650 2925 5550 2925
Wire Wire Line
	5050 2525 5550 2525
Wire Wire Line
	5550 2525 5550 2625
Connection ~ 5550 2525
Wire Wire Line
	5550 2525 6000 2525
Wire Wire Line
	6000 2525 6000 2575
Connection ~ 6000 2525
Wire Wire Line
	6000 2525 6800 2525
Wire Wire Line
	5550 2825 5550 2925
Connection ~ 5550 2925
Wire Wire Line
	5550 2925 6000 2925
Wire Wire Line
	6000 2875 6000 2925
Wire Wire Line
	4925 5325 5625 5325
Wire Wire Line
	6025 4925 6425 4925
Wire Wire Line
	6425 4925 6425 4975
Wire Wire Line
	6425 5325 6425 5175
Connection ~ 4050 2375
Wire Wire Line
	4050 2375 4050 2425
NoConn ~ 3250 2575
NoConn ~ 3250 2675
NoConn ~ 3250 2775
Wire Wire Line
	3900 2975 3900 2925
Text HLabel 4500 3525 0    50   Output ~ 0
VSUPPLY
Text HLabel 6725 4925 2    50   Output ~ 0
3V3
$Comp
L power:GNDD #PWR03
U 1 1 5D506D68
P 5625 5325
F 0 "#PWR03" H 5625 5075 50  0001 C CNN
F 1 "GNDD" H 5629 5170 50  0000 C CNN
F 2 "" H 5625 5325 50  0001 C CNN
F 3 "" H 5625 5325 50  0001 C CNN
	1    5625 5325
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR01
U 1 1 5D500120
P 4650 2925
F 0 "#PWR01" H 4650 2675 50  0001 C CNN
F 1 "GNDD" H 4654 2770 50  0000 C CNN
F 2 "" H 4650 2925 50  0001 C CNN
F 3 "" H 4650 2925 50  0001 C CNN
	1    4650 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6425 5325 6725 5325
Connection ~ 6425 5325
Text HLabel 6725 5325 2    50   Input ~ 0
VSS
$Comp
L parts-lib:C4.7uF C4
U 1 1 5D6921FC
P 5550 2725
F 0 "C4" H 5642 2771 50  0000 L CNN
F 1 "C4.7uF" H 5642 2680 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5550 2725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0805KKX5R8BB475_C132173.pdf" H 5550 2725 50  0001 C CNN
F 4 "CC0805KKX5R8BB475" H 5760 2995 50  0001 C CNN "Part No."
F 5 "Yageo" H 5660 2895 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5660 2895 50  0001 C CNN "Distributor"
F 7 "C132173" H 5660 2895 50  0001 C CNN "Distributor Part No."
	1    5550 2725
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C4.7uF C2
U 1 1 5D6922F3
P 4050 2525
F 0 "C2" H 4142 2571 50  0000 L CNN
F 1 "C4.7uF" H 4142 2480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4050 2525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0805KKX5R8BB475_C132173.pdf" H 4050 2525 50  0001 C CNN
F 4 "CC0805KKX5R8BB475" H 4260 2795 50  0001 C CNN "Part No."
F 5 "Yageo" H 4160 2695 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 4160 2695 50  0001 C CNN "Distributor"
F 7 "C132173" H 4160 2695 50  0001 C CNN "Distributor Part No."
	1    4050 2525
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C1uF C5
U 1 1 5D69265A
P 6425 5075
F 0 "C5" H 6517 5121 50  0000 L CNN
F 1 "C1uF" H 6517 5030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6425 5075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R7BB105_C106248.pdf" H 6425 5075 50  0001 C CNN
F 4 "CC0603KRX7R7BB105" H 6635 5345 50  0001 C CNN "Part No."
F 5 "Yageo" H 6535 5245 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 6535 5245 50  0001 C CNN "Distributor"
F 7 "C272771" H 6535 5245 50  0001 C CNN "Distributor Part No."
	1    6425 5075
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:C1uF C3
U 1 1 5D69294F
P 4925 5225
F 0 "C3" H 5017 5271 50  0000 L CNN
F 1 "C1uF" H 5017 5180 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4925 5225 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R7BB105_C106248.pdf" H 4925 5225 50  0001 C CNN
F 4 "CC0603KRX7R7BB105" H 5135 5495 50  0001 C CNN "Part No."
F 5 "Yageo" H 5035 5395 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5035 5395 50  0001 C CNN "Distributor"
F 7 "C272771" H 5035 5395 50  0001 C CNN "Distributor Part No."
	1    4925 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 5125 5225 5125
$Comp
L parts-lib:USB_B_Micro J1
U 1 1 5D695948
P 2950 2575
F 0 "J1" H 2925 3000 50  0000 C CNN
F 1 "USB_B_Micro" H 2900 2925 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 3100 2525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/MOLEX-47346-0001_C132560.pdf" H 3100 2525 50  0001 C CNN
F 4 "47346-0001" H 3160 2845 50  0001 C CNN "Part No."
F 5 "Molex" H 3060 2745 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 3060 2745 50  0001 C CNN "Distributor"
F 7 "C132560" H 3060 2745 50  0001 C CNN "Distributor Part No."
	1    2950 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2325 4125 2325
$Comp
L parts-lib:MCP73832-2-OT U1
U 1 1 5D6963CE
P 4650 2625
F 0 "U1" H 4650 3103 50  0000 C CNN
F 1 "MCP73832-2-OT" H 4650 3012 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4700 2375 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Microchip-Tech-MCP73832T-2ACI-OT_C38066.pdf" H 4500 2575 50  0001 C CNN
F 4 "MCP73832T-2ACI/OT" H 4860 2895 50  0001 C CNN "Part No."
F 5 "Microchip" H 4760 2795 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 4760 2795 50  0001 C CNN "Distributor"
F 7 "C38066" H 4760 2795 50  0001 C CNN "Distributor Part No."
	1    4650 2625
	1    0    0    -1  
$EndComp
Connection ~ 4650 2325
Wire Wire Line
	4650 2325 5050 2325
$Comp
L parts-lib:LiPo_P1.25_THRU BT1
U 1 1 5D699E68
P 6000 2775
F 0 "BT1" H 6118 2881 50  0000 L CNN
F 1 "LiPo_P1.25_THRU" H 5825 2550 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53048-0410_1x02_P1.25mm_Horizontal" V 6000 2835 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Joint-Tech-Elec-A1250WR-02P_C267514.pdf" V 6000 2835 50  0001 C CNN
F 4 "A1250WR-02P" H 6210 3045 50  0001 C CNN "Part No."
F 5 "Joint Tech Elec" H 6110 2945 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 6110 2945 50  0001 C CNN "Distributor"
F 7 "C267514" H 6110 2945 50  0001 C CNN "Distributor Part No."
F 8 "1.25mm pitch JST style LiPo battery connector - Through Hole - V+ on 2" H 6110 2945 50  0001 C CNN "Description"
	1    6000 2775
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:IRLML6401TRPBF Q2
U 1 1 5D69B30C
P 7000 2425
F 0 "Q2" V 7250 2425 50  0000 C CNN
F 1 "IRLML6401TRPBF" V 7341 2425 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7200 2525 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/International-Rectifier-IR-IRLML6401TRPBF_C3034.pdf" H 7000 2425 50  0001 C CNN
F 4 "IRLML6401TRPBF" H 7210 2695 50  0001 C CNN "Part No."
F 5 "International Rectifier" H 7110 2595 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 7110 2595 50  0001 C CNN "Distributor"
F 7 "C3034" H 7110 2595 50  0001 C CNN "Distributor Part No."
F 8 "MOSFET P Trench 12V 4.3A 950mV @ 250uA 50 mΩ @ 4.3A,4.5V (SOT-23-3) RoHS" H 7110 2595 50  0001 C CNN "Description"
	1    7000 2425
	0    -1   1    0   
$EndComp
Wire Notes Line
	3975 3175 7675 3175
Wire Notes Line
	7675 3175 7675 1950
Wire Notes Line
	7675 1950 3925 1950
Wire Notes Line
	3925 1950 3925 3175
Wire Notes Line
	3925 3175 3950 3175
Text Notes 3975 2050 0    50   ~ 0
Microchip AN1149
Wire Wire Line
	7450 2525 7450 2475
Wire Wire Line
	7200 2525 7450 2525
Wire Wire Line
	7450 2125 7450 2175
Connection ~ 7000 2125
Wire Wire Line
	7000 2125 7450 2125
$Comp
L parts-lib:DFLS130L-7 D3
U 1 1 5D6B1165
P 7450 2325
F 0 "D3" V 7550 2475 50  0000 R CNN
F 1 "DFLS130L-7" H 7725 2225 50  0000 R CNN
F 2 "Diode_SMD:D_PowerDI-123" H 7500 2075 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Diodes-Incorporated-DFLS130L-7_C110493.pdf" H 7300 2275 50  0001 C CNN
F 4 "DFLS130L-7" H 7660 2595 50  0001 C CNN "Part No."
F 5 "Diodes Incorporated" H 7560 2495 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 7560 2495 50  0001 C CNN "Distributor"
F 7 "C110493" H 7560 2495 50  0001 C CNN "Distributor Part No."
F 8 "Schottky Barrier Rectifier (1A Continuous Current) (.31V @ 1A FVD) (1mA @ 30V Reverse)" H 7560 2495 50  0001 C CNN "Description"
	1    7450 2325
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2475 3700 2375
Wire Wire Line
	3700 2775 3700 2975
$Comp
L parts-lib:SMF12CA D1
U 1 1 5D6B40B2
P 3700 2625
F 0 "D1" V 3775 2425 50  0000 L CNN
F 1 "SMF12CA" V 3850 2275 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 3700 2625 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904291206_MDD-Jiangsu-Yutai-Elec-SMF12CA_C123801.pdf" H 3700 2625 50  0001 C CNN
F 4 "SMF12CA" H 3910 2895 50  0001 C CNN "Part No."
F 5 "Microdiode Electronics Tech" H 3810 2795 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 3810 2795 50  0001 C CNN "Distributor"
F 7 "C123801" H 3810 2795 50  0001 C CNN "Distributor Part No."
F 8 "Bi-directional TVS, 12V Reverse Standoff, 13.3V Breakdown, 19.9V Clamping (max) @ 10.1A Ipp (10/1000us)" H 3810 2795 50  0001 C CNN "Description"
	1    3700 2625
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2375 4050 2375
Wire Wire Line
	3700 2975 3900 2975
$Comp
L parts-lib:1206L150TH F1
U 1 1 5D6B7418
P 3550 2375
F 0 "F1" V 3345 2375 50  0000 C CNN
F 1 "1206L150TH" V 3436 2375 50  0000 C CNN
F 2 "Fuse:Fuse_1206_3216Metric" H 3600 2175 50  0001 L CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Littelfuse-1206L150THWR_C118413.pdf" H 3550 2375 50  0001 C CNN
F 4 "1206L150TH" H 3760 2645 50  0001 C CNN "Part No."
F 5 "LittleFuse" H 3660 2545 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 3660 2545 50  0001 C CNN "Distributor"
F 7 "C118413" H 3660 2545 50  0001 C CNN "Distributor Part No."
F 8 "PTC Resettable Fuse, 1206, 1.5A Ihold, 3.0A Itrip, .30s Time to trip, .04-.12 R" H 3660 2545 50  0001 C CNN "Description"
	1    3550 2375
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 2525 7450 3525
Wire Wire Line
	4650 5125 4925 5125
Connection ~ 7450 2525
Connection ~ 4925 5125
$Comp
L power:GNDD #PWR02
U 1 1 5D78B329
P 4950 4775
F 0 "#PWR02" H 4950 4525 50  0001 C CNN
F 1 "GNDD" H 4954 4620 50  0000 C CNN
F 2 "" H 4950 4775 50  0001 C CNN
F 3 "" H 4950 4775 50  0001 C CNN
	1    4950 4775
	1    0    0    -1  
$EndComp
Connection ~ 6425 4925
$Comp
L parts-lib:SW_SPDT SW1
U 1 1 5D7971AD
P 6075 3900
F 0 "SW1" H 6025 4025 50  0000 C CNN
F 1 "SW_SPDT" H 5900 3775 50  0001 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 6075 3900 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1905211531_SHOU-HAN-SK12D07VG4_C393937.pdf" H 6075 3900 50  0001 C CNN
F 4 "SK12D07VG4" H 6285 4170 50  0001 C CNN "Part No."
F 5 "SHOU HAN" H 6185 4070 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 6185 4070 50  0001 C CNN "Distributor"
F 7 "C393937" H 6185 4070 50  0001 C CNN "Distributor Part No."
	1    6075 3900
	1    0    0    1   
$EndComp
Wire Wire Line
	5150 4925 5150 4575
Wire Wire Line
	5150 4925 5225 4925
Wire Wire Line
	4650 3525 4650 3750
Wire Wire Line
	4500 3525 4650 3525
Connection ~ 4650 3525
Wire Wire Line
	5150 4575 4950 4575
Connection ~ 5150 4575
$Comp
L power:GNDD #PWR04
U 1 1 5D7AA19F
P 6275 4300
F 0 "#PWR04" H 6275 4050 50  0001 C CNN
F 1 "GNDD" H 6279 4145 50  0000 C CNN
F 2 "" H 6275 4300 50  0001 C CNN
F 3 "" H 6275 4300 50  0001 C CNN
	1    6275 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 3900 5875 3900
$Comp
L Device:R_Small R4
U 1 1 5D7ADEA5
P 6275 3650
F 0 "R4" H 6125 3700 50  0000 L CNN
F 1 "10K" H 6075 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6275 3650 50  0001 C CNN
F 3 "~" H 6275 3650 50  0001 C CNN
F 4 "I (mA) = 1000 (V) / R (kOhms)" H 6275 3650 50  0001 C CNN "Notes"
	1    6275 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 3525 6275 3550
Connection ~ 6275 3525
Wire Wire Line
	6275 3750 6275 3800
$Comp
L Device:R_Small R5
U 1 1 5D7BA044
P 6275 4200
F 0 "R5" H 6125 4250 50  0000 L CNN
F 1 "10K" H 6025 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6275 4200 50  0001 C CNN
F 3 "~" H 6275 4200 50  0001 C CNN
F 4 "I (mA) = 1000 (V) / R (kOhms)" H 6275 4200 50  0001 C CNN "Notes"
	1    6275 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 4100 6275 4000
Wire Wire Line
	6275 3525 7450 3525
Wire Wire Line
	6075 3825 6075 3900
Wire Wire Line
	5875 3900 5875 3825
Wire Wire Line
	5875 3825 6075 3825
Connection ~ 5875 3900
Text HLabel 6625 3900 2    50   Output ~ 0
ON_SWITCH_5V
Text HLabel 6725 4575 2    50   Output ~ 0
POWER_EN
$Comp
L parts-lib:1N4148WS D2
U 1 1 5D7C03A8
P 6125 4575
F 0 "D2" H 6125 4400 50  0000 C CNN
F 1 "1N4148WS" H 6125 4475 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 6125 4400 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Diodes-Incorporated-1N4148WS-7-F_C60580.pdf" H 6125 4575 50  0001 C CNN
F 4 "1N4148WS-7-F" H 6335 4845 50  0001 C CNN "Part No."
F 5 "Diodes Incorporated" H 6235 4745 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 6235 4745 50  0001 C CNN "Distributor"
F 7 "C60580" H 6235 4745 50  0001 C CNN "Distributor Part No."
	1    6125 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5625 5325 6425 5325
$Comp
L parts-lib:RT9013-33GB U2
U 1 1 5D8B414C
P 5625 5025
F 0 "U2" H 5625 5392 50  0000 C CNN
F 1 "RT9013-33GB" H 5625 5301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5675 4775 50  0001 L CIN
F 3 "https://datasheet.lcsc.com/szlcsc/Richtek-Tech-RT9013-33GB_C47773.pdf" H 5475 4975 50  0001 C CNN
F 4 "RT9013-33GB" H 5835 5295 50  0001 C CNN "Part No."
F 5 "Richtek Tech" H 5735 5195 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5735 5195 50  0001 C CNN "Distributor"
F 7 "C47773" H 5735 5195 50  0001 C CNN "Distributor Part No."
F 8 "3.3V Fixed LDO 250mv @ 500mA" H 5735 5195 50  0001 C CNN "Description"
	1    5625 5025
	1    0    0    -1  
$EndComp
NoConn ~ 6025 5125
Wire Wire Line
	6075 3900 6625 3900
Wire Wire Line
	6275 4575 6725 4575
$Comp
L Device:R_Small R1
U 1 1 5D84A239
P 3000 3125
F 0 "R1" V 2925 3075 50  0000 L CNN
F 1 "1M" V 3000 3075 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3000 3125 50  0001 C CNN
F 3 "~" H 3000 3125 50  0001 C CNN
F 4 "I (mA) = 1000 (V) / R (kOhms)" H 3000 3125 50  0001 C CNN "Notes"
	1    3000 3125
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2975 2850 3250
Wire Wire Line
	2850 3250 2900 3250
Wire Wire Line
	2900 3125 2900 3250
Wire Wire Line
	2950 2975 3100 2975
Wire Wire Line
	3100 2975 3100 3125
Connection ~ 3100 3125
Wire Wire Line
	3100 3125 3100 3250
$Comp
L parts-lib:C22nF C1
U 1 1 5D84F932
P 3000 3250
F 0 "C1" V 3200 3250 50  0000 C CNN
F 1 "C22nF" V 3125 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3000 3250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB223_C106222.pdf" H 3000 3250 50  0001 C CNN
F 4 "CC0603KRX7R9BB223" H 3210 3520 50  0001 C CNN "Part No."
F 5 "Yageo" H 3110 3420 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 3110 3420 50  0001 C CNN "Distributor"
F 7 "C389111" H 3110 3420 50  0001 C CNN "Distributor Part No."
	1    3000 3250
	0    1    1    0   
$EndComp
Connection ~ 2900 3250
Wire Wire Line
	3100 2975 3700 2975
Connection ~ 3100 2975
Connection ~ 3700 2975
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D8675CB
P 4125 2325
F 0 "#FLG01" H 4125 2400 50  0001 C CNN
F 1 "PWR_FLAG" H 4125 2499 50  0000 C CNN
F 2 "" H 4125 2325 50  0001 C CNN
F 3 "~" H 4125 2325 50  0001 C CNN
	1    4125 2325
	1    0    0    -1  
$EndComp
Text HLabel 5050 2725 2    50   Input ~ 0
BATT_STAT
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D86B8DB
P 4650 3750
F 0 "#FLG02" H 4650 3825 50  0001 C CNN
F 1 "PWR_FLAG" V 4650 3878 50  0000 L CNN
F 2 "" H 4650 3750 50  0001 C CNN
F 3 "~" H 4650 3750 50  0001 C CNN
	1    4650 3750
	0    -1   -1   0   
$EndComp
Connection ~ 4650 3750
Wire Wire Line
	4650 3750 4650 5125
Wire Wire Line
	6425 4925 6725 4925
Connection ~ 4125 2325
Wire Wire Line
	4125 2325 4650 2325
Wire Wire Line
	5050 2125 6600 2125
Text Label 5150 4575 0    50   ~ 0
LDO_EN
Text Label 6000 2525 0    50   ~ 0
VBAT
Text Label 3250 2375 0    50   ~ 0
VBUS
Wire Wire Line
	3700 2375 3650 2375
Connection ~ 3700 2375
Wire Wire Line
	3250 2375 3450 2375
Text Label 3475 2975 2    50   ~ 0
GND
Text Label 5200 2125 0    50   ~ 0
VBUS2
Text Label 4650 3525 0    50   ~ 0
VSUPPLY
Wire Wire Line
	4650 3525 6275 3525
Wire Wire Line
	5525 4575 5975 4575
Wire Wire Line
	5150 4575 5525 4575
Connection ~ 5525 4575
$Comp
L parts-lib:1N4148WS D5
U 1 1 5D912A67
P 5675 3900
F 0 "D5" H 5675 3775 50  0000 C CNN
F 1 "1N4148WS" H 5675 4000 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 5675 3725 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Diodes-Incorporated-1N4148WS-7-F_C60580.pdf" H 5675 3900 50  0001 C CNN
F 4 "1N4148WS-7-F" H 5885 4170 50  0001 C CNN "Part No."
F 5 "Diodes Incorporated" H 5785 4070 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5785 4070 50  0001 C CNN "Distributor"
F 7 "C60580" H 5785 4070 50  0001 C CNN "Distributor Part No."
	1    5675 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 3900 5525 4575
$EndSCHEMATC
