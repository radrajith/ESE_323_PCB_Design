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
<package name="0805">
<pad name="1" x="-0.9017" y="0" drill="0"/>
<pad name="2" x="0.9017" y="0" drill="0"/>
</package>
<package name="WB_GND">
<pad name="1" x="0" y="0" drill="0"/>
</package>
<package name="0402">
<pad name="1" x="-0.4191" y="0" drill="0"/>
<pad name="2" x="0.4191" y="0" drill="0"/>
</package>
<package name="DRC0010J">
<pad name="1" x="-1.4" y="1" drill="0"/>
<pad name="2" x="-1.4" y="0.5" drill="0"/>
<pad name="3" x="-1.4" y="0" drill="0"/>
<pad name="4" x="-1.4" y="-0.5" drill="0"/>
<pad name="5" x="-1.4" y="-1" drill="0"/>
<pad name="6" x="1.4" y="-1" drill="0"/>
<pad name="7" x="1.4" y="-0.5" drill="0"/>
<pad name="8" x="1.4" y="0" drill="0"/>
<pad name="9" x="1.4" y="0.5" drill="0"/>
<pad name="10" x="1.4" y="1" drill="0"/>
<pad name="11" x="0" y="0" drill="0"/>
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
<symbol name="LQM21PN1R5MC0D@1">
<pin name="2@2" x="7.62" y="0" visible="off" length="short" direction="pas" rot="MR0"/>
<pin name="1@1" x="-7.62" y="0" visible="off" length="short" direction="pas" rot="MR180"/>
<wire x1="2.70086875" y1="0.8356875" x2="2.5488125" y2="-0.000625" width="0.1524" layer="94" curve="12.47546"/>
<wire x1="3.809909375" y1="1.855971875" x2="2.69064375" y2="0.838459375" width="0.1524" layer="94" curve="78.62357"/>
<wire x1="4.9045" y1="0.83849375" x2="3.810128125" y2="1.856515625" width="0.1524" layer="94" curve="79.52696"/>
<wire x1="5.081940625" y1="0.07659375" x2="4.904121875" y2="0.838684375" width="0.1524" layer="94" curve="2.683002"/>
<wire x1="5.08" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="0.16086875" y1="0.8356875" x2="0.0088125" y2="-0.000625" width="0.1524" layer="94" curve="12.47546"/>
<wire x1="1.269909375" y1="1.855971875" x2="0.150646875" y2="0.838459375" width="0.1524" layer="94" curve="78.62355"/>
<wire x1="2.3645" y1="0.83849375" x2="1.270128125" y2="1.856515625" width="0.1524" layer="94" curve="79.52696"/>
<wire x1="2.5355625" y1="-0.177884375" x2="2.358" y2="0.836771875" width="0.1524" layer="94" curve="17.67289"/>
<wire x1="-2.37913125" y1="0.8356875" x2="-2.5311875" y2="-0.000625" width="0.1524" layer="94" curve="12.47546"/>
<wire x1="-1.270090625" y1="1.855971875" x2="-2.389353125" y2="0.838459375" width="0.1524" layer="94" curve="78.62356"/>
<wire x1="-0.1755" y1="0.83849375" x2="-1.269871875" y2="1.856515625" width="0.1524" layer="94" curve="79.52696"/>
<wire x1="-0.0044375" y1="-0.177884375" x2="-0.182" y2="0.836771875" width="0.1524" layer="94" curve="17.67289"/>
<wire x1="-7.62" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-4.91913125" y1="0.8356875" x2="-5.0711875" y2="-0.000625" width="0.1524" layer="94" curve="12.47546"/>
<wire x1="-3.810090625" y1="1.855971875" x2="-4.929353125" y2="0.838459375" width="0.1524" layer="94" curve="78.62355"/>
<wire x1="-2.7155" y1="0.83849375" x2="-3.809871875" y2="1.856515625" width="0.1524" layer="94" curve="79.52697"/>
<wire x1="-2.5444375" y1="-0.177884375" x2="-2.722" y2="0.836771875" width="0.1524" layer="94" curve="17.67289"/>
<wire x1="-2.544996875" y1="0.00251875" x2="-2.544996875" y2="-0.18031875" width="0.1524" layer="94" curve="53.47319"/>
<wire x1="-0.004996875" y1="0.00251875" x2="-0.004996875" y2="-0.18031875" width="0.1524" layer="94" curve="53.47319"/>
<wire x1="2.535003125" y1="0.00251875" x2="2.535003125" y2="-0.18031875" width="0.1524" layer="94" curve="53.47318"/>
<text x="0" y="5.715" size="2" layer="95" align="center">&gt;NAME</text>
<text x="0" y="3.175" size="2" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="CRCW0402178KFKED@1">
<pin name="1@1" x="7.62" y="0" visible="off" length="short" direction="pas" rot="MR0"/>
<pin name="2@2" x="-7.62" y="0" visible="off" length="short" direction="pas" rot="MR180"/>
<wire x1="7.62" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="3.81" y2="1.524" width="0.1524" layer="94"/>
<wire x1="3.81" y1="1.524" x2="1.905" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-1.524" x2="0" y2="1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.524" x2="-3.81" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="1.524" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0" x2="-7.62" y2="0" width="0.1524" layer="94"/>
<text x="0" y="5.715" size="2" layer="95" align="center">&gt;NAME</text>
<text x="0" y="3.175" size="2" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="CRCW04021M00FKED@1">
<pin name="1@1" x="7.62" y="0" visible="off" length="short" direction="pas" rot="MR0"/>
<pin name="2@2" x="-7.62" y="0" visible="off" length="short" direction="pas" rot="MR180"/>
<wire x1="7.62" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="3.81" y2="1.524" width="0.1524" layer="94"/>
<wire x1="3.81" y1="1.524" x2="1.905" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="1.905" y1="-1.524" x2="0" y2="1.524" width="0.1524" layer="94"/>
<wire x1="0" y1="1.524" x2="-1.905" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.524" x2="-3.81" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="1.524" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="0" x2="-7.62" y2="0" width="0.1524" layer="94"/>
<text x="0" y="5.715" size="2" layer="95" align="center">&gt;NAME</text>
<text x="0" y="3.175" size="2" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="TPS63000DRCR@1">
<wire x1="-15.24" y1="-20.32" x2="15.24" y2="-20.32" width="0.1016" layer="94"/>
<wire x1="15.24" y1="-20.32" x2="15.24" y2="20.32" width="0.1016" layer="94"/>
<wire x1="15.24" y1="20.32" x2="-15.24" y2="20.32" width="0.1016" layer="94"/>
<wire x1="-15.24" y1="20.32" x2="-15.24" y2="-20.32" width="0.1016" layer="94"/>
<pin name="VOUT@1" x="20.32" y="10.16" length="middle" direction="pwr" rot="MR0"/>
<pin name="L2@2" x="20.32" y="15.24" length="middle" direction="pas" rot="MR0"/>
<pin name="PGND@3" x="20.32" y="-15.24" length="middle" direction="pwr" rot="MR0"/>
<pin name="L1@4" x="-20.32" y="15.24" length="middle" direction="pas" rot="MR180"/>
<pin name="VIN@5" x="-20.32" y="10.16" length="middle" direction="pwr" rot="MR180"/>
<pin name="EN@6" x="-20.32" y="0" length="middle" direction="in" rot="MR180"/>
<pin name="PS_SYNC@7" x="-20.32" y="-7.62" length="middle" direction="in" rot="MR180"/>
<pin name="VINA@8" x="-20.32" y="5.08" length="middle" direction="pwr" rot="MR180"/>
<pin name="GND@9" x="20.32" y="-10.16" length="middle" direction="pwr" rot="MR0"/>
<pin name="FB@10" x="20.32" y="0" length="middle" direction="in" rot="MR0"/>
<pin name="PAD@11" x="20.32" y="-17.78" length="middle" direction="pwr" rot="MR0"/>
<text x="0" y="2.54" size="2" layer="95" align="center">&gt;NAME</text>
<text x="0" y="0" size="2" layer="96" align="center">&gt;VALUE</text>
<text x="0" y="0" size="2" layer="96" align="center">&gt;VALUE</text>
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
<deviceset name="LQM21PN1R5MC0D">
<gates>
<gate name="1" symbol="LQM21PN1R5MC0D@1" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="LQM21PN1R5MC0D" package="0805">
<connects>
<connect gate="1" pin="1@1" pad="1"/>
<connect gate="1" pin="2@2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="DCR" value="0.26" constant="no"/>
<attribute name="IDC" value="0.7" constant="no"/>
<attribute name="L" value="1.5E-6" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="MuRata" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="LQM21PN1R5MC0D" constant="no"/>
<attribute name="VENDOR" value="MuRata" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402178KFKED">
<gates>
<gate name="1" symbol="CRCW0402178KFKED@1" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="CRCW0402178KFKED" package="0402">
<connects>
<connect gate="1" pin="1@1" pad="1"/>
<connect gate="1" pin="2@2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_NAME" value="Vishay-Dale" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW0402178KFKED" constant="no"/>
<attribute name="POWER" value="0.063" constant="no"/>
<attribute name="RESISTANCE" value="178000.0" constant="no"/>
<attribute name="TOLERANCE" value="1.0" constant="no"/>
<attribute name="VENDOR" value="Vishay-Dale" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW04021M00FKED">
<gates>
<gate name="1" symbol="CRCW04021M00FKED@1" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="CRCW04021M00FKED" package="0402">
<connects>
<connect gate="1" pin="1@1" pad="1"/>
<connect gate="1" pin="2@2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_NAME" value="Vishay-Dale" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="CRCW04021M00FKED" constant="no"/>
<attribute name="POWER" value="0.063" constant="no"/>
<attribute name="RESISTANCE" value="1000000.0" constant="no"/>
<attribute name="TOLERANCE" value="1.0" constant="no"/>
<attribute name="VENDOR" value="Vishay-Dale" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPS63000DRCR" prefix="U">
<gates>
<gate name="1" symbol="TPS63000DRCR@1" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="TPS63000DRCR" package="DRC0010J">
<connects>
<connect gate="1" pin="EN@6" pad="6"/>
<connect gate="1" pin="FB@10" pad="10"/>
<connect gate="1" pin="GND@9" pad="9"/>
<connect gate="1" pin="L1@4" pad="4"/>
<connect gate="1" pin="L2@2" pad="2"/>
<connect gate="1" pin="PAD@11" pad="11"/>
<connect gate="1" pin="PGND@3" pad="3"/>
<connect gate="1" pin="PS_SYNC@7" pad="7"/>
<connect gate="1" pin="VIN@5" pad="5"/>
<connect gate="1" pin="VINA@8" pad="8"/>
<connect gate="1" pin="VOUT@1" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="COMPTYPE" value="IC" constant="no"/>
<attribute name="MANUFACTURER" value="Texas Instruments" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="Texas Instruments" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="TPS63000DRCR" constant="no"/>
<attribute name="MOUNTTYPE" value="SMT" constant="no"/>
<attribute name="PACKAGEREFERENCE" value="DRC0010A" constant="no"/>
<attribute name="PARTNUMBER" value="TPS63000DRC" constant="no"/>
<attribute name="PIN_COUNT" value="11" constant="no"/>
<attribute name="REFDES" value="RefDes" constant="no"/>
<attribute name="ROHS" value="Y" constant="no"/>
<attribute name="TYPE" value="TYPE" constant="no"/>
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
<package name="LMK212BJ106KG-T">
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
<text x="-2.8702" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
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
<text x="-2.8702" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="27" ratio="6" rot="SR0">&gt;Value</text>
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
<symbol name="WB_CAPACITOR">
<pin name="1" x="7.62" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="-7.62" y="0" visible="off" length="short" direction="pas"/>
<wire x1="0.762" y1="-3.048" x2="0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0" x2="0.762" y2="3.048" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="0" x2="-0.762" y2="0" width="0.1524" layer="94"/>
<wire x1="0.762" y1="0" x2="7.62" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-3.048" x2="-0.762" y2="3.048" width="0.1524" layer="94"/>
<text x="13.0556" y="4.0386" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="12.4206" y="-1.0414" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
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
<deviceset name="LMK212BJ106KG-T">
<gates>
<gate name="A" symbol="WB_CAPACITOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LMK212BJ106KG-T">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="10uF" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LMK212BJ226MG-T">
<gates>
<gate name="A" symbol="WB_CAPACITOR" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="0805">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="VALUE" value="22uF" constant="no"/>
</technology>
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
<part name="L1" library="AcceleratedDesigns_Lib" deviceset="LQM21PN1R5MC0D" device="LQM21PN1R5MC0D" value="1.5uH"/>
<part name="RFBB" library="AcceleratedDesigns_Lib" deviceset="CRCW0402178KFKED" device="CRCW0402178KFKED" value="178k"/>
<part name="RFBT" library="AcceleratedDesigns_Lib" deviceset="CRCW04021M00FKED" device="CRCW04021M00FKED" value="1M"/>
<part name="U1" library="AcceleratedDesigns_Lib" deviceset="TPS63000DRCR" device="TPS63000DRCR" value="TPS63000DRCR"/>
<part name="VIN" library="AcceleratedDesigns_Lib" deviceset="WB_STARTUP_VOLTAGE_SOURCE" device="WB_STARTUP_VOLTAGE_SOURCE" value="WB_STARTUP_VOLTAGE_SOURCE"/>
<part name="VOUT" library="sps" deviceset="TP-1502" device=""/>
<part name="GND1" library="sps" deviceset="TP-1502" device=""/>
<part name="CIN" library="sps" deviceset="LMK212BJ106KG-T" device="" value="10uF"/>
<part name="COUT_1" library="sps" deviceset="LMK212BJ226MG-T" device="" value="22uF"/>
<part name="COUT_2" library="sps" deviceset="LMK212BJ226MG-T" device="" value="22uF"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND" gate="1" x="92.71" y="27.94" smashed="yes">
<attribute name="NAME" x="92.71" y="33.528" size="2" layer="95" align="bottom-center" display="off"/>
</instance>
<instance part="L1" gate="1" x="88.9" y="110.49" smashed="yes">
<attribute name="NAME" x="88.9" y="114.808" size="2" layer="95" align="bottom-center"/>
<attribute name="VALUE" x="88.9" y="105.41" size="2" layer="96" align="bottom-center"/>
</instance>
<instance part="RFBB" gate="1" x="127" y="43.18" smashed="yes" rot="R90">
<attribute name="NAME" x="128.524" y="45.974" size="2" layer="95"/>
<attribute name="VALUE" x="128.524" y="41.402" size="2" layer="96"/>
</instance>
<instance part="RFBT" gate="1" x="127" y="76.2" smashed="yes" rot="R90">
<attribute name="NAME" x="128.524" y="78.994" size="2" layer="95"/>
<attribute name="VALUE" x="128.524" y="74.422" size="2" layer="96"/>
</instance>
<instance part="U1" gate="1" x="88.9" y="76.2" smashed="yes">
<attribute name="NAME" x="88.9" y="76.2" size="2" layer="95" align="bottom-center"/>
<attribute name="TYPE" x="88.9" y="72.39" size="2" layer="96" align="bottom-center"/>
</instance>
<instance part="VIN" gate="1" x="30.48" y="66.04" smashed="yes" rot="R270">
<attribute name="NAME" x="35.052" y="71.882" size="2" layer="95"/>
</instance>
<instance part="VOUT" gate="A" x="190.5" y="86.36" rot="R180"/>
<instance part="GND1" gate="A" x="190.5" y="30.48" rot="R180"/>
<instance part="CIN" gate="A" x="48.26" y="63.5" smashed="yes" rot="R270">
<attribute name="NAME" x="53.6956" y="59.9186" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="53.0606" y="64.9986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="COUT_1" gate="A" x="149.86" y="63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="162.2044" y="67.0814" size="2.0828" layer="95" ratio="6" rot="SR180"/>
<attribute name="VALUE" x="160.2994" y="62.0014" size="2.0828" layer="96" ratio="6" rot="SR180"/>
</instance>
<instance part="COUT_2" gate="A" x="167.64" y="63.5" smashed="yes" rot="R90">
<attribute name="NAME" x="182.5244" y="67.0814" size="2.0828" layer="95" ratio="6" rot="SR180"/>
<attribute name="VALUE" x="178.0794" y="62.0014" size="2.0828" layer="96" ratio="6" rot="SR180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="1" class="0">
<segment>
<pinref part="U1" gate="1" pin="VIN@5"/>
<pinref part="U1" gate="1" pin="EN@6"/>
<pinref part="U1" gate="1" pin="PS_SYNC@7"/>
<pinref part="U1" gate="1" pin="VINA@8"/>
<pinref part="VIN" gate="1" pin="+@1"/>
<wire x1="63.5" y1="68.58" x2="63.5" y2="76.2" width="0" layer="91"/>
<wire x1="63.5" y1="76.2" x2="63.5" y2="81.28" width="0" layer="91"/>
<wire x1="63.5" y1="81.28" x2="63.5" y2="86.36" width="0" layer="91"/>
<wire x1="68.58" y1="68.58" x2="63.5" y2="68.58" width="0" layer="91"/>
<wire x1="68.58" y1="76.2" x2="63.5" y2="76.2" width="0" layer="91"/>
<wire x1="68.58" y1="81.28" x2="63.5" y2="81.28" width="0" layer="91"/>
<wire x1="30.48" y1="86.36" x2="48.26" y2="86.36" width="0" layer="91"/>
<wire x1="48.26" y1="86.36" x2="63.5" y2="86.36" width="0" layer="91"/>
<wire x1="63.5" y1="86.36" x2="68.58" y2="86.36" width="0" layer="91"/>
<wire x1="30.48" y1="73.66" x2="30.48" y2="86.36" width="0" layer="91"/>
<junction x="63.5" y="86.36"/>
<junction x="63.5" y="81.28"/>
<junction x="63.5" y="76.2"/>
<pinref part="CIN" gate="A" pin="2"/>
<wire x1="48.26" y1="69.85" x2="48.26" y2="71.12" width="0" layer="91"/>
<wire x1="48.26" y1="71.12" x2="48.26" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND1" class="0">
<segment>
<pinref part="GND" gate="1" pin="1@1"/>
<pinref part="RFBB" gate="1" pin="2@2"/>
<pinref part="U1" gate="1" pin="PGND@3"/>
<pinref part="U1" gate="1" pin="GND@9"/>
<pinref part="U1" gate="1" pin="PAD@11"/>
<pinref part="VIN" gate="1" pin="-@2"/>
<wire x1="48.26" y1="57.15" x2="48.26" y2="30.48" width="0" layer="91"/>
<wire x1="109.22" y1="66.04" x2="109.22" y2="30.48" width="0" layer="91"/>
<wire x1="127" y1="35.56" x2="127" y2="30.48" width="0" layer="91"/>
<wire x1="149.86" y1="55.88" x2="149.86" y2="30.48" width="0" layer="91"/>
<wire x1="30.48" y1="30.48" x2="48.26" y2="30.48" width="0" layer="91"/>
<wire x1="48.26" y1="30.48" x2="109.22" y2="30.48" width="0" layer="91"/>
<wire x1="109.22" y1="30.48" x2="127" y2="30.48" width="0" layer="91"/>
<wire x1="127" y1="30.48" x2="149.86" y2="30.48" width="0" layer="91"/>
<wire x1="149.86" y1="30.48" x2="190.5" y2="30.48" width="0" layer="91"/>
<wire x1="30.48" y1="30.48" x2="30.48" y2="58.42" width="0" layer="91"/>
<wire x1="149.86" y1="55.88" x2="167.64" y2="55.88" width="0" layer="91"/>
<junction x="48.26" y="30.48"/>
<junction x="109.22" y="30.48"/>
<junction x="127" y="30.48"/>
<junction x="149.86" y="30.48"/>
<label x="182.88" y="30.48" size="1.778" layer="95"/>
<pinref part="GND1" gate="A" pin="TP"/>
<pinref part="COUT_1" gate="A" pin="2"/>
<junction x="149.86" y="55.88"/>
<pinref part="COUT_2" gate="A" pin="2"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<pinref part="RFBT" gate="1" pin="1@1"/>
<pinref part="U1" gate="1" pin="VOUT@1"/>
<wire x1="127" y1="83.82" x2="127" y2="86.36" width="0" layer="91"/>
<wire x1="149.86" y1="71.12" x2="149.86" y2="86.36" width="0" layer="91"/>
<wire x1="109.22" y1="86.36" x2="127" y2="86.36" width="0" layer="91"/>
<wire x1="127" y1="86.36" x2="149.86" y2="86.36" width="0" layer="91"/>
<wire x1="149.86" y1="86.36" x2="190.5" y2="86.36" width="0" layer="91"/>
<wire x1="149.86" y1="71.12" x2="167.64" y2="71.12" width="0" layer="91"/>
<junction x="149.86" y="86.36"/>
<junction x="127" y="86.36"/>
<label x="185.42" y="86.36" size="1.778" layer="95"/>
<pinref part="VOUT" gate="A" pin="TP"/>
<pinref part="COUT_1" gate="A" pin="1"/>
<junction x="149.86" y="71.12"/>
<pinref part="COUT_2" gate="A" pin="1"/>
</segment>
</net>
<net name="2" class="0">
<segment>
<pinref part="L1" gate="1" pin="1@1"/>
<pinref part="U1" gate="1" pin="L1@4"/>
<wire x1="63.5" y1="110.49" x2="63.5" y2="91.44" width="0" layer="91"/>
<wire x1="68.58" y1="91.44" x2="63.5" y2="91.44" width="0" layer="91"/>
<wire x1="81.28" y1="110.49" x2="63.5" y2="110.49" width="0" layer="91"/>
</segment>
</net>
<net name="4" class="0">
<segment>
<pinref part="L1" gate="1" pin="2@2"/>
<pinref part="U1" gate="1" pin="L2@2"/>
<wire x1="109.22" y1="91.44" x2="114.3" y2="91.44" width="0" layer="91"/>
<wire x1="114.3" y1="110.49" x2="114.3" y2="91.44" width="0" layer="91"/>
<wire x1="96.52" y1="110.49" x2="114.3" y2="110.49" width="0" layer="91"/>
</segment>
</net>
<net name="3" class="0">
<segment>
<pinref part="RFBB" gate="1" pin="1@1"/>
<pinref part="RFBT" gate="1" pin="2@2"/>
<pinref part="U1" gate="1" pin="FB@10"/>
<wire x1="109.22" y1="76.2" x2="114.3" y2="76.2" width="0" layer="91"/>
<wire x1="114.3" y1="59.69" x2="127" y2="59.69" width="0" layer="91"/>
<wire x1="114.3" y1="76.2" x2="114.3" y2="59.69" width="0" layer="91"/>
<wire x1="127" y1="68.58" x2="127" y2="59.69" width="0" layer="91"/>
<wire x1="127" y1="59.69" x2="127" y2="50.8" width="0" layer="91"/>
<junction x="127" y="59.69"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
