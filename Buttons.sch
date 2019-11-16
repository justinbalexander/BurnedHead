EESchema Schematic File Version 4
LIBS:BurnedHead-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title "Buttons"
Date "2019-11-10"
Rev "A"
Comp "Justin Alexander"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L parts-lib:DualShock-DPad SW4
U 1 1 5D97658B
P 4600 3050
F 0 "SW4" H 4325 2550 50  0000 L CNN
F 1 "DualShock-DPad" H 4325 2475 50  0000 L CNN
F 2 "parts-lib:PS4-DualShock-CarbonPad-DPad" V 4950 2525 50  0001 C CNN
F 3 "" V 4950 2525 50  0001 C CNN
	1    4600 3050
	1    0    0    -1  
$EndComp
Text HLabel 3900 4725 0    50   Input ~ 0
GND
Text HLabel 3900 4575 0    50   Input ~ 0
VREF
Wire Wire Line
	7175 2700 7175 2975
Wire Wire Line
	7175 2975 7400 2975
Wire Wire Line
	7725 2850 7400 2850
Wire Wire Line
	7400 2850 7400 2975
Wire Wire Line
	7025 3250 7175 3250
Wire Wire Line
	7400 3250 7400 2975
Connection ~ 7400 2975
Wire Wire Line
	7175 3400 7175 3250
Connection ~ 7175 3250
Wire Wire Line
	7175 3250 7400 3250
Text Label 7400 3125 0    50   ~ 0
GND
Text Label 4150 4725 2    50   ~ 0
GND
Wire Wire Line
	4400 2700 4400 2975
Wire Wire Line
	4400 2975 4625 2975
Wire Wire Line
	4950 2850 4625 2850
Wire Wire Line
	4625 2850 4625 2975
Wire Wire Line
	4250 3250 4400 3250
Wire Wire Line
	4625 3250 4625 2975
Connection ~ 4625 2975
Wire Wire Line
	4400 3400 4400 3250
Connection ~ 4400 3250
Wire Wire Line
	4400 3250 4625 3250
Text Label 4625 3125 0    50   ~ 0
GND
$Comp
L Switch:SW_Push SW5
U 1 1 5D9818F9
P 5775 3500
F 0 "SW5" H 5775 3700 50  0000 C CNN
F 1 "SW_Push" H 5775 3694 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 5775 3700 50  0001 C CNN
F 3 "" H 5775 3700 50  0001 C CNN
	1    5775 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5D981971
P 6375 3500
F 0 "SW6" H 6375 3700 50  0000 C CNN
F 1 "SW_Push" H 6375 3694 50  0001 C CNN
F 2 "Button_Switch_SMD:SW_SPST_PTS645" H 6375 3700 50  0001 C CNN
F 3 "" H 6375 3700 50  0001 C CNN
	1    6375 3500
	1    0    0    -1  
$EndComp
Text HLabel 7025 2650 1    50   Input ~ 0
BUT_X
Text HLabel 7750 2700 2    50   Input ~ 0
BUT_Y
Text HLabel 7950 3250 2    50   Input ~ 0
BUT_B
Text HLabel 7800 3400 2    50   Input ~ 0
BUT_A
Text HLabel 4950 3400 2    50   Input ~ 0
BUT_D
Text HLabel 5075 3250 2    50   Input ~ 0
BUT_R
Text HLabel 4950 2700 2    50   Input ~ 0
BUT_U
Text HLabel 4050 2850 0    50   Input ~ 0
BUT_L
Wire Wire Line
	5575 3500 5575 3650
Wire Wire Line
	5575 3650 6175 3650
Wire Wire Line
	6175 3650 6175 3500
Text Label 5900 3650 0    50   ~ 0
GND
Text HLabel 5975 3225 1    50   Input ~ 0
BUT_SEL
Text HLabel 6575 3225 1    50   Input ~ 0
BUT_START
Wire Wire Line
	4050 2850 4250 2850
Wire Wire Line
	4950 2700 4800 2700
Wire Wire Line
	4950 3250 5075 3250
Wire Wire Line
	4800 3400 4950 3400
Wire Wire Line
	5975 3500 5975 3225
Wire Wire Line
	6575 3225 6575 3500
Text HLabel 3900 4850 0    50   Input ~ 0
AGND
Text Label 4150 4850 2    50   ~ 0
AGND
Wire Wire Line
	3900 4850 4150 4850
Wire Wire Line
	3900 4725 4150 4725
Wire Wire Line
	7025 2850 7025 2650
Wire Wire Line
	7575 2700 7750 2700
Wire Wire Line
	7725 3250 7950 3250
Wire Wire Line
	7575 3400 7800 3400
Wire Wire Line
	3900 4575 4150 4575
Text Label 4150 4575 2    50   ~ 0
VREF
Text Label 4975 3975 0    50   ~ 0
VREF
Text Label 4975 4275 0    50   ~ 0
AGND
Wire Wire Line
	5125 4075 4800 4075
Text HLabel 4800 4175 0    50   Input ~ 0
BUT_LSTICK
Text HLabel 4800 4375 0    50   Input ~ 0
LSTICK_X
Text HLabel 4800 4075 0    50   Input ~ 0
LSTICK_Y
Text Label 7125 3975 2    50   ~ 0
VREF
Text Label 7150 4275 2    50   ~ 0
AGND
Wire Wire Line
	6975 3975 7125 3975
Wire Wire Line
	7300 4175 6975 4175
Wire Wire Line
	6975 4075 7300 4075
Text HLabel 7300 4175 2    50   Input ~ 0
BUT_RSTICK
Text HLabel 7300 4375 2    50   Input ~ 0
RSTICK_X
Text HLabel 7300 4075 2    50   Input ~ 0
RSTICK_Y
$Comp
L Switch:SW_Push SW3
U 1 1 5D834C57
P 4175 2325
F 0 "SW3" H 4175 2525 50  0000 C CNN
F 1 "SW_Push" H 4175 2519 50  0001 C CNN
F 2 "Button_Switch_SMD:Panasonic_EVQPUL_EVQPUC" H 4175 2525 50  0001 C CNN
F 3 "" H 4175 2525 50  0001 C CNN
F 4 "LCSC" H 4175 2325 50  0001 C CNN "Distributor"
F 5 "C79175" H 4175 2325 50  0001 C CNN "Part No."
	1    4175 2325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 2325 3975 2425
Text Label 3800 2425 0    50   ~ 0
GND
Wire Wire Line
	3800 2425 3975 2425
Wire Wire Line
	4375 2325 4500 2325
Text HLabel 4500 2325 2    50   Input ~ 0
BUT_LTRIG
$Comp
L Switch:SW_Push SW8
U 1 1 5D836C24
P 8075 2300
F 0 "SW8" H 8075 2500 50  0000 C CNN
F 1 "SW_Push" H 8075 2494 50  0001 C CNN
F 2 "Button_Switch_SMD:Panasonic_EVQPUL_EVQPUC" H 8075 2500 50  0001 C CNN
F 3 "" H 8075 2500 50  0001 C CNN
F 4 "LCSC" H 8075 2300 50  0001 C CNN "Distributor"
F 5 "C79175" H 8075 2300 50  0001 C CNN "Part No."
	1    8075 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8275 2300 8275 2400
Text Label 8450 2400 2    50   ~ 0
GND
Wire Wire Line
	8450 2400 8275 2400
Wire Wire Line
	7875 2300 7750 2300
Text HLabel 7750 2300 0    50   Input ~ 0
BUT_RTRIG
$Comp
L parts-lib:FPC_1x5_TopContact_P=0.5mm J4
U 1 1 5D83A9A1
P 5325 4175
F 0 "J4" H 5405 4171 50  0000 L CNN
F 1 "FPC_1x5_TopContact_P=0.5mm" H 5325 3875 50  0001 C CNN
F 2 "parts-lib:XKB-Enterprise_X05B20U05T_1x05_P0.50mm_Horizontal" H 7375 4875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904181638_XKB-Enterprise-X05B20U05T_C388691.pdf" H 5325 4275 50  0001 C CNN
F 4 "X05B20U05T" H 5535 4445 50  0001 C CNN "Part No."
F 5 "XKB Enterprise" H 5435 4345 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 5435 4345 50  0001 C CNN "Distributor"
F 7 "C388691" H 5435 4345 50  0001 C CNN "Distributor Part No."
F 8 "FFC,FPC connector SMD, P=0.5mm, Top Contact, Slide Lock" H 5435 4345 50  0001 C CNN "Description"
	1    5325 4175
	1    0    0    -1  
$EndComp
$Comp
L parts-lib:FPC_1x5_TopContact_P=0.5mm J5
U 1 1 5D83AA49
P 6775 4175
F 0 "J5" H 6695 4500 50  0000 C CNN
F 1 "FPC_1x5_TopContact_P=0.5mm" H 6775 3875 50  0001 C CNN
F 2 "parts-lib:XKB-Enterprise_X05B20U05T_1x05_P0.50mm_Horizontal" H 8825 4875 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1904181638_XKB-Enterprise-X05B20U05T_C388691.pdf" H 6775 4275 50  0001 C CNN
F 4 "X05B20U05T" H 6985 4445 50  0001 C CNN "Part No."
F 5 "XKB Enterprise" H 6885 4345 50  0001 C CNN "Manufacturer"
F 6 "LCSC" H 6885 4345 50  0001 C CNN "Distributor"
F 7 "C388691" H 6885 4345 50  0001 C CNN "Distributor Part No."
F 8 "FFC,FPC connector SMD, P=0.5mm, Top Contact, Slide Lock" H 6885 4345 50  0001 C CNN "Description"
	1    6775 4175
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5125 3975 4975 3975
Wire Wire Line
	4800 4175 5125 4175
Wire Wire Line
	4975 4275 5125 4275
Wire Wire Line
	4800 4375 5125 4375
Wire Wire Line
	6975 4275 7150 4275
Wire Wire Line
	6975 4375 7300 4375
$Comp
L parts-lib:DualShock-4Buttons SW7
U 1 1 5D86DD56
P 7375 3050
F 0 "SW7" H 7075 2500 50  0000 L CNN
F 1 "DualShock-4Buttons" H 7075 2400 50  0000 L CNN
F 2 "parts-lib:PS4-DualShock-CarbonPad-4Buttons" V 7725 2525 50  0001 C CNN
F 3 "" V 7725 2525 50  0001 C CNN
	1    7375 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
