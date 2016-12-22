
### Parts detail
####2.4" LCD TFT Display
Lcd touch screen display made by UXCELL, bought from [amazon.com](https://www.amazon.com/240x320-Touch-Panel-Module-ILI9341/dp/B00W8TPNIK/ref=sr_1_5?ie=UTF8&qid=1477094268&sr=8-5&keywords=uxcell+2.4+lcd). The coding is going to be modelled after [ILI9341_due](http://marekburiak.github.io/ILI9341_due/)
Front View
![Front View](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/LCD%20TFT%20screen/front_view.jpg?raw=true)
Rear View
![rear View](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/LCD%20TFT%20screen/back_view.jpg?raw=true)
Mechanical Drawings
![Mechanical Drawing](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/LCD%20TFT%20screen/mechanical.jpg?raw=true)
[TFT Datasheet](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/TJC-024-9341%20lcd%20touch%20screen%20data%20sheet.pdf)
[14 pin header datasheet](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/14%20pin%20header.pdf)
#####Eagle pic
14 pin Female header
![14 pin header](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/LCD%20TFT%20screen/Female%20header%20pins.PNG?raw=true)

****
####RGB LCD Display from seeedstudio
images
![RGB LCD](https://raw.githubusercontent.com/SeeedDocument/Grove_LCD_RGB_Backlight/master/images/intro.jpg)
source - seeedstudio

[Datasheet](http://wiki.seeed.cc/Grove-LCD_RGB_Backlight/)
#####Eagle pic
universal 4 pin grove connector
![4 pin connector](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/RGB%20LCD/universal%204%20pin%20connector.PNG?raw=true)
****
####Micro USB
Eagle pic
![micro usb](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/micro%20usb.PNG?raw=true)
obtained from sparkfun eagle library
[datasheet](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/micro%20usb%20mechanical.pdf)
####USB
Eagle pic
![USB](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/usbpic.PNG?raw=true)
obtained from CON-Berg library
####Atxmega Processor 
Datasheet
[long form](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/xmega%20manual.pdf)
[short form](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/ATxmega32E5.pdf)
 
pinouts
![pinout](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/Atxmega/pinouts.PNG?raw=true)
taken from atmel xmega 32 datasheet

#####Eagle pic
![xmega eagle](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/Atxmega/atxmega32.PNG?raw=true)
****
####4 Terminal shunt resistor
[datasheet](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/4%20termianl%20resistor(correct%20one).pdf)
#####Eagle pic
![shunt resistor](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/4%20terminal%20resistor.PNG?raw=true)

####Jtag
The eagle file was modified from the 10 pin jtag obtained from jtag library

#####Eagle pic
![jtag] (https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/jtag.PNG?raw=true)

####Banana plug
[Datasheet](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Datasheets/banana%20plug.pdf)
#####Eagle pic
![banplug](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/banana%20plug.PNG?raw=true)
 ***
 ***
###BOM
| Designation            | Description                     | Manufacturer       | manufacturer part no | vendor      | vendor part number | quantity | cost/part | Total price | Status  | Notes                                                                                                                                     |        |      |
|------------------------|---------------------------------|--------------------|----------------------|-------------|--------------------|----------|-----------|-------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------|--------|------|
| LCD                    | LCD display                     | uxcell             | a14121800ux0780      | Amazon      |                    | 1        | 13.36     | 13.36       | arrived | 3.3V 240x320 2.4" SPI TFT LCD Touch Panel Module https://www.amazon.com/gp/product/B00W8TPNIK/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1 |        |      |
| CON2                   | Universal 4 pin connector       | Seeedstudio        | 110990037            | mouser      | ACC39258O          | 1        | 1.5       | 1.5         |         | connector for seeedstudio rgb lcd screen.                                                                                                 |        |      |
| X1, X2                 | Micro Usb                       | Amphenol FCI       | 10118192-0001LF      | Digikey     | 609-4613-1-ND      | 1        | 0.46      | 0.47        |         |                                                                                                                                           |        |      |
| RGB                    | RGB lcd display                 | Seeedstudio        | 104030001            | seeedstudio |                    | 1        | 0         | 0           | arrived | already own this product                                                                                                                  |        |      |
| X3                     | USB                             |                    |                      |             |                    | 1        | 0         | 0           |         | obtain from prof                                                                                                                          |        |      |
| X4                     | Jtag                            |                    |                      |             |                    | 1        | 0         | 0           |         | obtain from prof                                                                                                                          |        |      |
| U2                     | Atxmega 32 E5                   | atmel              |                      |             |                    | 1        | 0         | 0           |         | obtain from prof                                                                                                                          |        |      |
| R1                     | 4 terminal Resistor             | ohmite             | FC4L64R010FER        | Digikey     | FC4L64R010FERCT-ND | 1        | 1.62      | 1.62        |         |                                                                                                                                           |        |      |
| X5                     | black Banana plugs              | Cinch connectivity | 105-0753-001         | digikey     | J110-ND            | 1        | 0.87      | 0.87        |         |                                                                                                                                           |        |      |
| X6                     | red Banana plugs                | Cinch connectivity | 105-0752-001         | Digikey     | J109-ND            | 1        | 0.87      | 0.87        |         |                                                                                                                                           |        |      |
| R2,R3,R4,R5,R6         | 1kohm current limiting resistor | yangeo             | RC1206JR-071KL       | Digikey     | 311-1.0KERCT-ND    | 50       | 0.0106    | 0.53        |         | required quantity 6-8/person                                                                                                              |        |      |
| R2,R3,R4,R5,R7         | 0 ohm resistor                  | yangeo             | RC1206JR-070RL       | Digikey     | 311-0.0ERCT-ND     | 50       | 0.0138    | 0.69        |         | if in case 1k resistor is not needed. Put this in place of that smt location                                                              |        |      |
| Battery                | battery holder                  | MPD                | SBH421AS             | digikey     | SBH421AS-ND        | 1        | 1.27      | 1.27        |         | might be replaced with sparkfun one                                                                                                       |        |      |
| PB1, PB2               | push button                     | omron              | B3FS-1010P           | Digikey     | SW1440CT-ND        | 2        | 0.79      | 0.79        |         |                                                                                                                                           |        |      |
| F1                     | fuse                            | bel fuse           | C1H 10               | Digikey     | 507-1942-1-ND      | 5        | 0.306     | 1.53        |         |                                                                                                                                           |        |      |
| CON1                   | 14 pin header                   | gtk                | fhss14g10/rh         | ebay        |                    | 1        | 0.4       | 0.4         | ordered | 10 for $4                                                                                                                                 |        |      |
|                        | Printed Circuit Board           | fusion pcb         | 5x5                  | seeedstudio |                    | 5        | $7.40     | 7.4         |         | The board was manufactured by combining 10 peoples projects and the cost was reduced from $17 to 7 dollars each                           |        |      |
| Switching Power Supply |                                 |                    |                      |             |                    |          |           |             |         |                                                                                                                                           |        |      |
| Cin                    | capacitor                       | Taiyo Yuden        | LMK212BJ106KG-T      | Digikey     | 587-1300-1-ND      | 1        | $0.20     | $0.20       |         | 10                                                                                                                                        | 0.139  | 1.39 |
| Cout                   | capacitor                       | Taiyo Yuden        | LMK212BJ226MG-T      | Digikey     | 587-1958-1-ND      | 2        | $0.71     | $0.14       |         | 10                                                                                                                                        | 0.56   | 5.6  |
| L1                     | inductor                        | MuRata             | LQM21PN1R5MC0D       | Digikey     | 490-4993-1-ND      | 1        | $0.13     | $0.13       |         | 10                                                                                                                                        | 0.119  | 1.19 |
| Rfbb                   | resistor                        | Vishay-Dale        | CRCW0402178KFKED     | Digikey     | 541-178KLCT-ND     | 1        | $0.10     | $0.10       |         | 10                                                                                                                                        | 0.032  | 0.32 |
| Rfbt                   | resistor                        | Vishay-Dale        | CRCW04021M00FKED     | Digikey     | 541-1.00MLCT-ND    | 1        | $0.10     | $0.10       |         | 25                                                                                                                                        | 0.0232 | 0.58 |
| U1                     | chip                            | Texas Instruments  | TPS63000DRCR         | TI          |                    | 1        | $2.13     | $2.13       |         | 10                                                                                                                                        | 1.91   | 19.1 |
|                        |                                 |                    |                      |             |                    |          | Total     | 37.51       |         |                                                                                                                                           |        |      |
***


