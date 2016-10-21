<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="AcceleratedDesigns_Lib">
<packages>
<package name="WB_GND">
<pad name="1" x="0" y="0" drill="0"/>
</package>
<package name="WB_STARTUP_VOLTAGE_SOURCE">
<pad name="1" x="0" y="0" drill="0"/>
<pad name="2" x="0" y="0" drill="0"/>
</package>
</packages>
<symbols>
<symbol name="WB_GND@1">
<pin name="1@1" x="0" y="2.54" visible="off" length="short" direction="pas" rot="MR270"/>
<wire x1="0" y1="2.54" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.302" y1="0" x2="3.302" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.286" y1="-1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-2.032" x2="0.762" y2="-2.032" width="0.1524" layer="94"/>
</symbol>
<symbol name="WB_STARTUP_VOLTAGE_SOURCE@1">
<pin name="+@1" x="-7.62" y="0" visible="off" length="short" direction="pas" rot="MR180"/>
<pin name="-@2" x="7.62" y="0" visible="off" length="short" direction="pas" rot="MR0"/>
<wire x1="-1.524" y1="2.794" x2="-1.524" y2="-1.778" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.778" x2="1.27" y2="-2.286" width="0.1524" layer="94"/>
<wire x1="1.27" y1="-2.286" x2="1.27" y2="-3.048" width="0.1524" layer="94"/>
<wire x1="4.064" y1="3.048" x2="4.064" y2="4.572" width="0.1524" layer="94"/>
<wire x1="-4.318" y1="3.048" x2="-4.318" y2="4.572" width="0.1524" layer="94"/>
<wire x1="-3.556" y1="3.81" x2="-5.08" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="0" x2="-7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="7.62" y1="0" x2="3.81" y2="0" width="0.1524" layer="94"/>
<text x="0" y="6.35" size="2" layer="95" align="center">&gt;NAME</text>
<wire x1="-3.248025" y1="-1.948275" x2="-3.2998625" y2="-1.859934375" width="0.127" layer="94" curve="358.4388"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="WB_GND">
<gates>
<gate name="1" symbol="WB_GND@1" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="WB_GND" package="WB_GND">
<connects>
<connect gate="1" pin="1@1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_NAME" value="WB_GND" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="WB_GND" constant="no"/>
<attribute name="POWERPORTTYPE" value="POWER_GROUND" constant="no"/>
<attribute name="VALUE" value="Value" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="WB_STARTUP_VOLTAGE_SOURCE">
<gates>
<gate name="1" symbol="WB_STARTUP_VOLTAGE_SOURCE@1" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="WB_STARTUP_VOLTAGE_SOURCE" package="WB_STARTUP_VOLTAGE_SOURCE">
<connects>
<connect gate="1" pin="+@1" pad="1"/>
<connect gate="1" pin="-@2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_NAME" value="WB_STARTUP_VOLTAGE_SOURCE" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="WB_STARTUP_VOLTAGE_SOURCE" constant="no"/>
<attribute name="POWERPORTTYPE" value="POWER_GROUND" constant="no"/>
<attribute name="VALUE" value="Value" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="sps">
<packages>
<package name="TP-1502">
<pad name="1" x="0" y="0" drill="0.8128" diameter="1.651"/>
<text x="-2.8702" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
</package>
<package name="0402">
<smd name="1" x="-0.4191" y="0" dx="0.5588" dy="0.6096" layer="1"/>
<smd name="2" x="0.4191" y="0" dx="0.5588" dy="0.6096" layer="1"/>
<wire x1="-0.1524" y1="-0.3048" x2="-0.1524" y2="0.3048" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="0.3048" x2="-0.5588" y2="0.3048" width="0.1524" layer="25"/>
<wire x1="-0.5588" y1="-0.3048" x2="-0.1524" y2="-0.3048" width="0.1524" layer="25"/>
<wire x1="0.127" y1="0.3048" x2="0.1524" y2="-0.3048" width="0.1524" layer="25"/>
<wire x1="0.1524" y1="-0.3048" x2="0.5588" y2="-0.3048" width="0.1524" layer="25"/>
<wire x1="0.5588" y1="0.3048" x2="0.127" y2="0.3048" width="0.1524" layer="25"/>
<wire x1="-0.1524" y1="-0.3048" x2="0.1524" y2="-0.3048" width="0.1524" layer="25"/>
<wire x1="0.5588" y1="-0.3048" x2="0.5588" y2="0.3048" width="0.1524" layer="25"/>
<wire x1="0.127" y1="0.3048" x2="-0.1524" y2="0.3048" width="0.1524" layer="25"/>
<wire x1="-0.5588" y1="0.3048" x2="-0.5588" y2="-0.3048" width="0.1524" layer="25"/>
<text x="-2.8702" y="-1.905" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="0805">
<smd name="1" x="-0.9017" y="0" dx="1.1176" dy="1.4478" layer="1"/>
<smd name="2" x="0.9017" y="0" dx="1.1176" dy="1.4478" layer="1"/>
<wire x1="-0.3556" y1="-0.7112" x2="-0.3556" y2="0.7112" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="0.7112" x2="-1.1176" y2="0.7112" width="0.1524" layer="25"/>
<wire x1="-1.1176" y1="-0.7112" x2="-0.3556" y2="-0.7112" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="0.7112" x2="0.3556" y2="-0.7112" width="0.1524" layer="25"/>
<wire x1="0.3556" y1="-0.7112" x2="1.1176" y2="-0.7112" width="0.1524" layer="25"/>
<wire x1="1.1176" y1="0.7112" x2="1.1176" y2="0.7366" width="0.1524" layer="25"/>
<wire x1="1.1176" y1="0.7366" x2="0.3556" y2="0.7112" width="0.1524" layer="25"/>
<wire x1="-0.3556" y1="-0.7112" x2="0.3556" y2="-0.7112" width="0.1524" layer="25"/>
<wire x1="1.1176" y1="-0.7112" x2="1.1176" y2="0.7112" width="0.1524" layer="25"/>
<wire x1="1.1176" y1="0.7112" x2="-0.3556" y2="0.7112" width="0.1524" layer="25"/>
<wire x1="-1.1176" y1="0.7112" x2="-1.1176" y2="-0.7112" width="0.1524" layer="25"/>
<text x="-2.8702" y="-3.175" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="DRC0010J">
<smd name="1" x="-1.4" y="1" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="2" x="-1.4" y="0.5" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="3" x="-1.4" y="0" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="4" x="-1.4" y="-0.5" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="5" x="-1.4" y="-0.999996875" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="6" x="1.4" y="-0.999996875" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="7" x="1.4" y="-0.5" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="8" x="1.4" y="0" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="9" x="1.4" y="0.5" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="10" x="1.4" y="1" dx="0.24" dy="0.6" layer="1" rot="R90"/>
<smd name="11" x="0.000003125" y="0" dx="1.65" dy="2.4" layer="1" cream="no"/>
<wire x1="-1.5494" y1="-1.5494" x2="-1.5494" y2="1.5494" width="0.1524" layer="25"/>
<wire x1="1.5494" y1="-1.5494" x2="1.5494" y2="1.5494" width="0.1524" layer="25"/>
<wire x1="-1.5494" y1="1.5494" x2="1.5494" y2="1.5494" width="0.1524" layer="25"/>
<wire x1="-1.5494" y1="-1.5494" x2="1.5494" y2="-1.5494" width="0.1524" layer="25"/>
<wire x1="-0.5842" y1="0.8636" x2="-1.1684" y2="0.8636" width="0.1016" layer="25" curve="-180"/>
<wire x1="-1.1684" y1="0.8636" x2="-0.5842" y2="0.8636" width="0.1016" layer="25" curve="-180"/>
<text x="3.4798" y="0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-1.7018" y1="1.7018" x2="-1.143" y2="1.7018" width="0.2032" layer="21"/>
<wire x1="-1.7018" y1="1.5494" x2="-1.7018" y2="1.7018" width="0.2032" layer="21"/>
<wire x1="1.7018" y1="1.5494" x2="1.7018" y2="1.7018" width="0.2032" layer="21"/>
<wire x1="1.5494" y1="1.7018" x2="1.7018" y2="1.7018" width="0.2032" layer="21"/>
<wire x1="1.5494" y1="-1.7018" x2="1.7018" y2="-1.7018" width="0.2032" layer="21"/>
<wire x1="1.7018" y1="-1.7018" x2="1.7018" y2="-1.5494" width="0.2032" layer="21"/>
<wire x1="-1.7018" y1="-1.7018" x2="-1.5494" y2="-1.7018" width="0.2032" layer="21"/>
<wire x1="-1.7018" y1="-1.7018" x2="-1.7018" y2="-1.5494" width="0.2032" layer="21"/>
<polygon width="0" layer="31">
<vertex x="-0.75" y="-1.159996875"/>
<vertex x="0.75" y="-1.159996875"/>
<vertex x="0.75" y="-0.099996875"/>
<vertex x="-0.75" y="-0.099996875"/>
</polygon>
<polygon width="0" layer="31">
<vertex x="-0.75" y="0.1"/>
<vertex x="0.75" y="0.1"/>
<vertex x="0.75" y="1.16"/>
<vertex x="-0.75" y="1.16"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="TP-1502">
<pin name="TP" x="0" y="0" direction="pas" rot="R180"/>
<wire x1="-38.1" y1="5.08" x2="-38.1" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-38.1" y1="-5.08" x2="-7.62" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-38.1" y2="5.08" width="0.1524" layer="94"/>
<text x="-27.5844" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="-28.2194" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="WB_RESISTOR">
<pin name="1" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<wire x1="7.62" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="3.81" y2="1.524" width="0.1524" layer="94"/>
<wire x1="3.81" y1="1.524" x2="1.905" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-1.524" x2="0" y2="1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.524" x2="-3.81" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="1.524" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0" x2="-7.62" y2="0" width="0.1524" layer="94"/>
<text x="-4.7244" y="4.6736" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="-5.3594" y="-6.1214" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="WB_CAPACITOR">
<pin name="1" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<wire x1="0.762" y1="-3.048" x2="0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="3.048" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-3.048" x2="-0.762" y2="3.048" width="0.1524" layer="94"/>
<text x="-4.7244" y="6.5786" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="-5.3594" y="4.0386" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="WB_INDUCTOR">
<pin name="2" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="1" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.6924" y2="0.8382" width="0.1524" layer="94" curve="-12"/>
<wire x1="2.6924" y1="0.8382" x2="3.81" y2="1.8542" width="0.1524" layer="94" curve="-78"/>
<wire x1="3.81" y1="1.8542" x2="4.9022" y2="0.8382" width="0.1524" layer="94" curve="-79"/>
<wire x1="4.9022" y1="0.8382" x2="5.08" y2="0.0762" width="0.1524" layer="94" curve="-2"/>
<wire x1="0" y1="0" x2="0.1524" y2="0.8382" width="0.1524" layer="94" curve="-12"/>
<wire x1="0.1524" y1="0.8382" x2="1.27" y2="1.8542" width="0.1524" layer="94" curve="-78"/>
<wire x1="1.27" y1="1.8542" x2="2.3622" y2="0.8382" width="0.1524" layer="94" curve="-79"/>
<wire x1="2.3622" y1="0.8382" x2="2.54" y2="-0.1778" width="0.1524" layer="94" curve="-17"/>
<wire x1="-2.54" y1="0" x2="-2.3876" y2="0.8382" width="0.1524" layer="94" curve="-12"/>
<wire x1="-2.3876" y1="0.8382" x2="-1.27" y2="1.8542" width="0.1524" layer="94" curve="-78"/>
<wire x1="-1.27" y1="1.8542" x2="-0.1778" y2="0.8382" width="0.1524" layer="94" curve="-79"/>
<wire x1="-0.1778" y1="0.8382" x2="0" y2="-0.1778" width="0.1524" layer="94" curve="-17"/>
<wire x1="-5.08" y1="0" x2="-4.9276" y2="0.8382" width="0.1524" layer="94" curve="-12"/>
<wire x1="-4.9276" y1="0.8382" x2="-3.81" y2="1.8542" width="0.1524" layer="94" curve="-78"/>
<wire x1="-3.81" y1="1.8542" x2="-2.7178" y2="0.8382" width="0.1524" layer="94" curve="-79"/>
<wire x1="-2.7178" y1="0.8382" x2="-2.54" y2="-0.1778" width="0.1524" layer="94" curve="-17"/>
<wire x1="-2.54" y1="-0.1778" x2="-2.54" y2="0" width="0.1524" layer="94" curve="-53"/>
<wire x1="0" y1="-0.1778" x2="0" y2="0" width="0.1524" layer="94" curve="-53"/>
<wire x1="2.54" y1="-0.1778" x2="2.54" y2="0" width="0.1524" layer="94" curve="-53"/>
<text x="-4.7244" y="4.6736" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="-5.3594" y="-3.5814" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="TPS63000DRC">
<pin name="VOUT" x="20.32" y="10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="L2" x="20.32" y="15.24" length="middle" direction="pas" rot="R180"/>
<pin name="PGND" x="20.32" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="L1" x="-20.32" y="15.24" length="middle" direction="pas"/>
<pin name="VIN" x="-20.32" y="10.16" length="middle" direction="pwr"/>
<pin name="EN" x="-20.32" y="0" length="middle" direction="in"/>
<pin name="PS_SYNC" x="-20.32" y="-7.62" length="middle" direction="in"/>
<pin name="VINA" x="-20.32" y="5.08" length="middle" direction="pwr"/>
<pin name="GND" x="20.32" y="-10.16" length="middle" direction="pwr" rot="R180"/>
<pin name="FB" x="20.32" y="0" length="middle" direction="in" rot="R180"/>
<pin name="PAD" x="20.32" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<wire x1="-15.24" y1="-20.32" x2="15.24" y2="-20.32" width="0.1524" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="20.32" width="0.1524" layer="94"/>
<wire x1="15.24" y1="20.32" x2="-15.24" y2="20.32" width="0.1524" layer="94"/>
<wire x1="-15.24" y1="20.32" x2="-15.24" y2="-20.32" width="0.1524" layer="94"/>
<text x="-4.7244" y="1.4986" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="-5.3594" y="-1.0414" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TP-1502">
<gates>
<gate name="A" symbol="TP-1502" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TP-1502">
<connects>
<connect gate="A" pin="TP" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW04021M00FKED">
<gates>
<gate name="A" symbol="WB_RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0402">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LMK212BJ106KG-T">
<gates>
<gate name="A" symbol="WB_CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LMK212BJ226MG-T">
<gates>
<gate name="A" symbol="WB_CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LQM21PN1R5MC0D">
<gates>
<gate name="A" symbol="WB_INDUCTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402178KFKED">
<gates>
<gate name="A" symbol="WB_RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="0402">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPS63000DRCR" prefix="U">
<gates>
<gate name="A" symbol="TPS63000DRC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DRC0010J">
<connects>
<connect gate="A" pin="EN" pad="6"/>
<connect gate="A" pin="FB" pad="10"/>
<connect gate="A" pin="GND" pad="9"/>
<connect gate="A" pin="L1" pad="4"/>
<connect gate="A" pin="L2" pad="2"/>
<connect gate="A" pin="PAD" pad="11"/>
<connect gate="A" pin="PGND" pad="3"/>
<connect gate="A" pin="PS_SYNC" pad="7"/>
<connect gate="A" pin="VIN" pad="5"/>
<connect gate="A" pin="VINA" pad="8"/>
<connect gate="A" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND" library="AcceleratedDesigns_Lib" deviceset="WB_GND" device="WB_GND" value="WB_GND"/>
<part name="VIN" library="AcceleratedDesigns_Lib" deviceset="WB_STARTUP_VOLTAGE_SOURCE" device="WB_STARTUP_VOLTAGE_SOURCE" value="WB_STARTUP_VOLTAGE_SOURCE"/>
<part name="VOUT" library="sps" deviceset="TP-1502" device=""/>
<part name="GND1" library="sps" deviceset="TP-1502" device=""/>
<part name="VIN+" library="sps" deviceset="TP-1502" device=""/>
<part name="GND-" library="sps" deviceset="TP-1502" device=""/>
<part name="RFBT" library="sps" deviceset="CRCW04021M00FKED" device=""/>
<part name="RFBB" library="sps" deviceset="CRCW0402178KFKED" device=""/>
<part name="CIN" library="sps" deviceset="LMK212BJ106KG-T" device=""/>
<part name="COUT_1" library="sps" deviceset="LMK212BJ226MG-T" device=""/>
<part name="COUT_2" library="sps" deviceset="LMK212BJ226MG-T" device=""/>
<part name="L1" library="sps" deviceset="LQM21PN1R5MC0D" device=""/>
<part name="U1" library="sps" deviceset="TPS63000DRCR" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="2.54" y="38.1" size="1.778" layer="91">10uf</text>
<text x="106.68" y="35.56" size="1.778" layer="91">22uf</text>
<text x="48.26" y="91.44" size="1.778" layer="91">1.5uh</text>
<text x="86.36" y="55.88" size="1.778" layer="91">1M</text>
<text x="86.36" y="27.94" size="1.778" layer="91">178k</text>
</plain>
<instances>
<instance part="GND" gate="1" x="41.91" y="12.7" smashed="yes">
<attribute name="NAME" x="41.91" y="18.288" size="2" layer="95" align="bottom-center" display="off"/>
</instance>
<instance part="VIN" gate="1" x="-20.32" y="50.8" smashed="yes" rot="R270">
<attribute name="NAME" x="-15.748" y="56.642" size="2" layer="95"/>
</instance>
<instance part="VOUT" gate="A" x="139.7" y="71.12" smashed="yes" rot="R180">
<attribute name="NAME" x="167.2844" y="62.0014" size="2.0828" layer="95" ratio="6" rot="SR180"/>
</instance>
<instance part="GND1" gate="A" x="139.7" y="15.24" smashed="yes" rot="R180">
<attribute name="NAME" x="167.2844" y="6.1214" size="2.0828" layer="95" ratio="6" rot="SR180"/>
</instance>
<instance part="VIN+" gate="A" x="-20.32" y="71.12" smashed="yes">
<attribute name="NAME" x="-47.9044" y="80.2386" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="GND-" gate="A" x="-20.32" y="15.24" smashed="yes">
<attribute name="NAME" x="-47.9044" y="24.3586" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="RFBT" gate="A" x="76.2" y="60.96" smashed="yes" rot="R90">
<attribute name="NAME" x="71.5264" y="56.2356" size="2.0828" layer="95" ratio="6" rot="SR90"/>
</instance>
<instance part="RFBB" gate="A" x="76.2" y="33.02" smashed="yes" rot="R90">
<attribute name="NAME" x="71.5264" y="28.2956" size="2.0828" layer="95" ratio="6" rot="SR90"/>
</instance>
<instance part="CIN" gate="A" x="-5.08" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="-11.6586" y="43.5356" size="2.0828" layer="95" ratio="6" rot="SR90"/>
</instance>
<instance part="COUT_1" gate="A" x="99.06" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="92.4814" y="43.5356" size="2.0828" layer="95" ratio="6" rot="SR90"/>
</instance>
<instance part="COUT_2" gate="A" x="116.84" y="48.26" smashed="yes" rot="R90">
<attribute name="NAME" x="110.2614" y="43.5356" size="2.0828" layer="95" ratio="6" rot="SR90"/>
</instance>
<instance part="L1" gate="A" x="38.1" y="96.52" smashed="yes">
<attribute name="NAME" x="33.3756" y="101.1936" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
<instance part="U1" gate="A" x="38.1" y="60.96" smashed="yes">
<attribute name="NAME" x="33.3756" y="62.4586" size="2.0828" layer="95" ratio="6" rot="SR0"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="1" class="0">
<segment>
<wire x1="12.7" y1="53.34" x2="12.7" y2="60.96" width="0" layer="91"/>
<wire x1="12.7" y1="60.96" x2="12.7" y2="66.04" width="0" layer="91"/>
<wire x1="12.7" y1="66.04" x2="12.7" y2="71.12" width="0" layer="91"/>
<wire x1="17.78" y1="53.34" x2="12.7" y2="53.34" width="0" layer="91"/>
<wire x1="17.78" y1="60.96" x2="12.7" y2="60.96" width="0" layer="91"/>
<junction x="12.7" y="60.96"/>
<wire x1="17.78" y1="66.04" x2="12.7" y2="66.04" width="0" layer="91"/>
<junction x="12.7" y="66.04"/>
<wire x1="-20.32" y1="71.12" x2="-5.08" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="71.12" x2="12.7" y2="71.12" width="0.1524" layer="91"/>
<wire x1="12.7" y1="71.12" x2="17.78" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="55.88" x2="-5.08" y2="71.12" width="0.1524" layer="91"/>
<junction x="-5.08" y="71.12"/>
<junction x="12.7" y="71.12"/>
<pinref part="VIN" gate="1" pin="+@1"/>
<wire x1="-20.32" y1="58.42" x2="-20.32" y2="71.12" width="0.1524" layer="91"/>
<pinref part="VIN+" gate="A" pin="TP"/>
<junction x="-20.32" y="71.12"/>
<pinref part="CIN" gate="A" pin="1"/>
<pinref part="U1" gate="A" pin="VIN"/>
<pinref part="U1" gate="A" pin="EN"/>
<pinref part="U1" gate="A" pin="PS_SYNC"/>
<pinref part="U1" gate="A" pin="VINA"/>
</segment>
</net>
<net name="GND1" class="0">
<segment>
<pinref part="GND" gate="1" pin="1@1"/>
<wire x1="-5.08" y1="15.24" x2="41.91" y2="15.24" width="0" layer="91"/>
<wire x1="41.91" y1="15.24" x2="60.96" y2="15.24" width="0" layer="91"/>
<wire x1="60.96" y1="15.24" x2="76.2" y2="15.24" width="0" layer="91"/>
<wire x1="76.2" y1="15.24" x2="99.06" y2="15.24" width="0" layer="91"/>
<wire x1="99.06" y1="15.24" x2="139.7" y2="15.24" width="0" layer="91"/>
<label x="114.3" y="10.16" size="1.778" layer="95"/>
<pinref part="GND1" gate="A" pin="TP"/>
<junction x="41.91" y="15.24"/>
<wire x1="-5.08" y1="40.64" x2="-5.08" y2="15.24" width="0.1524" layer="91"/>
<wire x1="99.06" y1="40.64" x2="116.84" y2="40.64" width="0" layer="91"/>
<wire x1="99.06" y1="40.64" x2="99.06" y2="15.24" width="0" layer="91"/>
<junction x="99.06" y="15.24"/>
<pinref part="VIN" gate="1" pin="-@2"/>
<wire x1="-20.32" y1="43.18" x2="-20.32" y2="15.24" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="15.24" x2="-5.08" y2="15.24" width="0.1524" layer="91"/>
<wire x1="58.42" y1="50.8" x2="60.96" y2="50.8" width="0.1524" layer="91"/>
<wire x1="60.96" y1="50.8" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<wire x1="60.96" y1="45.72" x2="60.96" y2="43.18" width="0.1524" layer="91"/>
<wire x1="60.96" y1="43.18" x2="60.96" y2="15.24" width="0.1524" layer="91"/>
<wire x1="58.42" y1="45.72" x2="60.96" y2="45.72" width="0.1524" layer="91"/>
<wire x1="58.42" y1="43.18" x2="60.96" y2="43.18" width="0.1524" layer="91"/>
<junction x="60.96" y="45.72"/>
<junction x="60.96" y="43.18"/>
<junction x="60.96" y="15.24"/>
<junction x="-5.08" y="15.24"/>
<pinref part="GND-" gate="A" pin="TP"/>
<junction x="-20.32" y="15.24"/>
<wire x1="76.2" y1="25.4" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<junction x="76.2" y="15.24"/>
<pinref part="CIN" gate="A" pin="2"/>
<pinref part="U1" gate="A" pin="PGND"/>
<pinref part="U1" gate="A" pin="GND"/>
<pinref part="U1" gate="A" pin="PAD"/>
<pinref part="RFBB" gate="A" pin="2"/>
<pinref part="COUT_1" gate="A" pin="2"/>
<junction x="99.06" y="40.64"/>
<pinref part="COUT_2" gate="A" pin="2"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<wire x1="99.06" y1="55.88" x2="99.06" y2="71.12" width="0" layer="91"/>
<wire x1="99.06" y1="55.88" x2="116.84" y2="55.88" width="0" layer="91"/>
<label x="111.76" y="73.66" size="1.778" layer="95"/>
<pinref part="VOUT" gate="A" pin="TP"/>
<junction x="99.06" y="71.12"/>
<wire x1="58.42" y1="71.12" x2="76.2" y2="71.12" width="0" layer="91"/>
<wire x1="76.2" y1="71.12" x2="99.06" y2="71.12" width="0" layer="91"/>
<wire x1="99.06" y1="71.12" x2="139.7" y2="71.12" width="0" layer="91"/>
<wire x1="76.2" y1="68.58" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<junction x="76.2" y="71.12"/>
<pinref part="U1" gate="A" pin="VOUT"/>
<pinref part="RFBT" gate="A" pin="1"/>
<pinref part="COUT_1" gate="A" pin="1"/>
<junction x="99.06" y="55.88"/>
<pinref part="COUT_2" gate="A" pin="1"/>
</segment>
</net>
<net name="2" class="0">
<segment>
<wire x1="17.78" y1="76.2" x2="12.7" y2="76.2" width="0.1524" layer="91"/>
<wire x1="12.7" y1="76.2" x2="12.7" y2="96.52" width="0.1524" layer="91"/>
<wire x1="30.48" y1="96.52" x2="12.7" y2="96.52" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="1"/>
<pinref part="U1" gate="A" pin="L1"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<wire x1="63.5" y1="96.52" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<wire x1="63.5" y1="76.2" x2="58.42" y2="76.2" width="0.1524" layer="91"/>
<wire x1="45.72" y1="96.52" x2="63.5" y2="96.52" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="2"/>
<pinref part="U1" gate="A" pin="L2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="58.42" y1="60.96" x2="66.04" y2="60.96" width="0.1524" layer="91"/>
<wire x1="66.04" y1="60.96" x2="66.04" y2="48.26" width="0.1524" layer="91"/>
<wire x1="66.04" y1="48.26" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="53.34" x2="76.2" y2="48.26" width="0.1524" layer="91"/>
<wire x1="76.2" y1="48.26" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
<junction x="76.2" y="48.26"/>
<pinref part="U1" gate="A" pin="FB"/>
<pinref part="RFBT" gate="A" pin="2"/>
<pinref part="RFBB" gate="A" pin="1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
