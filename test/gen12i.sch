*********************************************
*** Rambus Post-Processed Netlist ***
*********************************************
** Generated for: hspiceD
** Generated on: Apr 4 11:52:55 2016
** Design library name: io
** Design cell name: gen12i
** Design view name: schematic

***********************************************************************************
** GLOBAL pwrn!
** WARNING Netlist is missing netsets. If this is a top level cell. FIX IT
***********************************************************************************


.subckt gen12i VDD VREG pad rxout12 rxoutB pwrn



** Library name: sclib_12
** Cell name: sc_invx8_12
** View name: schematic

.subckt sc_invx8_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=2.64u multi=1 nf=8 sd=160n ad=211.2f as=250.8f pd=3.92u ps=4.82u nrd=0.01449 nrs=0.01449 sa=545.3n sb=545.3n sa1=279.2n sa2=472.8n sa3=691.6n sa4=511.9n sb1=279.2n sb2=472.8n sb3=691.6n spa=164.7n spa1=164.5n spa2=163.4n spa3=163.9n sap=251.5n spba=202.3n spba1=205.3n dfm_flag=0 sapb=338.9n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=5.28u multi=1 nf=8 sd=160n ad=422.4f as=501.6f pd=6.56u ps=8.12u nrd=0.01076 nrs=0.01076 sa=545.3n sb=545.3n sa1=279.2n sa2=472.8n sa3=691.6n sa4=511.9n sb1=279.2n sb2=472.8n sb3=691.6n spa=164.7n spa1=164.5n spa2=163.4n spa3=163.9n sap=251.5n spba=202.3n spba1=205.3n dfm_flag=0 sapb=338.9n
.ends sc_invx8_12
** End of subcircuit definition.

** Library name: esd
** Cell name: eEsdcdm
** View name: schematic

.subckt eEsdcdm in out vtt inh_vss
D0 inh_vss out ndio_12 area=4.352e-12 pj=9.12e-06 m=1
XXR0 in out vtt rppolywo_m lr=2u wr=2u multi=5 m=1

D1 out vtt pdio_12 area=4.352e-12 pj=9.12e-06 m=1
.ends eEsdcdm
** End of subcircuit definition.

** Library name: esd
** Cell name: eEsdndio
** View name: schematic

.subckt eEsdndio pad inh_vss
D0 inh_vss pad ndio_12 area=6e-11 pj=8.3e-05 m=1
.ends eEsdndio
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx8r
** View name: schematic

.subckt sc_invx8r a y inh_vdd inh_vss
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=5.28u multi=1 nf=8 sd=160.0n ad=4.224e-13 as=5.016e-13 pd=6.56u ps=8.12u nrd=0.010760 nrs=0.010760 sa=499.16600n sb=499.16600n sca=9.95574 scb=0.00914783 scc=0.000801174 sa1=274.42700n sa2=442.39700n sa3=656.64400n sa4=482.30100n sb1=274.42700n sb2=442.39700n sb3=656.64400n spa=164.66900n spa1=164.51300n spa2=163.42100n spa3=163.83800n sap=245.63900n spba=185.72100n spba1=187.52900n enx=1.81526u enx1=1.7842u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.97078u rey=921.12900n dfm_flag=0 sapb=269.45200n sa5=558.0500n sa6=634.76800n sodx=140.0n sodx1=397.24900n sodx2=1.11642u sody=711.5400n
XN0 y a inh_vss inh_vss nch_mac l=40n w=2.64u multi=1 nf=8 sd=160.0n ad=2.112e-13 as=2.508e-13 pd=3.92u ps=4.82u nrd=0.014487 nrs=0.014487 sa=499.16600n sb=499.16600n sca=2.62336 scb=0.000664279 scc=1.04238e-06 sa1=274.42700n sa2=442.39700n sa3=656.64400n sa4=482.30100n sb1=274.42700n sb2=442.39700n sb3=656.64400n spa=164.66900n spa1=164.51300n spa2=163.42100n spa3=163.83800n sap=245.63900n spba=185.72100n spba1=187.52900n enx=2.64131u enx1=2.62048u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.59103u rey=1.83014u dfm_flag=0 sapb=269.45200n sa5=558.0500n sa6=634.76800n sodx=140.0n sodx1=397.24900n sodx2=1.11642u sody=901.74200n
.ends sc_invx8r
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx32r
** View name: schematic

.subckt sc_invx32r a y inh_vdd inh_vss
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=21.120u multi=1 nf=32 sd=160.0n ad=1.6896e-12 as=1.7688e-12 pd=26.240u ps=27.80u nrd=0.002857 nrs=0.002857 sa=1.4214u sb=1.4214u sca=9.44076 scb=0.00914347 scc=0.000801174 sa1=437.63300n sa2=953.28200n sa3=1.16128u sa4=1.36742u sb1=437.63300n sb2=953.28200n sb3=1.16128u spa=161.15900n spa1=161.11700n spa2=160.82900n spa3=160.93700n sap=341.56400n spba=182.18700n spba1=183.99100n enx=3.5973u enx1=3.33675u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=6.79677u rey=921.12900n dfm_flag=0 sapb=341.32100n sa5=1.61399u sa6=1.11098u sodx=140.0n sodx1=746.88200n sodx2=1.63961u sody=711.5400n
XN0 y a inh_vss inh_vss nch_mac l=40n w=10.560u multi=1 nf=32 sd=160.0n ad=8.448e-13 as=8.844e-13 pd=15.680u ps=16.580u nrd=0.003847 nrs=0.003847 sa=1.4214u sb=1.4214u sca=2.41299 scb=0.000664273 scc=1.04238e-06 sa1=437.63300n sa2=953.28200n sa3=1.16128u sa4=1.36742u sb1=437.63300n sb2=953.28200n sb3=1.16128u spa=161.15900n spa1=161.11700n spa2=160.82900n spa3=160.93700n sap=341.56400n spba=182.18700n spba1=183.99100n enx=4.54203u enx1=4.34225u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=5.90936u rey=1.83014u dfm_flag=0 sapb=341.32100n sa5=1.61399u sa6=1.11098u sodx=140.0n sodx1=746.88200n sodx2=1.63961u sody=901.74200n
.ends sc_invx32r
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx4_12
** View name: schematic

.subckt sc_invx4_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=1.32u multi=1 nf=4 sd=160.0n ad=1.056e-13 as=1.452e-13 pd=1.96u ps=2.86u nrd=0.026879 nrs=0.026879 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=210.3n spba1=213.4n dfm_flag=0 sapb=323n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=210.3n spba1=213.4n dfm_flag=0 sapb=323n
.ends sc_invx4_12
** End of subcircuit definition.

** Library name: esd
** Cell name: eEsdpdio
** View name: schematic

.subckt eEsdpdio pad vtt
D1 pad vtt pdio_12 area=6e-11 pj=8.3e-05 m=1
.ends eEsdpdio
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx128fr
** View name: schematic

.subckt sc_invx128fr a y inh_vdd inh_vss
XN0 y a inh_vss inh_vss nch_mac l=40n w=42.24u multi=1 nf=64 sd=160.0n ad=3.3792e-12 as=3.4584e-12 pd=52.48u ps=54.04u nrd=0.000972 nrs=0.000972 sa=2.47582u sb=2.47582u sca=1.80732 scb=0.000356845 scc=5.23214e-07 sa1=552.401n sa2=1.37249u sa3=1.48892u sa4=2.38407u sb1=552.401n sb2=1.37249u sb3=1.48892u spa=160.579n spa1=160.557n spa2=160.412n spa3=160.467n sap=408.927n spba=181.642n spba1=183.445n enx=6.80456u enx1=6.25796u eny=977.481n eny1=797.908n eny2=967.619n rex=7.09387u rey=1.83014u dfm_flag=0 sapb=389.459n sa5=2.80364u sa6=1.42165u sodx=140.0n sodx1=1.05952u sodx2=1.99749u sody=901.742n
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=84.48u multi=1 nf=64 sd=160.0n ad=6.7584e-12 as=6.9168e-12 pd=94.72u ps=97.6u nrd=0.000570 nrs=0.000570 sa=2.47582u sb=2.47582u sca=5.33605 scb=0.00461219 scc=0.000400598 sa1=552.401n sa2=1.37249u sa3=1.48892u sa4=2.38407u sb1=552.401n sb2=1.37249u sb3=1.48892u spa=160.579n spa1=160.557n spa2=160.412n spa3=160.467n sap=408.927n spba=181.642n spba1=183.445n enx=5.72465u enx1=5.04961u eny=328.421n eny1=214.589n eny2=305.235n rex=8.36074u rey=921.129n dfm_flag=0 sapb=389.459n sa5=2.80364u sa6=1.42165u sodx=140.0n sodx1=1.05952u sodx2=1.99749u sody=711.54n
.ends sc_invx128fr
** End of subcircuit definition.

** Library name: io
** Cell name: rInbuf_12
** View name: schematic

.subckt rInbuf_12 datain in vddio inh_vss
XM1 in1b in net7 vddio pch_12_mac l=100n w=6u multi=1 nf=4 sd=160.0n ad=4.8e-13 as=6.6e-13 pd=6.64u ps=9.88u nrd=0.007260 nrs=0.007260 sa=353.032n sb=353.032n sa1=223.209n sa2=328.74n sa3=503.892n sa4=327.352n sb1=223.209n sb2=328.74n sb3=503.892n spa=162.463n spa1=162.444n spa2=162.293n spa3=162.372n sap=208.994n spba=207.852n spba1=212.01n dfm_flag=0 sapb=256.325n
XM3 datain in1b vddio vddio pch_12_mac l=70n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM8 net7 in1b inh_vss vddio pch_12_mac l=100n w=1.7u multi=1 nf=2 sd=160.0n ad=1.36e-13 as=2.38e-13 pd=2.02u ps=3.96u nrd=0.019970 nrs=0.019970 sa=217.188n sb=217.188n sa1=176.00n sa2=212.672n sa3=304.052n sa4=207.664n sb1=176.00n sb2=212.672n sb3=304.052n spa=164.95n spa1=164.925n spa2=164.715n spa3=164.826n sap=180.857n spba=205.644n spba1=209.931n dfm_flag=0 sapb=224.979n
XM9 net7 in vddio vddio pch_12_mac l=100n w=6u multi=1 nf=4 sd=160.0n ad=4.8e-13 as=6.6e-13 pd=6.64u ps=9.88u nrd=0.007260 nrs=0.007260 sa=353.032n sb=353.032n sa1=223.209n sa2=328.74n sa3=503.892n sa4=327.352n sb1=223.209n sb2=328.74n sb3=503.892n spa=162.463n spa1=162.444n spa2=162.293n spa3=162.372n sap=208.994n spba=207.852n spba1=212.01n dfm_flag=0 sapb=256.325n
XM4 datain in1b inh_vss inh_vss nch_12_mac l=70n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM2 net5 in inh_vss inh_vss nch_12_mac l=100n w=3u multi=1 nf=2 sd=160.0n ad=2.4e-13 as=4.2e-13 pd=3.32u ps=6.56u nrd=0.008539 nrs=0.008539 sa=217.188n sb=217.188n sa1=176.00n sa2=212.672n sa3=304.052n sa4=207.664n sb1=176.00n sb2=212.672n sb3=304.052n spa=164.95n spa1=164.925n spa2=164.715n spa3=164.826n sap=180.857n spba=205.644n spba1=209.931n dfm_flag=0 sapb=224.979n
XM0 vddio in1b net5 inh_vss nch_12_mac l=100n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.050486 nrs=0.050486 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=198.997n spba1=203.47n dfm_flag=0 sapb=197.628n
XM13 in1b in net5 inh_vss nch_12_mac l=100n w=3u multi=1 nf=2 sd=160.0n ad=2.4e-13 as=4.2e-13 pd=3.32u ps=6.56u nrd=0.008539 nrs=0.008539 sa=217.188n sb=217.188n sa1=176.00n sa2=212.672n sa3=304.052n sa4=207.664n sb1=176.00n sb2=212.672n sb3=304.052n spa=164.95n spa1=164.925n spa2=164.715n spa3=164.826n sap=180.857n spba=205.644n spba1=209.931n dfm_flag=0 sapb=224.979n
.ends rInbuf_12
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx32_12
** View name: schematic

.subckt sc_invx32_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=10.56u multi=1 nf=32 sd=160.0n ad=8.448e-13 as=8.844e-13 pd=15.68u ps=16.58u nrd=0.003847 nrs=0.003847 sa=1.58885u sb=1.58885u sa1=446.996n sa2=1.02647u sa3=1.21072u sa4=1.48227u sb1=446.996n sb2=1.02647u sb3=1.21072u spa=161.159n spa1=161.117n spa2=160.834n spa3=160.956n sap=352.067n spba=197.4n spba1=200.4n dfm_flag=0 sapb=413.9n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=21.12u multi=1 nf=32 sd=160.0n ad=1.6896e-12 as=1.7688e-12 pd=26.24u ps=27.8u nrd=0.002857 nrs=0.002857 sa=1.58885u sb=1.58885u sa1=446.996n sa2=1.02647u sa3=1.21072u sa4=1.48227u sb1=446.996n sb2=1.02647u sb3=1.21072u spa=161.159n spa1=161.117n spa2=160.834n spa3=160.956n sap=352.067n spba=197.4n spba1=200.4n dfm_flag=0 sapb=413.9n
.ends sc_invx32_12
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx2_12
** View name: schematic

.subckt sc_invx2_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=238.3n spba1=241.4n dfm_flag=0 sapb=348.7n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=238.3n spba1=241.4n dfm_flag=0 sapb=348.7n
.ends sc_invx2_12
** End of subcircuit definition.

** Library name: top
** Cell name: bycap_m12345
** View name: schematic

.subckt bycap_m12345 minus plus
XC0 plus minus nmoscap_12 lr=3.44u wr=4.61u multi=1
.ends bycap_m12345
** End of subcircuit definition.

** Library name: io
** Cell name: gen12i
** View name: schematic
XU2 net013 net09 VDD pwrn sc_invx8_12
Xcdm pad net10 VDD pwrn eEsdcdm
Xhbmn0 pad pwrn eEsdndio
Xhbmn1 pad pwrn eEsdndio
Xinv_buf1 inreg buf1 VREG pwrn sc_invx8r
Xinv_buf2 buf1 buf2 VREG pwrn sc_invx32r
Xinv_in net07 inb VDD pwrn sc_invx4_12
Xinv_lsb inb inreg VREG pwrn sc_invx4_12
Xhbmp0 pad VDD eEsdpdio
Xhbmp1 pad VDD eEsdpdio
Xbufout buf2 rxoutB VREG pwrn sc_invx128fr
XSchmittT net07 net10 VDD pwrn rInbuf_12
XU0 net09 rxout12 VDD pwrn sc_invx32_12
XU1 inb net013 VDD pwrn sc_invx2_12
XVREGCap_17_ pwrn VREG bycap_m12345
XVREGCap_16_ pwrn VREG bycap_m12345
XVREGCap_15_ pwrn VREG bycap_m12345
XVREGCap_14_ pwrn VREG bycap_m12345
XVREGCap_13_ pwrn VREG bycap_m12345
XVREGCap_12_ pwrn VREG bycap_m12345
XVREGCap_11_ pwrn VREG bycap_m12345
XVREGCap_10_ pwrn VREG bycap_m12345
XVREGCap_9_ pwrn VREG bycap_m12345
XVREGCap_8_ pwrn VREG bycap_m12345
XVREGCap_7_ pwrn VREG bycap_m12345
XVREGCap_6_ pwrn VREG bycap_m12345
XVREGCap_5_ pwrn VREG bycap_m12345
XVREGCap_4_ pwrn VREG bycap_m12345
XVREGCap_3_ pwrn VREG bycap_m12345
XVREGCap_2_ pwrn VREG bycap_m12345
XVREGCap_1_ pwrn VREG bycap_m12345
.ends gen12i
** End of subcircuit definition.
