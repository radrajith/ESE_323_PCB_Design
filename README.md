## Welcome to my ESE 323 project page

***

### Description
ESE 323 is a Modern Circuit Board Design and Prototyping class taught by Prof Westerfeld. During this class, we are designing circuits using eagle cad software and also designing and building 3d models using Autocad. An Improved current meter will be designed and built for the final project. This current meter design is intended to minimize the effects of burden voltage that is present in the multimeters used in the lab and other facilites. 

***

***


###design and spec
Design drawing(initial version)
![Initial design](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/hand%20drawings/initial%20design.jpg?raw=true)

The current meter will be designed to read up to 7A. The maximum current rating is set to be 8A (the fuse will break at this point) and will only be able to read positive DC currents. The circuit can be powered by a battery with a voltage ranging from 2.5 to 5v, in this design 2-AAA battery is used as a power source i.e 3V source. The Analog current measurement will be sampled at 12kSPS (based on atxmega32 specs), and the digital output will have 12-bit resolution. 

The current is read by measuring the voltage that flows across a shunt resistor. The shunt resistor is specially chosen to have current sense technology, where the resistors packs have 4 terminals, 2 for current flow, and 2 for current measurement. The voltage across the resistor is read using the Atxmega micro controller's built in Analog to digital converter(ADC). 
 
Since the class is about coming with our own design and specs, I decided to add some extra feature to make this project cooler. A LCD touch screen is added to display the current readings such as peak, instantaneous, rms etc. In addition the LCD will be used to graph continuous data assuming I will finish the programming on time. Since the programming had to go through a number of revisions, a PDI communication will be implemented to modify the code as intended. In addition to serving as a normal current meter, A USB port will be added to monitor the current usage of mobile phone or other devices charged using USB. A micro usb port will be used as the input and USB as output. 

***
###Ideal World Scenario
The Atxmega32 comes equipped with amplifier of various ranges like 1/2x, 1x,2x,8x...64x. And since the internal bandgap reference voltage is used, the reference voltage will be a constant 1V. This means by using a 0.01 ohm resistor and using a amplification of 1/2x, the max current that can be read using the meter will be 200A. 
*** 
###Design: Considerations and practical limitations

* **Why 7A current limit?**
The 4 terminal  resistors are available for different power rating for 0.01 ohms. For instance, if 5W rated resistor was implemented the maximum current it can handle would be 22.36A (sqrt(5/0.01)). However, larger current required the trace width of the PCB to be more than 0.4 inch/1cm width. Since the board size use for this design is 5cmx5cm, having a trace width of 1cm will require larger board which adds to the cost. In addition the resistor land pattern is quite small that having a trace causes overlaps. A 4mm/.16in trace is implemented in this design, which corresponds to 7-8A according to graph. 

![current vs width](https://wiki.xtronics.com/images/7/74/PCB_current.png)
source: https://wiki.xtronics.com/index.php/Wire-Gauge_Ampacity

* **Using 0.5mohm vs 1mohm 4 terminal resistor?**

Although the cost and sizing of both parts remain the same, for this design 0.01 mohm resistor is used. An ammeter ideally has 0 internal resistance, thus for a current meter design its desired to pick a shunt resistor with lowest resistance. However, I had to go with 1mOhm resistor due to the fact that at practical usage, there is resistance contributed from the solder and traces. This will cause error in measurement. In addition, the limitation also arises from the availability of amplifiers in the MCU. With a step voltage of 0.000244, using 0.5 mOhm resistor will reduce the minimum current that can be measured and also accuracy. Thus to have a smaller minimum current, better accuracy and less error a higher valued resistor was implemented.

* **Implementation of two display ports
In addition to a 14 pin header, a 4 pin header is added for i2c communication to provide an alternative display source in case the touch screen display malfunctions and the if the coding cannot be finished on time. 

***
###**Schematic View**
Page one - schematic of the whole circuit with headers, jtag, processor, shunt resistor, fuse, banana plug, usb switches connected and wired according to the requirement.
![Page one](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/schmatic_page1.PNG?raw=true)
Page two - Schematic drawing of the switching power supply obtained from texas instruments 
![page two](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/schmatic_page2.PNG?raw=true)
###**Board view**
Board layout
![board](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/Board.PNG?raw=true)
***
###Design rule check and Cam Job
After routing all the parts on the board layout, design rule check had to be used to confirm weather the board meets the requirements. Since Fusion pcb services was planned to be used, the design rule check from seeedstudio was downloaded([DRU link](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/SeeedStudio_2layer_DRU_no_angle_20140221.dru))
After running the design rule check, couple of errors was shown. These errors were mainly becuasue of routing wires or vias close to each other. These errors were fixed and the DRC was repeated until there were no errors. 
 
For the cam job, the cam file provided by the seeedstudio does not include one of the files required by the gerbemerge software, it requires a slight modification. The cam file provided from [seeedstudio website](http://support.seeedstudio.com/knowledgebase/articles/422482-fusion-pcb-order-submission-guidelines) does not generate ".bor" file required for the gerbmerge software. Download the modified cam file from [here](https://github.com/radrajith/ESE_323_PCB_Design/raw/master/Seeed_Gerber_Generater_2-layer.cam). If you choose to modify the cam file provided by seeedstudio by yourself, the instructions are provided after the procedure to create cam files


####procedure to create cam files
- In order to do the cam process, on the board window click file > cam processor.
- This will open up a window, Click file > open > job
![cam_1](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam%20job%201.png?raw=true)
- Locate you cam file downloaded provided in the above paragraph. 
![cam_2](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam_job_2.png?raw=true)
- Click process job. This will create all the files necessary to perform gerbmerge operation(described below) or upload to the pcb printing service. 

#####Modify the cam file by yourself
- After opening the cam processor with the file downloaded from the seeedstudio [link](http://support.seeedstudio.com/knowledgebase/articles/422482-fusion-pcb-order-submission-guidelines), click "add" button
![cam_3](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam_job_3.png?raw=true)
this will create a duplicate window of drill&holes. 
- Modify the "Section" from 'drill&holes' to 'board outline'
- Change "device" from 'excellon' to 'GERBER_RS274X' in the dropdown menu
- Change the "file" extension from '.txt' to '.bor'
- On the right side list of layer, make sure only '20 dimension' is selected, scroll all the way to the bottom to make sure. 
![cam_4](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam_job_4.png?raw=true)
- Click process job. This will create all the files necessary to perform gerbmerge operation(described below) or upload to the pcb printing service. 

***
###Gerbmerge
####**[For information about gerbemerge and tutorial](https://radrajith.github.io/gerbmerge/)**
Thank a lot Frank Yee for helping me make the gerbmerge tutorial and actively contributing to it. 

***
###Autodesk Inventor Case design pics 
coming soon. 
***
###Gain Caluculations
Highlighted areas indicate the ADC readings. The gain will decrease as the voltage reading goes over 0.96V

![gain](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/gain%20calculation.png?raw=true)
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





### Contact
radrajith@gmail.com (2016)

