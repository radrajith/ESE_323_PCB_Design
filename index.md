## Welcome to my ESE 323 project page

***

### Description
ESE 323 is a Modern Circuit Board Design and Prototyping class taught by Prof Westerfeld. During this class, we are designing circuits using eagle cad software and also designing and building 3d models using Autocad. An Improved current meter will be designed and built for the final project. This current meter design is intended to minimize the effects of burden voltage that is present in the multimeters used in the lab and other facilites. 

***



### design and spec
Design drawing(initial version)
![Initial design](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/hand%20drawings/initial%20design.jpg?raw=true)

The current meter will be designed to read up to 7A. The maximum current rating is set to be 8A (the fuse will break at this point) and will only be able to read positive DC currents. The circuit can be powered by a battery with a voltage ranging from 2.5 to 5v, in this design 2-AAA battery is used as a power source i.e 3V source. The Analog current measurement will be sampled at 12kSPS (based on atxmega32 specs), and the digital output will have 12-bit resolution. 

The current is read by measuring the voltage that flows across a shunt resistor. The shunt resistor is specially chosen to have current sense technology, where the resistors packs have 4 terminals, 2 for current flow, and 2 for current measurement. The voltage across the resistor is read using the Atxmega micro controller's built in Analog to digital converter(ADC). 
 
Since the class is about coming with our own design and specs, I decided to add some extra feature to make this project cooler. A LCD touch screen is added to display the current readings such as peak, instantaneous, rms etc. In addition the LCD will be used to graph continuous data assuming I will finish the programming on time. Since the programming had to go through a number of revisions, a PDI communication will be implemented to modify the code as intended. In addition to serving as a normal current meter, A USB port will be added to monitor the current usage of mobile phone or other devices charged using USB. A micro usb port will be used as the input and USB as output. 

***
### Ideal World Scenario
The Atxmega32 comes equipped with amplifier of various ranges like 1/2x, 1x,2x,8x...64x. And since the internal bandgap reference voltage is used, the reference voltage will be a constant 1V. This means by using a 0.01 ohm resistor and using a amplification of 1/2x, the max current that can be read using the meter will be 200A. 
*** 
### Design: Considerations and practical limitations

* **Why 7A current limit?**
The 4 terminal  resistors are available for different power rating for 0.01 ohms. For instance, if 5W rated resistor was implemented the maximum current it can handle would be 22.36A (sqrt(5/0.01)). However, larger current required the trace width of the PCB to be more than 0.4 inch/1cm width. Since the board size use for this design is 5cmx5cm, having a trace width of 1cm will require larger board which adds to the cost. In addition the resistor land pattern is quite small that having a trace causes overlaps. A 4mm/.16in trace is implemented in this design, which corresponds to 7-8A according to graph. 

![current vs width](https://wiki.xtronics.com/images/7/74/PCB_current.png)
source: https://wiki.xtronics.com/index.php/Wire-Gauge_Ampacity

* **Using 0.5mohm vs 1mohm 4 terminal resistor?**

Although the cost and sizing of both parts remain the same, for this design 0.01 mohm resistor is used. An ammeter ideally has 0 internal resistance, thus for a current meter design its desired to pick a shunt resistor with lowest resistance. However, I had to go with 1mOhm resistor due to the fact that at practical usage, there is resistance contributed from the solder and traces. This will cause error in measurement. In addition, the limitation also arises from the availability of amplifiers in the MCU. With a step voltage of 0.000244, using 0.5 mOhm resistor will reduce the minimum current that can be measured and also accuracy. Thus to have a smaller minimum current, better accuracy and less error a higher valued resistor was implemented.

* **Implementation of two display ports
In addition to a 14 pin header, a 4 pin header is added for i2c communication to provide an alternative display source in case the touch screen display malfunctions and the if the coding cannot be finished on time. 

***
### **Schematic View**
Page one - schematic of the whole circuit with headers, jtag, processor, shunt resistor, fuse, banana plug, usb switches connected and wired according to the requirement.
![Page one](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/schmatic_page1.PNG?raw=true)
Page two - Schematic drawing of the switching power supply obtained from texas instruments 
![page two](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/schmatic_page2.PNG?raw=true)
###**Board view**
Board layout
![board](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/Board.PNG?raw=true)
***
### Design rule check and Cam Job
After routing all the parts on the board layout, design rule check had to be used to confirm weather the board meets the requirements. Since Fusion pcb services was planned to be used, the design rule check from seeedstudio was downloaded([DRU link](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/SeeedStudio_2layer_DRU_no_angle_20140221.dru))
After running the design rule check, couple of errors was shown. These errors were mainly becuasue of routing wires or vias close to each other. These errors were fixed and the DRC was repeated until there were no errors. 
 
For the cam job, the cam file provided by the seeedstudio does not include one of the files required by the gerbemerge software, it requires a slight modification. The cam file provided from [seeedstudio website](http://support.seeedstudio.com/knowledgebase/articles/422482-fusion-pcb-order-submission-guidelines) does not generate ".bor" file required for the gerbmerge software. Download the modified cam file from [here](https://github.com/radrajith/ESE_323_PCB_Design/raw/master/Seeed_Gerber_Generater_2-layer.cam). If you choose to modify the cam file provided by seeedstudio by yourself, the instructions are provided after the procedure to create cam files


#### procedure to create cam files
- In order to do the cam process, on the board window click file > cam processor.
- This will open up a window, Click file > open > job
![cam_1](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam%20job%201.png?raw=true)
- Locate you cam file downloaded provided in the above paragraph. 
![cam_2](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam_job_2.png?raw=true)
- Click process job. This will create all the files necessary to perform gerbmerge operation(described below) or upload to the pcb printing service. 

##### Modify the cam file by yourself(skip this if you used the cam file provided by me)
- After opening the cam processor with the file downloaded from the seeedstudio [link](http://support.seeedstudio.com/knowledgebase/articles/422482-fusion-pcb-order-submission-guidelines), click "add" button

![cam_3](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam_job_3.png?raw=true)

this will create a duplicate window of drill&holes. 
- Modify the "Section" from 'drill&holes' to 'board outline'
- Change "device" from 'excellon' to 'GERBER_RS274X' in the dropdown menu
- Change the "file" extension from '.txt' to '.bor'
- On the right side list of layer, make sure only '20 dimension' is selected, scroll all the way to the bottom to make sure. 

![cam_4](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/cam_job_4.PNG?raw=true)

- Click process job. This will create all the files necessary to perform gerbmerge operation(described below) or upload to the pcb printing service. 

***
### Printed Circuit Board(merged)
With primary goal of reducing the cost, group of 10 students joined and decided to combine the PCBs and place the order. Seeedstudio's PCB printint service was used. The 5 Boards were ordered(minimum quantity), for a 260mmX160mm sized board at the cost of $73.65.  
Front view

![front](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/20161107_173616.jpg?raw=true)

Rear view
 
![back](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/20161107_173631.jpg?raw=true)

After obtaining the boards, we carefully analyzed for any errors that were made during the manufacturing process. Luckily all of the board were printed as designed in the eagle. 
***
### Gerbmerge
#### **[For information about gerbemerge and tutorial click here](https://radrajith.github.io/gerbmerge/)**
Thank a lot Frank Yee for helping me make the gerbmerge tutorial and actively contributing to it. 

***
### Autodesk Inventor Case design pics 
For the case, there were two designs printed. Althougth the first design fit able to encapsulate the board perfectly, there was some inconveniences when changing the battery and assembling the top cover. [First design pics](https://github.com/radrajith/ESE_323_PCB_Design/blob/gh-pages/initialCAD.md)
The second design was planned to include a slide cover for ease of access to the battery. While programming the LCD screen it was clear that batteries had to be changed often. So accessing battery without disturbing anyother assembly was critical. After designing the first design, it was hard to keep the top case in place, for this reason a door type mechanism was devised and implemented. A stylus slot was added to store when not used, however due to over precision the slot sizing was little small. In addition a hole was added to access Jtag without having to remove the entire board out of the case. Similar to the first design the button press and lever was added to access button present beneath the LCD screen. 

* Circuit Board
![circuit Design](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/circuit_design_cad.PNG?raw=true)

* Bottom case
![top case1](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/top1.PNG?raw=true)
![top case2](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/top2.PNG?raw=true)

* Bottom case
![bottom case1](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/bottom1.PNG?raw=true)
![bottom case2](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/bottom2.PNG?raw=true)

* Button press extension
![button press](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/buttonpress.PNG?raw=true)

* Button press lever
![lever](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/mallet.PNG?raw=true)

* battery cover
![battery cover](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/batterycover.PNG?raw=true)

* Assembled parts view. 
![Assembly1](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/assembly1.PNG?raw=true)
![Assembly2](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/New%20cad%20design/assembly2.PNG?raw=true)

***
### Problems faced and how it was solved
#### TPS63000 switching power supply assembly
The switching power supply package is 3mmx3mm. Since the schematic and the board layout were obtained from texas instruments(webbench), the size of the pads and the package were not realized until we saw the pcb. Soldering this package was causing the major problem. Multiple approaches were tried and we finally figured out the best way to solder this package

[sps](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/PCB%20assembly/sps1.jpg?raw=true)

### Gain Caluculations
Highlighted areas indicate the ADC readings. The gain will decrease as the voltage reading goes over 0.96V. 

![gain](https://github.com/radrajith/ESE_323_PCB_Design/blob/master/Pictures/gain%20calculation.png?raw=true)

***
### Coding
Although major coding is yet to be done, the welcome screen code is currently running on the board. In coming days the touch screen functionality will be implemented along with push button functionality. The ADC code is almost complete, with minor fixes the current meter reading can be done. Ideas for a snake game is partially coded. 
The coding that has been done so far has been included below
[Code](https://github.com/radrajith/ATXMEGA_ILI9341_RGBLCD/tree/master/LCD_ILI9341_ESE_323)

Problems faced and coding experience details will be added in the coming days.
***
### Parts, pinouts, BOM
The detailed picture of the parts used has been seperated into a different page along with the BOM. 
[Parts, pinouts, BOM](https://github.com/radrajith/ESE_323_PCB_Design/blob/gh-pages/partsDetail.md)

Since the order of the 10 people were combined, the link to the Super BOM is also attached below.
[Super BOM](https://docs.google.com/spreadsheets/d/1yWEKycQpd-gtfOP6fBI8lNDqo7oUvL_eeN0UET3jQ1g/edit?usp=sharing)
Once again, credits to Frank Yee for putting together and combining the BOM and also managing the finances. 
***
### Course improvement suggestions
* Finer solder paste to be used with the thinnest needle. 
* Encouraging to form groups to bring down the cost of the project
* Deadlines to force student to finish the board designs on time. 
* Warn the students about the package sizing, but dont ban the usage of tiny and impossible package. Lets student make mistakes and force them to come up with good solutions. 

### Contact
radrajith@gmail.com (2016)

