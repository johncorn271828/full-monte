*********************************************
*** Rambus Post-Processed Netlist ***
*********************************************
** Generated for: hspiceD
** Generated on: Mar 30 12:07:13 2016
** Design library name: io
** Design cell name: od12i
** Design view name: schematic

***********************************************************************************
** GLOBAL pwrn!
** WARNING Netlist is missing netsets. If this is a top level cell. FIX IT
***********************************************************************************


.subckt od12i VDD VREG emeas_odvref esel_odvref pad rxen rxoutB vrefsel[3] vrefsel[2] vrefsel[1] vrefsel[0] pwrn



** Library name: sclib_lvt
** Cell name: sc_invx2l
** View name: schematic

.subckt sc_invx2l a y inh_vdd inh_vss
XN0 y a inh_vss inh_vss nch_lvt_mac l=40n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=201.53800n sb=201.53800n sca=2.81171 scb=0.000664299 scc=1.04238e-06 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XP0 y a inh_vdd inh_vdd pch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
.ends sc_invx2l
** End of subcircuit definition.

** Library name: io
** Cell name: cmos12oLS
** View name: schematic

.subckt cmos12oLS in out outb vddio inh_vdd inh_vss
XM0 outb in inh_vss inh_vss nch_12_mac l=70n w=800n multi=1 nf=1 sd=160.0n ad=1.12e-13 as=1.12e-13 pd=1.88u ps=1.88u nrd=0.029080 nrs=0.029080 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM1 out inb inh_vss inh_vss nch_12_mac l=70n w=800n multi=1 nf=1 sd=160.0n ad=1.12e-13 as=1.12e-13 pd=1.88u ps=1.88u nrd=0.029080 nrs=0.029080 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3 net030 out vddio vddio pch_12_mac l=70n w=2.2u multi=1 nf=2 sd=160.0n ad=1.76e-13 as=3.08e-13 pd=2.52u ps=4.96u nrd=0.014537 nrs=0.014537 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM2 net029 outb vddio vddio pch_12_mac l=70n w=2.2u multi=1 nf=2 sd=160.0n ad=1.76e-13 as=3.08e-13 pd=2.52u ps=4.96u nrd=0.014537 nrs=0.014537 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM5 out inb net029 vddio pch_12_mac l=70n w=2.2u multi=1 nf=2 sd=160.0n ad=1.76e-13 as=3.08e-13 pd=2.52u ps=4.96u nrd=0.014537 nrs=0.014537 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM4 outb in net030 vddio pch_12_mac l=70n w=2.2u multi=1 nf=2 sd=160.0n ad=1.76e-13 as=3.08e-13 pd=2.52u ps=4.96u nrd=0.014537 nrs=0.014537 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XU0 in inb inh_vdd inh_vss sc_invx2l
.ends cmos12oLS
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx4r
** View name: schematic

.subckt sc_invx4r a y inh_vdd inh_vss
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.7800n sb=309.7800n sca=10.2911 scb=0.00915362 scc=0.000801174 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=1.47532u enx1=1.46621u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.50641u rey=921.12900n dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=711.5400n
XN0 y a inh_vss inh_vss nch_mac l=40n w=1.32u multi=1 nf=4 sd=160.0n ad=1.056e-13 as=1.452e-13 pd=1.96u ps=2.86u nrd=0.026879 nrs=0.026879 sa=309.7800n sb=309.7800n sca=2.73049 scb=0.000664286 scc=1.04238e-06 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=2.28388u enx1=2.27814u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.28079u rey=1.83014u dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=901.74200n
.ends sc_invx4r
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx96r
** View name: schematic

.subckt sc_invx96r a y inh_vdd inh_vss
XN0 y a inh_vss inh_vss nch_mac l=40n w=31.680u multi=1 nf=96 sd=160.0n ad=2.5344e-12 as=2.574e-12 pd=47.040u ps=47.940u nrd=0.001300 nrs=0.001300 sa=3.45041u sb=3.45041u sca=2.31943 scb=0.000664272 scc=1.04238e-06 sa1=632.91500n sa2=1.69248u sa3=1.71443u sa4=3.32594u sb1=632.91500n sb2=1.69248u sb3=1.71443u spa=160.38600n spa1=160.37100n spa2=160.27400n spa3=160.31100n sap=455.79500n spba=181.46200n spba1=183.26500n enx=8.93285u enx1=7.97751u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=8.00925u rey=1.83014u dfm_flag=0 sapb=421.88300n sa5=3.89472u sa6=1.63575u sodx=140.0n sodx1=1.3097u sodx2=2.24258u sody=901.74200n
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=63.360u multi=1 nf=96 sd=160.0n ad=5.0688e-12 as=5.148e-12 pd=78.720u ps=80.280u nrd=0.000966 nrs=0.000966 sa=3.45041u sb=3.45041u sca=9.25666 scb=0.0091425 scc=0.000801174 sa1=632.91500n sa2=1.69248u sa3=1.71443u sa4=3.32594u sb1=632.91500n sb2=1.69248u sb3=1.71443u spa=160.38600n spa1=160.37100n spa2=160.27400n spa3=160.31100n sap=455.79500n spba=181.46200n spba1=183.26500n enx=7.7392u enx1=6.59005u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=9.551u rey=921.12900n dfm_flag=0 sapb=421.88300n sa5=3.89472u sa6=1.63575u sodx=140.0n sodx1=1.3097u sodx2=2.24258u sody=711.5400n
.ends sc_invx96r
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx20r
** View name: schematic

.subckt sc_invx20r a y inh_vdd inh_vss
XN0 y a inh_vss inh_vss nch_mac l=40n w=6.6u multi=1 nf=20 sd=160.0n ad=5.28e-13 as=5.676e-13 pd=9.8u ps=10.70u nrd=0.006079 nrs=0.006079 sa=986.10400n sb=986.10400n sca=2.47556 scb=0.000664274 scc=1.04238e-06 sa1=373.62300n sa2=739.82300n sa3=972.17800n sa4=948.90900n sb1=373.62300n sb2=739.82300n sb3=972.17800n spa=161.85700n spa1=161.7900n spa2=161.33500n spa3=161.50600n sap=303.80700n spba=182.85700n spba1=184.66200n enx=3.6282u enx1=3.53155u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=5.32941u rey=1.83014u dfm_flag=0 sapb=313.47300n sa5=1.11825u sa6=932.06900n sodx=140.0n sodx1=595.88400n sodx2=1.43537u sody=901.74200n
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=13.20u multi=1 nf=20 sd=160.0n ad=1.056e-12 as=1.1352e-12 pd=16.40u ps=17.960u nrd=0.004515 nrs=0.004515 sa=986.10400n sb=986.10400n sca=9.57767 scb=0.00914434 scc=0.000801174 sa1=373.62300n sa2=739.82300n sa3=972.17800n sa4=948.90900n sb1=373.62300n sb2=739.82300n sb3=972.17800n spa=161.85700n spa1=161.7900n spa2=161.33500n spa3=161.50600n sap=303.80700n spba=182.85700n spba1=184.66200n enx=2.74175u enx1=2.61013u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=6.01163u rey=921.12900n dfm_flag=0 sapb=313.47300n sa5=1.11825u sa6=932.06900n sodx=140.0n sodx1=595.88400n sodx2=1.43537u sody=711.5400n
.ends sc_invx20r
** End of subcircuit definition.

** Library name: rbbasic
** Cell name: cxfr
** View name: schematic

.subckt cxfr D GN GP S inh_vdd inh_vss nl=40n nw=140n nf=1 pl=40n pw=140n pf=1
XM1 S GN D inh_vss nch_mac l=nl w='nw*nf' multi=1 nf=nf sd=160.0n ad='((nf-int(nf/2)*2)*((140e-9+((nf-1)*160e-9)/2)+0)+((nf+1)-int((nf+1)/2)*2)*((nf/2)*160e-9))*nw' as='((nf-int(nf/2)*2)*((140e-9+((nf-1)*160e-9)/2)+0)+((nf+1)-int((nf+1)/2)*2)*(((280e-9+(nf/2-1)*160e-9)+0)+0))*nw' pd='(nf-int(nf/2)*2)*(((140e-9+((nf-1)*160e-9)/2)+0)*2+(nf+1)*nw)+((nf+1)-int((nf+1)/2)*2)*(((nf/2)*160e-9)*2+nf*nw)' ps='(nf-int(nf/2)*2)*(((140e-9+((nf-1)*160e-9)/2)+0)*2+(nf+1)*nw)+((nf+1)-int((nf+1)/2)*2)*((((280e-9+(nf/2-1)*160e-9)+0)+0)*2+(nf+2)*nw)' sca='((((1e-12/nl)*((0+(1/(2e-6+0*(nl+160e-9))-1/((2e-6+0*(nl+160e-9))+nl)))+(1/(2e-6+0*(nl+160e-9))-1/((2e-6+0*(nl+160e-9))+nl))))/1.0+(1e-12/nw)*(505.050505050505e3-1/(1.98e-6+nw)))+(1e-12/nw)*(1.5625e6-1/(640e-9+nw)))/810e-3'
+scb='(((0+(1/nl)*(((2e-6+0*(nl+160e-9))/10.0+11.1111e-9)*exp((2e-6+0*(nl+160e-9))*(-9e6))-(((2e-6+0*(nl+160e-9))+nl)/10.0+11.1111e-9)*exp(((2e-6+0*(nl+160e-9))+nl)*(-9e6))))+(1/nl)*(((2e-6+0*(nl+160e-9))/10.0+11.1111e-9)*exp((2e-6+0*(nl+160e-9))*(-9e6))-(((2e-6+0*(nl+160e-9))+nl)/10.0+11.1111e-9)*exp(((2e-6+0*(nl+160e-9))+nl)*(-9e6))))/1.0+(1/nw)*(75.1111e-9*exp(-5.76)-((640e-9+nw)/10.0+11.1111e-9)*exp((640e-9+nw)*(-9e6))))+(1/nw)*(209.1111e-9*exp(-17.82)-((1.98e-6+nw)/10.0+11.1111e-9)*exp((1.98e-6+nw)*(-9e6)))'
+scc='(((1/nl)*((((0+((2e-6+0*(nl+160e-9))/20.0+2.77778e-9)*exp((2e-6+0*(nl+160e-9))*(-18e6)))-(((2e-6+0*(nl+160e-9))+nl)/20.0+2.77778e-9)*exp(((2e-6+0*(nl+160e-9))+nl)*(-18e6)))+((2e-6+0*(nl+160e-9))/20.0+2.77778e-9)*exp((2e-6+0*(nl+160e-9))*(-18e6)))-(((2e-6+0*(nl+160e-9))+nl)/20.0+2.77778e-9)*exp(((2e-6+0*(nl+160e-9))+nl)*(-18e6))))/1.0+(1/nw)*(34.77778e-9*exp(-11.52)-((640e-9+nw)/20.0+2.77778e-9)*exp((640e-9+nw)*(-18e6))))+(1/nw)*(101.77778e-9*exp(-35.64)-((1.98e-6+nw)/20.0+2.77778e-9)*exp((1.98e-6+nw)*(-18e6)))' dfm_flag=0
XM0 S GP D inh_vdd pch_mac l=pl w='pw*pf' multi=1 nf=pf sd=160.0n ad='((pf-int(pf/2)*2)*((140e-9+((pf-1)*160e-9)/2)+0)+((pf+1)-int((pf+1)/2)*2)*((pf/2)*160e-9))*pw' as='((pf-int(pf/2)*2)*((140e-9+((pf-1)*160e-9)/2)+0)+((pf+1)-int((pf+1)/2)*2)*(((280e-9+(pf/2-1)*160e-9)+0)+0))*pw' pd='(pf-int(pf/2)*2)*(((140e-9+((pf-1)*160e-9)/2)+0)*2+(pf+1)*pw)+((pf+1)-int((pf+1)/2)*2)*(((pf/2)*160e-9)*2+pf*pw)' ps='(pf-int(pf/2)*2)*(((140e-9+((pf-1)*160e-9)/2)+0)*2+(pf+1)*pw)+((pf+1)-int((pf+1)/2)*2)*((((280e-9+(pf/2-1)*160e-9)+0)+0)*2+(pf+2)*pw)' sca='((((1e-12/pl)*((0+(1/(1.2e-6+0*(pl+160e-9))-1/((1.2e-6+0*(pl+160e-9))+pl)))+(1/(1.2e-6+0*(pl+160e-9))-1/((1.2e-6+0*(pl+160e-9))+pl))))/1.0+(1e-12/pw)*(5.88235294117647e6-1/(170e-9+pw)))+(1e-12/pw)*(684.931506849315e3-1/(1.46e-6+pw)))/810e-3'
+scb='(((0+(1/pl)*(((1.2e-6+0*(pl+160e-9))/10.0+11.1111e-9)*exp((1.2e-6+0*(pl+160e-9))*(-9e6))-(((1.2e-6+0*(pl+160e-9))+pl)/10.0+11.1111e-9)*exp(((1.2e-6+0*(pl+160e-9))+pl)*(-9e6))))+(1/pl)*(((1.2e-6+0*(pl+160e-9))/10.0+11.1111e-9)*exp((1.2e-6+0*(pl+160e-9))*(-9e6))-(((1.2e-6+0*(pl+160e-9))+pl)/10.0+11.1111e-9)*exp(((1.2e-6+0*(pl+160e-9))+pl)*(-9e6))))/1.0+(1/pw)*(157.1111e-9*exp(-13.14)-((1.46e-6+pw)/10.0+11.1111e-9)*exp((1.46e-6+pw)*(-9e6))))+(1/pw)*(28.1111e-9*exp(-1.53)-((170e-9+pw)/10.0+11.1111e-9)*exp((170e-9+pw)*(-9e6)))'
+scc='(((1/pl)*((((0+((1.2e-6+0*(pl+160e-9))/20.0+2.77778e-9)*exp((1.2e-6+0*(pl+160e-9))*(-18e6)))-(((1.2e-6+0*(pl+160e-9))+pl)/20.0+2.77778e-9)*exp(((1.2e-6+0*(pl+160e-9))+pl)*(-18e6)))+((1.2e-6+0*(pl+160e-9))/20.0+2.77778e-9)*exp((1.2e-6+0*(pl+160e-9))*(-18e6)))-(((1.2e-6+0*(pl+160e-9))+pl)/20.0+2.77778e-9)*exp(((1.2e-6+0*(pl+160e-9))+pl)*(-18e6))))/1.0+(1/pw)*(75.77778e-9*exp(-26.28)-((1.46e-6+pw)/20.0+2.77778e-9)*exp((1.46e-6+pw)*(-18e6))))+(1/pw)*(11.27778e-9*exp(-3.06)-((170e-9+pw)/20.0+2.77778e-9)*exp((170e-9+pw)*(-18e6)))' dfm_flag=0
.ends cxfr
** End of subcircuit definition.

** Library name: io
** Cell name: switch_12_import
** View name: schematic

.subckt switch_12_import clk clkb in out pvdd inh_vss
XM0 out clk in inh_vss nch_12_mac l=70n w=2.4u multi=1 nf=4 sd=160.0n ad=1.92e-13 as=2.64e-13 pd=3.04u ps=4.48u nrd=0.012218 nrs=0.012218 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=202.288n spba1=205.319n dfm_flag=0 sapb=244.426n
XM1 out clkb in pvdd pch_12_mac l=70n w=4.8u multi=1 nf=8 sd=160.0n ad=3.84e-13 as=4.56e-13 pd=6.08u ps=7.52u nrd=0.009782 nrs=0.009782 sa=545.317n sb=545.317n sa1=279.161n sa2=472.77n sa3=691.591n sa4=511.925n sb1=279.161n sb2=472.77n sb3=691.591n spa=164.669n spa1=164.513n spa2=163.442n spa3=163.91n sap=251.492n spba=198.962n spba1=201.956n dfm_flag=0 sapb=276.979n
.ends switch_12_import
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx1_12
** View name: schematic

.subckt sc_invx1_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=330.0n multi=1 nf=1 sd=160.0n ad=4.62e-14 as=4.62e-14 pd=940.0n ps=940.0n nrd=0.074972 nrs=0.074972 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=886.9n spba1=887.7n dfm_flag=0 sapb=1.668u
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.055711 nrs=0.055711 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=886.9n spba1=887.7n dfm_flag=0 sapb=1.668u
.ends sc_invx1_12
** End of subcircuit definition.

** Library name: io
** Cell name: ana_mux_import
** View name: schematic

.subckt ana_mux_import a b out pvdd sa inh_vss
XI1 selb sela b out pvdd inh_vss switch_12_import
XI0 sela selb a out pvdd inh_vss switch_12_import
XU1 selb sela pvdd inh_vss sc_invx1_12
XU0 sa selb pvdd inh_vss sc_invx1_12
.ends ana_mux_import
** End of subcircuit definition.

** Library name: ana
** Cell name: vrefgen_error_in_dec
** View name: schematic

.subckt vrefgen_error_in_dec d0 d1 d10 d11 d12 d13 d14 d15 d2 d3 d4 d5 d6 d7 d8 d9 out pvdd s0 s1 s2 s3 inh_vss
XI14 net50 net031 out pvdd s3 inh_vss ana_mux_import
XI13 net44 net43 net031 pvdd s2 inh_vss ana_mux_import
XI12 net46 net45 net50 pvdd s2 inh_vss ana_mux_import
XI11 net32 net31 net43 pvdd s1 inh_vss ana_mux_import
XI10 net34 net33 net44 pvdd s1 inh_vss ana_mux_import
XI9 net36 net35 net45 pvdd s1 inh_vss ana_mux_import
XI8 net38 net37 net46 pvdd s1 inh_vss ana_mux_import
XI7 d7 d6 net34 pvdd s0 inh_vss ana_mux_import
XI6 d3 d2 net32 pvdd s0 inh_vss ana_mux_import
XI5 d1 d0 net31 pvdd s0 inh_vss ana_mux_import
XI4 d5 d4 net33 pvdd s0 inh_vss ana_mux_import
XI3 d11 d10 net36 pvdd s0 inh_vss ana_mux_import
XI2 d9 d8 net35 pvdd s0 inh_vss ana_mux_import
XI1 d13 d12 net37 pvdd s0 inh_vss ana_mux_import
XI0 d15 d14 net38 pvdd s0 inh_vss ana_mux_import
.ends vrefgen_error_in_dec
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx1r
** View name: schematic

.subckt sc_invx1r a y inh_vdd inh_vss
XN0 y a inh_vss inh_vss nch_mac l=40n w=330.0n multi=1 nf=1 sd=160.0n ad=4.62e-14 as=4.62e-14 pd=940.0n ps=940.0n nrd=0.074972 nrs=0.074972 sa=140.0n sb=140.0n sca=2.86377 scb=0.000664318 scc=1.04238e-06 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=2u enx1=2u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.0111u rey=1.83014u dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=901.74200n
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.055711 nrs=0.055711 sa=140.0n sb=140.0n sca=10.8078 scb=0.0091796 scc=0.000801174 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=1.2u enx1=1.2u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.07718u rey=921.12900n dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=711.5400n
.ends sc_invx1r
** End of subcircuit definition.

** Library name: ana
** Cell name: ls_12
** View name: schematic

.subckt ls_12 d pvdd q qb vreg inh_vss
XM1 net06 net8 pvdd pvdd pch_12_mac l=70n w=800n multi=1 nf=2 sd=160.0n ad=6.4e-14 as=1.12e-13 pd=1.12u ps=2.16u nrd=0.037591 nrs=0.037591 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM0 net8 net06 pvdd pvdd pch_12_mac l=70n w=800n multi=1 nf=2 sd=160.0n ad=6.4e-14 as=1.12e-13 pd=1.12u ps=2.16u nrd=0.037591 nrs=0.037591 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM3 net06 dbb inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM2 net8 db inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XU1 d db vreg inh_vss sc_invx1r
XU2 db dbb vreg inh_vss sc_invx1r
XU5 net06 q pvdd inh_vss sc_invx1_12
XU3 net8 qb pvdd inh_vss sc_invx1_12
.ends ls_12
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx4_12
** View name: schematic

.subckt sc_invx4_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=1.32u multi=1 nf=4 sd=160.0n ad=1.056e-13 as=1.452e-13 pd=1.96u ps=2.86u nrd=0.026879 nrs=0.026879 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=210.3n spba1=213.4n dfm_flag=0 sapb=323n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=210.3n spba1=213.4n dfm_flag=0 sapb=323n
.ends sc_invx4_12
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx16_12
** View name: schematic

.subckt sc_invx16_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=5.28u multi=1 nf=16 sd=160.0n ad=4.224e-13 as=4.62e-13 pd=7.84u ps=8.74u nrd=0.007538 nrs=0.007538 sa=921.475n sb=921.475n sa1=353.378n sa2=702.745n sa3=930.644n sa4=860.283n sb1=353.378n sb2=702.745n sb3=930.644n spa=162.323n spa1=162.241n spa2=161.686n spa3=161.926n sap=295.864n spba=199n spba1=201.9n dfm_flag=0 sapb=370.7n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=8.96u multi=1 nf=16 sd=160.0n ad=7.168e-13 as=7.84e-13 pd=11.52u ps=12.88u nrd=0.004750 nrs=0.004750 sa=921.475n sb=921.475n sa1=353.378n sa2=702.745n sa3=930.644n sa4=860.283n sb1=353.378n sb2=702.745n sb3=930.644n spa=162.323n spa1=162.241n spa2=161.686n spa3=161.926n sap=295.864n spba=199n spba1=201.9n dfm_flag=0 sapb=370.7n
.ends sc_invx16_12
** End of subcircuit definition.

** Library name: ana
** Cell name: vrefgen_error_in
** View name: schematic

.subckt vrefgen_error_in da_0 da_1 da_2 da_3 out powerdown pvdd vreg inh_vss
XXR2 a15 a14 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR3 a14 a13 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR4 a13 a12 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR5 a12 a11 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR6 a11 a10 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR7 a10 a9 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR8 a9 a8 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR9 a8 a7 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR10 a4 a3 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR11 a5 a4 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR12 a6 a5 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR13 a7 a6 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR14 a3 a2 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR15 a2 a1 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

XXR16 a1 a0 inh_vss rppolywo_m lr=1u wr=1u multi=1 m=1

**Series configuration of R1
XXR1_1__dmy0 net019 XR1_1__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_2__dmy0 XR1_1__dmy0 XR1_2__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_3__dmy0 XR1_2__dmy0 XR1_3__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_4__dmy0 XR1_3__dmy0 XR1_4__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_5__dmy0 XR1_4__dmy0 XR1_5__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_6__dmy0 XR1_5__dmy0 XR1_6__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_7__dmy0 XR1_6__dmy0 XR1_7__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_8__dmy0 XR1_7__dmy0 XR1_8__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_9__dmy0 XR1_8__dmy0 XR1_9__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_10__dmy0 XR1_9__dmy0 XR1_10__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_11__dmy0 XR1_10__dmy0 XR1_11__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_12__dmy0 XR1_11__dmy0 XR1_12__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_13__dmy0 XR1_12__dmy0 XR1_13__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_14__dmy0 XR1_13__dmy0 XR1_14__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_15__dmy0 XR1_14__dmy0 XR1_15__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_16__dmy0 XR1_15__dmy0 XR1_16__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_17__dmy0 XR1_16__dmy0 XR1_17__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_18__dmy0 XR1_17__dmy0 XR1_18__dmy0 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
XXR1_19__dmy0 XR1_18__dmy0 a15 inh_vss rppolywo_m lr=1.04u wr=1u multi=1 m=1
**End of R1

**Series configuration of R0
XXR0_1__dmy0 a0 XR0_1__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_2__dmy0 XR0_1__dmy0 XR0_2__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_3__dmy0 XR0_2__dmy0 XR0_3__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_4__dmy0 XR0_3__dmy0 XR0_4__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_5__dmy0 XR0_4__dmy0 XR0_5__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_6__dmy0 XR0_5__dmy0 XR0_6__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_7__dmy0 XR0_6__dmy0 XR0_7__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_8__dmy0 XR0_7__dmy0 XR0_8__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_9__dmy0 XR0_8__dmy0 XR0_9__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_10__dmy0 XR0_9__dmy0 XR0_10__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_11__dmy0 XR0_10__dmy0 XR0_11__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_12__dmy0 XR0_11__dmy0 XR0_12__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_13__dmy0 XR0_12__dmy0 XR0_13__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_14__dmy0 XR0_13__dmy0 XR0_14__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_15__dmy0 XR0_14__dmy0 XR0_15__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_16__dmy0 XR0_15__dmy0 XR0_16__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_17__dmy0 XR0_16__dmy0 XR0_17__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_18__dmy0 XR0_17__dmy0 XR0_18__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_19__dmy0 XR0_18__dmy0 XR0_19__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_20__dmy0 XR0_19__dmy0 XR0_20__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_21__dmy0 XR0_20__dmy0 XR0_21__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_22__dmy0 XR0_21__dmy0 XR0_22__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_23__dmy0 XR0_22__dmy0 XR0_23__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_24__dmy0 XR0_23__dmy0 XR0_24__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_25__dmy0 XR0_24__dmy0 XR0_25__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_26__dmy0 XR0_25__dmy0 XR0_26__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_27__dmy0 XR0_26__dmy0 XR0_27__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_28__dmy0 XR0_27__dmy0 XR0_28__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_29__dmy0 XR0_28__dmy0 XR0_29__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_30__dmy0 XR0_29__dmy0 XR0_30__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_31__dmy0 XR0_30__dmy0 XR0_31__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_32__dmy0 XR0_31__dmy0 XR0_32__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_33__dmy0 XR0_32__dmy0 XR0_33__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_34__dmy0 XR0_33__dmy0 XR0_34__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_35__dmy0 XR0_34__dmy0 XR0_35__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_36__dmy0 XR0_35__dmy0 XR0_36__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_37__dmy0 XR0_36__dmy0 XR0_37__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_38__dmy0 XR0_37__dmy0 XR0_38__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_39__dmy0 XR0_38__dmy0 XR0_39__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_40__dmy0 XR0_39__dmy0 XR0_40__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_41__dmy0 XR0_40__dmy0 XR0_41__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_42__dmy0 XR0_41__dmy0 XR0_42__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_43__dmy0 XR0_42__dmy0 XR0_43__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_44__dmy0 XR0_43__dmy0 XR0_44__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_45__dmy0 XR0_44__dmy0 XR0_45__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_46__dmy0 XR0_45__dmy0 XR0_46__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_47__dmy0 XR0_46__dmy0 XR0_47__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_48__dmy0 XR0_47__dmy0 XR0_48__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_49__dmy0 XR0_48__dmy0 XR0_49__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_50__dmy0 XR0_49__dmy0 XR0_50__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_51__dmy0 XR0_50__dmy0 XR0_51__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_52__dmy0 XR0_51__dmy0 XR0_52__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_53__dmy0 XR0_52__dmy0 XR0_53__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_54__dmy0 XR0_53__dmy0 XR0_54__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_55__dmy0 XR0_54__dmy0 XR0_55__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_56__dmy0 XR0_55__dmy0 XR0_56__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_57__dmy0 XR0_56__dmy0 XR0_57__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_58__dmy0 XR0_57__dmy0 XR0_58__dmy0 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
XXR0_59__dmy0 XR0_58__dmy0 net024 inh_vss rppolywo_m lr=1.005u wr=1u multi=1 m=1
**End of R0

XI4 a0 a1 a10 a11 a12 a13 a14 a15 a2 a3 a4 a5 a6 a7 a8 a9 out pvdd s0 s1 s2 s3 inh_vss vrefgen_error_in_dec
XI6 da_2 pvdd net09 net014 vreg inh_vss ls_12
XI5 da_3 pvdd net012 net013 vreg inh_vss ls_12
XI7 da_1 pvdd net07 net08 vreg inh_vss ls_12
XI16 powerdown pvdd net025 net021 vreg inh_vss ls_12
XI8 da_0 pvdd net04 net03 vreg inh_vss ls_12
XU0 net012 net011 pvdd inh_vss sc_invx1_12
XU5 net07 net06 pvdd inh_vss sc_invx1_12
XU2 net09 net010 pvdd inh_vss sc_invx1_12
XU6 net04 net05 pvdd inh_vss sc_invx1_12
XM0 net019 pwrdn pvdd pvdd pch_12_mac l=70n w=30u multi=1 nf=30 sd=160.0n ad=2.4e-12 as=2.52e-12 pd=34.8u ps=37.04u nrd=0.001506 nrs=0.001506 sa=1.50916u sb=1.50916u sa1=437.336n sa2=991.492n sa3=1.18243u sa4=1.40782u sb1=437.336n sb2=991.492n sb3=1.18243u spa=161.236n spa1=161.191n spa2=160.891n spa3=161.02n sap=346.278n spba=196.748n spba1=199.717n dfm_flag=0 sapb=358.265n
XM1 net024 pwrdnb inh_vss inh_vss nch_12_mac l=70n w=20u multi=1 nf=20 sd=160.0n ad=1.6e-12 as=1.72e-12 pd=23.2u ps=25.44u nrd=0.001504 nrs=0.001504 sa=1.09596u sb=1.09596u sa1=381.185n sa2=795.251n sa3=1.01548u sa4=1.02252u sb1=381.185n sb2=795.251n sb3=1.01548u spa=161.857n spa1=161.79n spa2=161.343n spa3=161.536n sap=312.569n spba=197.138n spba1=200.112n dfm_flag=0 sapb=330.374n
XU1 net011 s3 pvdd inh_vss sc_invx4_12
XU4 net06 s1 pvdd inh_vss sc_invx4_12
XU3 net010 s2 pvdd inh_vss sc_invx4_12
XU7 net05 s0 pvdd inh_vss sc_invx4_12
XU8 net025 net028 pvdd inh_vss sc_invx4_12
XU11 net021 net030 pvdd inh_vss sc_invx4_12
XU9 net028 pwrdn pvdd inh_vss sc_invx16_12
XU10 net030 pwrdnb pvdd inh_vss sc_invx16_12
.ends vrefgen_error_in
** End of subcircuit definition.

** Library name: esd
** Cell name: eEsdndio
** View name: schematic

.subckt eEsdndio pad inh_vss
D0 inh_vss pad ndio_12 area=6e-11 pj=8.3e-05 m=1
.ends eEsdndio
** End of subcircuit definition.

** Library name: esd
** Cell name: eEsdpdio
** View name: schematic

.subckt eEsdpdio pad vtt
D1 pad vtt pdio_12 area=6e-11 pj=8.3e-05 m=1
.ends eEsdpdio
** End of subcircuit definition.

** Library name: esd
** Cell name: eEsdhbm
** View name: schematic

.subckt eEsdhbm pad vtt inh_vss
XI9 pad inh_vss eEsdndio
XI8 pad vtt eEsdpdio
.ends eEsdhbm
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

** Library name: sclib_12
** Cell name: sc_invx6_12
** View name: schematic

.subckt sc_invx6_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=1.98u multi=1 nf=6 sd=160.0n ad=1.584e-13 as=1.98e-13 pd=2.94u ps=3.84u nrd=0.018827 nrs=0.018827 sa=441.862n sb=441.862n sa1=253.113n sa2=398.819n sa3=600.454n sa4=416.572n sb1=253.113n sb2=398.819n sb3=600.454n spa=166.245n spa1=166.045n spa2=164.654n spa3=165.267n sap=236.148n spba=204.723n spba1=207.754n dfm_flag=0 sapb=329.879n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=3.96u multi=1 nf=6 sd=160.0n ad=3.168e-13 as=3.96e-13 pd=4.92u ps=6.48u nrd=0.013983 nrs=0.013983 sa=441.862n sb=441.862n sa1=253.113n sa2=398.819n sa3=600.454n sa4=416.572n sb1=253.113n sb2=398.819n sb3=600.454n spa=166.245n spa1=166.045n spa2=164.654n spa3=165.267n sap=236.148n spba=204.723n spba1=207.754n dfm_flag=0 sapb=329.879n
.ends sc_invx6_12
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
** Cell name: sc_nand2x4r
** View name: schematic

.subckt sc_nand2x4r a b y inh_vdd inh_vss
XNb net21 b inh_vss inh_vss nch_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.013439 nrs=0.013439 sa=309.7800n sb=309.7800n sca=2.19193 scb=0.000356858 scc=5.23214e-07 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=2.28388u enx1=2.27814u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.28079u rey=1.83014u dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=901.74200n
XNa y a net21 inh_vss nch_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.013439 nrs=0.013439 sa=309.7800n sb=309.7800n sca=2.19193 scb=0.000356858 scc=5.23214e-07 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=2.28388u enx1=2.27814u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.28079u rey=1.83014u dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=901.74200n
XPa y a inh_vdd inh_vdd pch_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.7800n sb=309.7800n sca=10.2911 scb=0.00915362 scc=0.000801174 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=1.47532u enx1=1.46621u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.50641u rey=921.12900n dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=711.5400n
XPb y b inh_vdd inh_vdd pch_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.7800n sb=309.7800n sca=10.2911 scb=0.00915362 scc=0.000801174 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=1.47532u enx1=1.46621u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.50641u rey=921.12900n dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=711.5400n
.ends sc_nand2x4r
** End of subcircuit definition.

** Library name: clk
** Cell name: DamNcap1p8x1p8V12
** View name: schematic

.subckt DamNcap1p8x1p8V12 minus plus
XC0 plus minus nmoscap_12 lr=1.8u wr=1.8u multi=1
.ends DamNcap1p8x1p8V12
** End of subcircuit definition.

** Library name: rbbasic
** Cell name: cxfr_mv
** View name: schematic

.subckt cxfr_mv D GN GP S inh_vdd inh_vss nl=70n nw=140n nf=1 nsd=140n pl=70n pw=140n pf=1 psd=140n
XM0 S GN D inh_vss nch_12_mac l=nl w='nw*nf' multi=1 nf=nf sd=nsd ad='((nf-int(nf/2)*2)*((140e-9+((nf-1)*160e-9)/2)+0)+((nf+1)-int((nf+1)/2)*2)*((nf/2)*160e-9))*nw' as='((nf-int(nf/2)*2)*((140e-9+((nf-1)*160e-9)/2)+0)+((nf+1)-int((nf+1)/2)*2)*(((280e-9+(nf/2-1)*160e-9)+0)+0))*nw' pd='(nf-int(nf/2)*2)*(((140e-9+((nf-1)*160e-9)/2)+0)*2+(nf+1)*nw)+((nf+1)-int((nf+1)/2)*2)*(((nf/2)*160e-9)*2+nf*nw)' ps='(nf-int(nf/2)*2)*(((140e-9+((nf-1)*160e-9)/2)+0)*2+(nf+1)*nw)+((nf+1)-int((nf+1)/2)*2)*((((280e-9+(nf/2-1)*160e-9)+0)+0)*2+(nf+2)*nw)' dfm_flag=0
XM1 S GP D inh_vdd pch_12_mac l=pl w='pw*pf' multi=1 nf=pf sd=psd ad='((pf-int(pf/2)*2)*((140e-9+((pf-1)*160e-9)/2)+0)+((pf+1)-int((pf+1)/2)*2)*((pf/2)*160e-9))*pw' as='((pf-int(pf/2)*2)*((140e-9+((pf-1)*160e-9)/2)+0)+((pf+1)-int((pf+1)/2)*2)*(((280e-9+(pf/2-1)*160e-9)+0)+0))*pw' pd='(pf-int(pf/2)*2)*(((140e-9+((pf-1)*160e-9)/2)+0)*2+(pf+1)*pw)+((pf+1)-int((pf+1)/2)*2)*(((pf/2)*160e-9)*2+pf*pw)' ps='(pf-int(pf/2)*2)*(((140e-9+((pf-1)*160e-9)/2)+0)*2+(pf+1)*pw)+((pf+1)-int((pf+1)/2)*2)*((((280e-9+(pf/2-1)*160e-9)+0)+0)*2+(pf+2)*pw)' dfm_flag=0
.ends cxfr_mv
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx8_12
** View name: schematic

.subckt sc_invx8_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=2.64u multi=1 nf=8 sd=160n ad=211.2f as=250.8f pd=3.92u ps=4.82u nrd=0.01449 nrs=0.01449 sa=545.3n sb=545.3n sa1=279.2n sa2=472.8n sa3=691.6n sa4=511.9n sb1=279.2n sb2=472.8n sb3=691.6n spa=164.7n spa1=164.5n spa2=163.4n spa3=163.9n sap=251.5n spba=202.3n spba1=205.3n dfm_flag=0 sapb=338.9n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=5.28u multi=1 nf=8 sd=160n ad=422.4f as=501.6f pd=6.56u ps=8.12u nrd=0.01076 nrs=0.01076 sa=545.3n sb=545.3n sa1=279.2n sa2=472.8n sa3=691.6n sa4=511.9n sb1=279.2n sb2=472.8n sb3=691.6n spa=164.7n spa1=164.5n spa2=163.4n spa3=163.9n sap=251.5n spba=202.3n spba1=205.3n dfm_flag=0 sapb=338.9n
.ends sc_invx8_12
** End of subcircuit definition.

** Library name: clk
** Cell name: DamNcap2x2p4V12
** View name: schematic

.subckt DamNcap2x2p4V12 minus plus
XC1 plus minus nmoscap_12 lr=2u wr=2.4u multi=1
.ends DamNcap2x2p4V12
** End of subcircuit definition.

** Library name: sclib_12
** Cell name: sc_invx2_12
** View name: schematic

.subckt sc_invx2_12 a y inh_vdd inh_vss
XM8 y a inh_vss inh_vss nch_12_mac l=70n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=238.3n spba1=241.4n dfm_flag=0 sapb=348.7n
XM5 y a inh_vdd inh_vdd pch_12_mac l=70n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=238.3n spba1=241.4n dfm_flag=0 sapb=348.7n
.ends sc_invx2_12
** End of subcircuit definition.

** Library name: io
** Cell name: cmos12iBias
** View name: schematic

.subckt cmos12iBias rxen vbiasn vbiasp vdd inh_vdd inh_vss
XM112 vdd vdd vdd vdd pch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM111 vdd vdd vdd vdd pch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM103 vbiasp vbiasp vdd vdd pch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM10 vdd vbiasp vdd vdd pch_12_mac l=900n w=3.6u multi=1 nf=4 sd=160.0n ad=2.88e-13 as=3.96e-13 pd=4.24u ps=6.28u nrd=0.012100 nrs=0.012100 sa=912.755n sb=912.755n sa1=274.265n sa2=676.078n sa3=702.449n sa4=460.647n sb1=274.265n sb2=676.078n sb3=702.449n spa=162.463n spa1=162.444n spa2=162.356n spa3=162.455n sap=236.406n spba=299.854n spba1=353.929n dfm_flag=0 sapb=279.35n
XM108 net0119 rxenb12 vdd vdd pch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM110 vdd vdd vdd vdd pch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM109 vdd vdd vdd vdd pch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM9 vdd net017 vdd vdd pch_12_mac l=1u w=6.3u multi=1 nf=7 sd=160.0n ad=5.58e-13 as=5.58e-13 pd=8.44u ps=8.44u nrd=0.007371 nrs=0.007371 sa=1.70482u sb=1.70482u sa1=358.136n sa2=1.10161u sa3=909.373n sa4=771.86n sb1=358.136n sb2=1.10161u sb3=909.373n spa=161.404n spa1=161.392n spa2=161.339n spa3=161.401n sap=280.284n spba=334.59n spba1=399.555n dfm_flag=0 sapb=321.304n
XM104 vbiasp rxenbb12 vdd vdd pch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM116 inh_vss inh_vss inh_vss inh_vss nch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM115 inh_vss inh_vss inh_vss inh_vss nch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM114 inh_vss inh_vss inh_vss inh_vss nch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM113 inh_vss inh_vss inh_vss inh_vss nch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM105 vbiasn vbiasn inh_vss inh_vss nch_12_mac l=200n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=242.857n sb=242.857n sa1=179.667n sa2=233.669n sa3=356.204n sa4=219.1n sb1=179.667n sb2=233.669n sb3=356.204n spa=164.95n spa1=164.925n spa2=164.73n spa3=164.859n sap=184.41n spba=221.192n spba1=230.208n dfm_flag=0 sapb=231.646n
XM106 net092 rxenbb12 inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM107 vbiasn rxenb12 inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XC0 inh_vss vbiasn DamNcap1p8x1p8V12
**Series configuration of R5
XXR5_1__dmy0 net0119 XR5_1__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_2__dmy0 XR5_1__dmy0 XR5_2__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_3__dmy0 XR5_2__dmy0 XR5_3__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_4__dmy0 XR5_3__dmy0 XR5_4__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_5__dmy0 XR5_4__dmy0 XR5_5__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_6__dmy0 XR5_5__dmy0 XR5_6__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_7__dmy0 XR5_6__dmy0 XR5_7__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_8__dmy0 XR5_7__dmy0 XR5_8__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_9__dmy0 XR5_8__dmy0 XR5_9__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_10__dmy0 XR5_9__dmy0 XR5_10__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_11__dmy0 XR5_10__dmy0 XR5_11__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_12__dmy0 XR5_11__dmy0 XR5_12__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_13__dmy0 XR5_12__dmy0 XR5_13__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_14__dmy0 XR5_13__dmy0 XR5_14__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_15__dmy0 XR5_14__dmy0 XR5_15__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_16__dmy0 XR5_15__dmy0 XR5_16__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_17__dmy0 XR5_16__dmy0 XR5_17__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_18__dmy0 XR5_17__dmy0 XR5_18__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_19__dmy0 XR5_18__dmy0 XR5_19__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_20__dmy0 XR5_19__dmy0 vbiasn inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
**End of R5

**Series configuration of R4
XXR4_1__dmy0 vbiasp XR4_1__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_2__dmy0 XR4_1__dmy0 XR4_2__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_3__dmy0 XR4_2__dmy0 XR4_3__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_4__dmy0 XR4_3__dmy0 XR4_4__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_5__dmy0 XR4_4__dmy0 XR4_5__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_6__dmy0 XR4_5__dmy0 XR4_6__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_7__dmy0 XR4_6__dmy0 XR4_7__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_8__dmy0 XR4_7__dmy0 XR4_8__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_9__dmy0 XR4_8__dmy0 XR4_9__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_10__dmy0 XR4_9__dmy0 XR4_10__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_11__dmy0 XR4_10__dmy0 XR4_11__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_12__dmy0 XR4_11__dmy0 XR4_12__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_13__dmy0 XR4_12__dmy0 XR4_13__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_14__dmy0 XR4_13__dmy0 XR4_14__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_15__dmy0 XR4_14__dmy0 XR4_15__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_16__dmy0 XR4_15__dmy0 XR4_16__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_17__dmy0 XR4_16__dmy0 XR4_17__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_18__dmy0 XR4_17__dmy0 XR4_18__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_19__dmy0 XR4_18__dmy0 XR4_19__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_20__dmy0 XR4_19__dmy0 net092 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
**End of R4

XU10 inh_vss rxenb12 rxenbb12 net017 vdd inh_vss cxfr_mv m=1 nl=70n nw=1u nf=8 nsd=140.0n pl=70n pw=1u pf=8 psd=140.0n
XU9 vbiasp rxenbb12 rxenb12 net017 vdd inh_vss cxfr_mv m=1 nl=70n nw=1u nf=8 nsd=140.0n pl=70n pw=1u pf=8 psd=140.0n
XU7 vdd rxenb12 rxenbb12 net050 vdd inh_vss cxfr_mv m=1 nl=70n nw=1u nf=8 nsd=140.0n pl=70n pw=1u pf=8 psd=140.0n
XU8 vbiasn rxenbb12 rxenb12 net050 vdd inh_vss cxfr_mv m=1 nl=70n nw=1u nf=8 nsd=140.0n pl=70n pw=1u pf=8 psd=140.0n
XU18 net058 rxenbb12 vdd inh_vss sc_invx8_12
XU19 net0108 rxenb12 vdd inh_vss sc_invx8_12
XU17 net0101 net0108 vdd inh_vss sc_invx8_12
XU0 net0102 net058 vdd inh_vss sc_invx8_12
XC1 inh_vss net050 DamNcap2x2p4V12
XI22_4_ rxen net0102 net0101 vdd inh_vdd inh_vss cmos12oLS
XI22_3_ rxen net0102 net0101 vdd inh_vdd inh_vss cmos12oLS
XI22_2_ rxen net0102 net0101 vdd inh_vdd inh_vss cmos12oLS
XI22_1_ rxen net0102 net0101 vdd inh_vdd inh_vss cmos12oLS
XI22_0_ rxen net0102 net0101 vdd inh_vdd inh_vss cmos12oLS
XU20 net0108 net058 vdd inh_vss sc_invx2_12
XU1 net058 net0108 vdd inh_vss sc_invx2_12
.ends cmos12iBias
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_nand2x1r
** View name: schematic

.subckt sc_nand2x1r a b y inh_vdd inh_vss
XPa y a inh_vdd inh_vdd pch_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.055711 nrs=0.055711 sa=140.0n sb=140.0n sca=10.8078 scb=0.0091796 scc=0.000801174 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=1.2u enx1=1.2u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.07718u rey=921.12900n dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=711.5400n
XPb y b inh_vdd inh_vdd pch_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.055711 nrs=0.055711 sa=140.0n sb=140.0n sca=10.8078 scb=0.0091796 scc=0.000801174 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=1.2u enx1=1.2u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.07718u rey=921.12900n dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=711.5400n
Xnb net21 b inh_vss inh_vss nch_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.037486 nrs=0.037486 sa=140.0n sb=140.0n sca=2.32522 scb=0.00035689 scc=5.23214e-07 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=2u enx1=2u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.0111u rey=1.83014u dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=901.74200n
XNa y a net21 inh_vss nch_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.037486 nrs=0.037486 sa=140.0n sb=140.0n sca=2.32522 scb=0.00035689 scc=5.23214e-07 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=2u enx1=2u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.0111u rey=1.83014u dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=901.74200n
.ends sc_nand2x1r
** End of subcircuit definition.

** Library name: io
** Cell name: ckRxOffsetN
** View name: schematic

.subckt ckRxOffsetN bottom off[3] off[2] off[1] off[0] tiehi top inh_vss
XM3_7_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_6_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_5_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_4_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_3_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_2_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_1_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM3_0_ top off[3] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM2_3_ top off[2] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM2_2_ top off[2] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM2_1_ top off[2] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM2_0_ top off[2] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM1_1_ top off[1] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM1_0_ top off[1] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
Xn5 top tiehi bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
XM0 top off[0] bottom inh_vss nch_12_mac l=70n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=208.495n spba1=211.941n dfm_flag=0 sapb=190.886n
.ends ckRxOffsetN
** End of subcircuit definition.

** Library name: io
** Cell name: ckRxOffsetP
** View name: schematic

.subckt ckRxOffsetP bottom off[3] off[2] off[1] off[0] tielo top inh_vdd
XM1_1_ bottom off[1] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM1_0_ bottom off[1] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_7_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_6_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_5_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_4_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_3_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_2_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_1_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM3_0_ bottom off[3] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM2_3_ bottom off[2] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM2_2_ bottom off[2] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM2_1_ bottom off[2] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM2_0_ bottom off[2] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
Xp5 bottom tielo top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM0 bottom off[0] top inh_vdd pch_12_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
.ends ckRxOffsetP
** End of subcircuit definition.

** Library name: io
** Cell name: cmos12iAmpCore
** View name: schematic

.subckt cmos12iAmpCore VDD in inb offcalen offcalenb offcalenbb offset[4] offset[3] offset[2] offset[1] offset[0] on op pd_rxen rxen inh_vdd inh_vss
XU2 oceniob offcalenbb VDD inh_vss sc_invx6_12
XU1 ocenio offcalenb VDD inh_vss sc_invx6_12
XI7_3_ offp[3] offp12b[3] offp12[3] VDD inh_vdd inh_vss cmos12oLS
XI7_2_ offp[2] offp12b[2] offp12[2] VDD inh_vdd inh_vss cmos12oLS
XI7_1_ offp[1] offp12b[1] offp12[1] VDD inh_vdd inh_vss cmos12oLS
XI7_0_ offp[0] offp12b[0] offp12[0] VDD inh_vdd inh_vss cmos12oLS
XI1_1_ enb eniob enio VDD inh_vdd inh_vss cmos12oLS
XI1_0_ enb eniob enio VDD inh_vdd inh_vss cmos12oLS
XI5_3_ net0141[0] offn12[3] offn12b[3] VDD inh_vdd inh_vss cmos12oLS
XI5_2_ net0141[1] offn12[2] offn12b[2] VDD inh_vdd inh_vss cmos12oLS
XI5_1_ net0141[2] offn12[1] offn12b[1] VDD inh_vdd inh_vss cmos12oLS
XI5_0_ net0141[3] offn12[0] offn12b[0] VDD inh_vdd inh_vss cmos12oLS
Xlsocen_3_ offcalen ocenio oceniob VDD inh_vdd inh_vss cmos12oLS
Xlsocen_2_ offcalen ocenio oceniob VDD inh_vdd inh_vss cmos12oLS
Xlsocen_1_ offcalen ocenio oceniob VDD inh_vdd inh_vss cmos12oLS
Xlsocen_0_ offcalen ocenio oceniob VDD inh_vdd inh_vss cmos12oLS
XU8 enb en inh_vdd inh_vss sc_invx8r
XU7 rxen pd_rxen enb inh_vdd inh_vss sc_nand2x4r
XI16 en vbiasn vbiasp VDD inh_vdd inh_vss cmos12iBias
XU16 offset[4] net283 inh_vdd inh_vss sc_invx1r
XU4_3_ net324[0] net0141[0] inh_vdd inh_vss sc_invx1r
XU4_2_ net324[1] net0141[1] inh_vdd inh_vss sc_invx1r
XU4_1_ net324[2] net0141[2] inh_vdd inh_vss sc_invx1r
XU4_0_ net324[3] net0141[3] inh_vdd inh_vss sc_invx1r
XU3_3_ en net325[0] offp[3] inh_vdd inh_vss sc_nand2x1r
XU3_2_ en net325[1] offp[2] inh_vdd inh_vss sc_nand2x1r
XU3_1_ en net325[2] offp[1] inh_vdd inh_vss sc_nand2x1r
XU3_0_ en net325[3] offp[0] inh_vdd inh_vss sc_nand2x1r
XU12_3_ offset[3] net283 net325[0] inh_vdd inh_vss sc_nand2x1r
XU12_2_ offset[2] net283 net325[1] inh_vdd inh_vss sc_nand2x1r
XU12_1_ offset[1] net283 net325[2] inh_vdd inh_vss sc_nand2x1r
XU12_0_ offset[0] net283 net325[3] inh_vdd inh_vss sc_nand2x1r
XU13_3_ en net323[0] net324[0] inh_vdd inh_vss sc_nand2x1r
XU13_2_ en net323[1] net324[1] inh_vdd inh_vss sc_nand2x1r
XU13_1_ en net323[2] net324[2] inh_vdd inh_vss sc_nand2x1r
XU13_0_ en net323[3] net324[3] inh_vdd inh_vss sc_nand2x1r
XU14_3_ offset[4] offset[3] net323[0] inh_vdd inh_vss sc_nand2x1r
XU14_2_ offset[4] offset[2] net323[1] inh_vdd inh_vss sc_nand2x1r
XU14_1_ offset[4] offset[1] net323[2] inh_vdd inh_vss sc_nand2x1r
XU14_0_ offset[4] offset[0] net323[3] inh_vdd inh_vss sc_nand2x1r
XM36 in offcalenbb inb inh_vss nch_12_mac l=70n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.006649 nrs=0.006649 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=202.288n spba1=205.319n dfm_flag=0 sapb=244.426n
Xinn headin in net075 inh_vss nch_12_mac l=150.0n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.006649 nrs=0.006649 sa=388.666n sb=388.666n sa1=227.236n sa2=354.562n sa3=541.173n sa4=345.184n sb1=227.236n sb2=354.562n sb3=541.173n spa=162.463n spa1=162.444n spa2=162.298n spa3=162.385n sap=212.983n spba=222.403n spba1=228.634n dfm_flag=0 sapb=266.153n
XM3 headref inb net084 inh_vss nch_12_mac l=150.0n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.006649 nrs=0.006649 sa=388.666n sb=388.666n sa1=227.236n sa2=354.562n sa3=541.173n sa4=345.184n sb1=227.236n sb2=354.562n sb3=541.173n spa=162.463n spa1=162.444n spa2=162.298n spa3=162.385n sap=212.983n spba=222.403n spba1=228.634n dfm_flag=0 sapb=266.153n
XM9 headin eniob inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM20 tailn eniob inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM1 net327 enio inh_vss inh_vss nch_12_mac l=70n w=12.0u multi=1 nf=12 sd=160.0n ad=9.6e-13 as=1.08e-12 pd=13.92u ps=16.16u nrd=0.002453 nrs=0.002453 sa=739.143n sb=739.143n sa1=320.464n sa2=597.542n sa3=827.446n sa4=691.15n sb1=320.464n sb2=597.542n sb3=827.446n spa=163.103n spa1=162.995n spa2=162.263n spa3=162.581n sap=276.12n spba=197.934n spba1=200.917n dfm_flag=0 sapb=299.055n
XM0 tailn vbiasn net327 inh_vss nch_12_mac l=200n w=16.0u multi=1 nf=16 sd=160.0n ad=1.28e-12 as=1.4e-12 pd=18.56u ps=20.8u nrd=0.001865 nrs=0.001865 sa=1.30442u sb=1.30442u sa1=377.952n sa2=893.294n sa3=1.06016u sa4=1.06817u sb1=377.952n sb2=893.294n sb3=1.06016u spa=160.613n spa1=160.608n spa2=160.565n spa3=160.593n sap=308.397n spba=248.146n spba1=255.744n dfm_flag=0 sapb=373.804n
XM8 headref eniob inh_vss inh_vss nch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.011617 nrs=0.011617 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
**Series configuration of R2
XXR2_1__dmy0 op XR2_1__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR2_2__dmy0 XR2_1__dmy0 XR2_2__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR2_3__dmy0 XR2_2__dmy0 inh_vss inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
**End of R2

**Series configuration of R0
XXR0_1__dmy0 on XR0_1__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR0_2__dmy0 XR0_1__dmy0 XR0_2__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR0_3__dmy0 XR0_2__dmy0 inh_vss inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
**End of R0

Xoffninb tailn offn12[3] offn12[2] offn12[1] offn12[0] enio net084 inh_vss ckRxOffsetN
Xoffnin tailn offp12[3] offp12[2] offp12[1] offp12[0] enio net075 inh_vss ckRxOffsetN
XM40 in offcalenb inb VDD pch_12_mac l=80n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.009877 nrs=0.009877 sa=338.689n sb=338.689n sa1=221.443n sa2=317.974n sa3=486.769n sa4=319.355n sb1=221.443n sb2=317.974n sb3=486.769n spa=162.463n spa1=162.444n spa2=162.291n spa3=162.366n sap=207.166n spba=200.998n spba1=204.373n dfm_flag=0 sapb=250.308n
XM25 net068 eniob VDD VDD pch_12_mac l=70n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.009877 nrs=0.009877 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=202.288n spba1=205.319n dfm_flag=0 sapb=244.426n
XM11 tailp enio VDD VDD pch_12_mac l=70n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=209.397n sb=209.397n sa1=174.687n sa2=205.977n sa3=286.184n sa4=203.362n sb1=174.687n sb2=205.977n sb3=286.184n spa=179.221n spa1=178.832n spa2=175.794n spa3=177.223n sap=192.81n spba=210.358n spba1=213.47n dfm_flag=0 sapb=217.823n
XM4 net305 eniob VDD VDD pch_12_mac l=70n w=12.0u multi=1 nf=12 sd=160.0n ad=9.6e-13 as=1.08e-12 pd=13.92u ps=16.16u nrd=0.003643 nrs=0.003643 sa=739.143n sb=739.143n sa1=320.464n sa2=597.542n sa3=827.446n sa4=691.15n sb1=320.464n sb2=597.542n sb3=827.446n spa=163.103n spa1=162.995n spa2=162.263n spa3=162.581n sap=276.12n spba=197.934n spba1=200.917n dfm_flag=0 sapb=299.055n
XM14 op headin net074 VDD pch_12_mac l=150.0n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM5 headin headin net071 VDD pch_12_mac l=150.0n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM13 on headref net068 VDD pch_12_mac l=150.0n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM12 headref headref net065 VDD pch_12_mac l=150.0n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM2 tailp vbiasp net305 VDD pch_12_mac l=200n w=16.0u multi=1 nf=16 sd=160.0n ad=1.28e-12 as=1.4e-12 pd=18.56u ps=20.8u nrd=0.002769 nrs=0.002769 sa=1.30442u sb=1.30442u sa1=377.952n sa2=893.294n sa3=1.06016u sa4=1.06817u sb1=377.952n sb2=893.294n sb3=1.06016u spa=160.613n spa1=160.608n spa2=160.565n spa3=160.593n sap=308.397n spba=248.146n spba1=255.744n dfm_flag=0 sapb=373.804n
XM24 on in net069 VDD pch_12_mac l=150.0n w=6u multi=1 nf=6 sd=160.0n ad=4.8e-13 as=6e-13 pd=6.96u ps=9.2u nrd=0.006918 nrs=0.006918 sa=532.241n sb=532.241n sa1=262.103n sa2=459.019n sa3=669.63n sa4=465.226n sb1=262.103n sb2=459.019n sb3=669.63n spa=161.639n spa1=161.625n spa2=161.519n spa3=161.582n sap=234.599n spba=225.543n spba1=231.605n dfm_flag=0 sapb=290.644n
XM18 op inb net085 VDD pch_12_mac l=150.0n w=6u multi=1 nf=6 sd=160.0n ad=4.8e-13 as=6e-13 pd=6.96u ps=9.2u nrd=0.006918 nrs=0.006918 sa=532.241n sb=532.241n sa1=262.103n sa2=459.019n sa3=669.63n sa4=465.226n sb1=262.103n sb2=459.019n sb3=669.63n spa=161.639n spa1=161.625n spa2=161.519n spa3=161.582n sap=234.599n spba=225.543n spba1=231.605n dfm_flag=0 sapb=290.644n
XM10 net065 eniob VDD VDD pch_12_mac l=70n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.009877 nrs=0.009877 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=202.288n spba1=205.319n dfm_flag=0 sapb=244.426n
XM7 net071 eniob VDD VDD pch_12_mac l=70n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.009877 nrs=0.009877 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=202.288n spba1=205.319n dfm_flag=0 sapb=244.426n
XM6 net074 eniob VDD VDD pch_12_mac l=70n w=4u multi=1 nf=4 sd=160.0n ad=3.2e-13 as=4.4e-13 pd=4.64u ps=6.88u nrd=0.009877 nrs=0.009877 sa=331.492n sb=331.492n sa1=220.515n sa2=312.483n sa3=477.658n sa4=315.144n sb1=220.515n sb2=312.483n sb3=477.658n spa=169.427n spa1=169.152n spa2=167.186n spa3=168.066n sap=217.368n spba=202.288n spba1=205.319n dfm_flag=0 sapb=244.426n
Xoffpin net069 offn12b[3] offn12b[2] offn12b[1] offn12b[0] eniob tailp VDD ckRxOffsetP
Xoffpinb net085 offp12b[3] offp12b[2] offp12b[1] offp12b[0] eniob tailp VDD ckRxOffsetP
.ends cmos12iAmpCore
** End of subcircuit definition.

** Library name: sclib_lvt
** Cell name: sc_nand2x2l
** View name: schematic

.subckt sc_nand2x2l a b y inh_vdd inh_vss
XNb net21 b inh_vss inh_vss nch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.023481 nrs=0.023481 sa=201.53800n sb=201.53800n sca=2.27315 scb=0.000356871 scc=5.23214e-07 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XNa y a net21 inh_vss nch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.023481 nrs=0.023481 sa=201.53800n sb=201.53800n sca=2.27315 scb=0.000356871 scc=5.23214e-07 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XPb y b inh_vdd inh_vdd pch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
XPa y a inh_vdd inh_vdd pch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
.ends sc_nand2x2l
** End of subcircuit definition.

** Library name: clk
** Cell name: DamNcap2x2_12
** View name: schematic

.subckt DamNcap2x2_12 minus plus
XC1 plus minus nmoscap_12 lr=2u wr=2u multi=1
.ends DamNcap2x2_12
** End of subcircuit definition.

** Library name: io
** Cell name: ckRxLSBias
** View name: schematic

.subckt ckRxLSBias en enb vbiasn vbiasp inh_vdd inh_vss
XM1 net26 enb inh_vdd inh_vdd pch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
XM0 vbiasp en inh_vdd inh_vdd pch_lvt_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
XP0 vbiasp vbiasp inh_vdd inh_vdd pch_lvt_mac l=150.0n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=230.068n sb=230.068n sca=10.4031 scb=0.00915566 scc=0.000801174 sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=179.221n spa1=178.832n spa2=175.961n spa3=177.655n sap=197.247n spba=235.815n spba1=242.211n enx=1.34301u enx1=1.33728u eny=383.886n eny1=216.004n eny2=305.235n rex=4.32095u rey=940.027n dfm_flag=0 sapb=244.813n sa5=235.841n sa6=331.192n sodx=140.0n sodx1=256.383n sodx2=883.875n sody=711.54n
XC0 inh_vss vbiasn DamNcap2x2_12
**Series configuration of R5
XXR5_1__dmy0 net26 XR5_1__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_2__dmy0 XR5_1__dmy0 XR5_2__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_3__dmy0 XR5_2__dmy0 XR5_3__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_4__dmy0 XR5_3__dmy0 XR5_4__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_5__dmy0 XR5_4__dmy0 XR5_5__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_6__dmy0 XR5_5__dmy0 XR5_6__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_7__dmy0 XR5_6__dmy0 XR5_7__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_8__dmy0 XR5_7__dmy0 XR5_8__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_9__dmy0 XR5_8__dmy0 XR5_9__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_10__dmy0 XR5_9__dmy0 XR5_10__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_11__dmy0 XR5_10__dmy0 XR5_11__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_12__dmy0 XR5_11__dmy0 XR5_12__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_13__dmy0 XR5_12__dmy0 XR5_13__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_14__dmy0 XR5_13__dmy0 XR5_14__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_15__dmy0 XR5_14__dmy0 XR5_15__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_16__dmy0 XR5_15__dmy0 XR5_16__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_17__dmy0 XR5_16__dmy0 XR5_17__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_18__dmy0 XR5_17__dmy0 XR5_18__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_19__dmy0 XR5_18__dmy0 XR5_19__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR5_20__dmy0 XR5_19__dmy0 vbiasn inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
**End of R5

**Series configuration of R4
XXR4_1__dmy0 vbiasp XR4_1__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_2__dmy0 XR4_1__dmy0 XR4_2__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_3__dmy0 XR4_2__dmy0 XR4_3__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_4__dmy0 XR4_3__dmy0 XR4_4__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_5__dmy0 XR4_4__dmy0 XR4_5__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_6__dmy0 XR4_5__dmy0 XR4_6__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_7__dmy0 XR4_6__dmy0 XR4_7__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_8__dmy0 XR4_7__dmy0 XR4_8__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_9__dmy0 XR4_8__dmy0 XR4_9__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_10__dmy0 XR4_9__dmy0 XR4_10__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_11__dmy0 XR4_10__dmy0 XR4_11__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_12__dmy0 XR4_11__dmy0 XR4_12__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_13__dmy0 XR4_12__dmy0 XR4_13__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_14__dmy0 XR4_13__dmy0 XR4_14__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_15__dmy0 XR4_14__dmy0 XR4_15__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_16__dmy0 XR4_15__dmy0 XR4_16__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_17__dmy0 XR4_16__dmy0 XR4_17__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_18__dmy0 XR4_17__dmy0 XR4_18__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_19__dmy0 XR4_18__dmy0 XR4_19__dmy0 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
XXR4_20__dmy0 XR4_19__dmy0 net29 inh_vss rppolywo_m lr=1.8u wr=1.8u multi=1 m=1
**End of R4

XM3 vbiasn enb inh_vss inh_vss nch_lvt_mac l=40n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=201.53800n sb=201.53800n sca=2.81171 scb=0.000664299 scc=1.04238e-06 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XM2 vbiasn vbiasn inh_vss inh_vss nch_lvt_mac l=150.0n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=230.068n sb=230.068n sca=2.76296 scb=0.000664288 scc=1.04238e-06 sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=179.221n spa1=178.832n spa2=175.961n spa3=177.655n sap=197.247n spba=235.815n spba1=242.211n enx=2.14718u enx1=2.14386u eny=1.00253u eny1=799.107n eny2=967.619n rex=4.18109u rey=1.86012u dfm_flag=0 sapb=244.813n sa5=235.841n sa6=331.192n sodx=140.0n sodx1=256.383n sodx2=883.875n sody=901.742n
XN0 net29 en inh_vss inh_vss nch_lvt_mac l=40n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=201.53800n sb=201.53800n sca=2.81171 scb=0.000664299 scc=1.04238e-06 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XM9 inh_vdd vbiasp inh_vdd inh_vdd pch_12_mac l=1u w=4.8u multi=1 nf=4 sd=160.0n ad=3.84e-13 as=5.28e-13 pd=5.44u ps=8.08u nrd=0.009075 nrs=0.009075 sa=982.244n sb=982.244n sa1=280.201n sa2=716.688n sa3=702.09n sa4=467.401n sb1=280.201n sb2=716.688n sb3=702.09n spa=162.463n spa1=162.444n spa2=162.362n spa3=162.458n sap=237.671n spba=305.922n spba1=367.073n dfm_flag=0 sapb=279.391n
.ends ckRxLSBias
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_invx2r
** View name: schematic

.subckt sc_invx2r a y inh_vdd inh_vss
XP0 y a inh_vdd inh_vdd pch_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
XN0 y a inh_vss inh_vss nch_mac l=40n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=201.53800n sb=201.53800n sca=2.81171 scb=0.000664299 scc=1.04238e-06 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
.ends sc_invx2r
** End of subcircuit definition.

** Library name: sclib_lvt
** Cell name: sc_nor2x2l
** View name: schematic

.subckt sc_nor2x2l a b y inh_vdd inh_vss
XNb y b inh_vss inh_vss nch_lvt_mac l=40n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=201.53800n sb=201.53800n sca=2.81171 scb=0.000664299 scc=1.04238e-06 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XNa y a inh_vss inh_vss nch_lvt_mac l=40n w=660.0n multi=1 nf=2 sd=160.0n ad=5.28e-14 as=9.24e-14 pd=980.0n ps=1.88u nrd=0.046963 nrs=0.046963 sa=201.53800n sb=201.53800n sca=2.81171 scb=0.000664299 scc=1.04238e-06 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=2.09649u enx1=2.09524u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.10544u rey=1.83014u dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=901.74200n
XPa y a net7 inh_vdd pch_lvt_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.7800n sb=309.7800n sca=10.2911 scb=0.00915362 scc=0.000801174 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=1.47532u enx1=1.46621u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.50641u rey=921.12900n dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=711.5400n
XPb net7 b inh_vdd inh_vdd pch_lvt_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.7800n sb=309.7800n sca=10.2911 scb=0.00915362 scc=0.000801174 sa1=217.49500n sa2=295.52600n sa3=447.84900n sa4=301.56200n sb1=217.49500n sb2=295.52600n sb3=447.84900n spa=169.42700n spa1=169.15200n spa2=167.14600n spa3=167.93300n sap=213.44600n spba=191.30700n spba1=193.11400n enx=1.47532u enx1=1.46621u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.50641u rey=921.12900n dfm_flag=0 sapb=245.13100n sa5=337.83200n sa6=438.67900n sodx=140.0n sodx1=304.44100n sodx2=947.8700n sody=711.5400n
.ends sc_nor2x2l
** End of subcircuit definition.

** Library name: io
** Cell name: od12iLevelShift
** View name: schematic

.subckt od12iLevelShift inn inp out outb rxen inh_vdd inh_vss
XM26 xn xn net065 inh_vss nch_lvt_mac l=150.0n w=1.2u multi=1 nf=2 sd=160.0n ad=9.6e-14 as=1.68e-13 pd=1.52u ps=2.96u nrd=0.021347 nrs=0.021347 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM28 xp xp net062 inh_vss nch_lvt_mac l=150.0n w=1.2u multi=1 nf=2 sd=160.0n ad=9.6e-14 as=1.68e-13 pd=1.52u ps=2.96u nrd=0.021347 nrs=0.021347 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM7 net065 xn inh_vss inh_vss nch_lvt_mac l=150.0n w=1.2u multi=1 nf=2 sd=160.0n ad=9.6e-14 as=1.68e-13 pd=1.52u ps=2.96u nrd=0.021347 nrs=0.021347 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM6 net062 xp inh_vss inh_vss nch_lvt_mac l=150.0n w=1.2u multi=1 nf=2 sd=160.0n ad=9.6e-14 as=1.68e-13 pd=1.52u ps=2.96u nrd=0.021347 nrs=0.021347 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM23 xn xp inh_vss inh_vss nch_lvt_mac l=40n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XM22 xp xn inh_vss inh_vss nch_lvt_mac l=40n w=300n multi=1 nf=1 sd=160.0n ad=4.2e-14 as=4.2e-14 pd=880.0n ps=880.0n nrd=0.068156 nrs=0.068156 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XM10 mirn inn net70 inh_vss nch_lvt_mac l=150.0n w=1u multi=1 nf=1 sd=160.0n ad=1.4e-13 as=1.4e-13 pd=2.28u ps=2.28u nrd=0.018546 nrs=0.018546 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM9 mirp inp net70 inh_vss nch_lvt_mac l=150.0n w=1u multi=1 nf=1 sd=160.0n ad=1.4e-13 as=1.4e-13 pd=2.28u ps=2.28u nrd=0.018546 nrs=0.018546 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM8 net70 vbiasn net113 inh_vss nch_lvt_mac l=150.0n w=2u multi=1 nf=4 sd=160.0n ad=1.6e-13 as=2.2e-13 pd=2.64u ps=3.88u nrd=0.018100 nrs=0.018100 sa=388.666n sb=388.666n sa1=227.236n sa2=354.562n sa3=541.173n sa4=345.184n sb1=227.236n sb2=354.562n sb3=541.173n spa=162.463n spa1=162.444n spa2=162.298n spa3=162.385n sap=212.983n spba=222.403n spba1=228.634n dfm_flag=0 sapb=266.153n
XM42 net113 en inh_vss inh_vss nch_lvt_mac l=40n w=16.0u multi=1 nf=16 sd=160.0n ad=1.28e-12 as=1.4e-12 pd=18.56u ps=20.8u nrd=0.001865 nrs=0.001865 sa=831.895n sb=831.895n sa1=346.58n sa2=654.425n sa3=889.782n sa4=800.916n sb1=346.58n sb2=654.425n sb3=889.782n spa=162.323n spa1=162.241n spa2=161.675n spa3=161.889n sap=287.862n spba=182.48n spba1=184.294n dfm_flag=0 sapb=279.467n
XM37 net112 enb inh_vdd inh_vdd pch_lvt_mac l=40n w=16.0u multi=1 nf=16 sd=160.0n ad=1.28e-12 as=1.4e-12 pd=18.56u ps=20.8u nrd=0.002769 nrs=0.002769 sa=831.895n sb=831.895n sa1=346.58n sa2=654.425n sa3=889.782n sa4=800.916n sb1=346.58n sb2=654.425n sb3=889.782n spa=162.323n spa1=162.241n spa2=161.675n spa3=161.889n sap=287.862n spba=182.48n spba1=184.294n dfm_flag=0 sapb=279.467n
XM35 tail vbiasp net112 inh_vdd pch_lvt_mac l=150.0n w=12.0u multi=1 nf=12 sd=160.0n ad=9.6e-13 as=1.08e-12 pd=13.92u ps=16.16u nrd=0.003643 nrs=0.003643 sa=919.751n sb=919.751n sa1=333.986n sa2=697.086n sa3=908.018n sa4=792.988n sb1=333.986n sb2=697.086n sb3=908.018n spa=160.818n spa1=160.811n spa2=160.753n spa3=160.787n sap=279.227n spba=229.023n spba1=234.869n dfm_flag=0 sapb=338.372n
XM16 xn mirn inh_vdd inh_vdd pch_lvt_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM15 mirn mirn inh_vdd inh_vdd pch_lvt_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM19 xp mirp inh_vdd inh_vdd pch_lvt_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM17 mirp mirp inh_vdd inh_vdd pch_lvt_mac l=150.0n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=170.0n spa1=170.0n spa2=170.0n spa3=170.0n sap=160.462n spba=201.742n spba1=208.507n dfm_flag=0 sapb=197.628n
XM34 xn inp tail inh_vdd pch_lvt_mac l=150.0n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM33 xp inn tail inh_vdd pch_lvt_mac l=150.0n w=2u multi=1 nf=2 sd=160.0n ad=1.6e-13 as=2.8e-13 pd=2.32u ps=4.56u nrd=0.017261 nrs=0.017261 sa=230.068n sb=230.068n sa1=177.935n sa2=223.401n sa3=331.644n sa4=213.865n sb1=177.935n sb2=223.401n sb3=331.644n spa=164.95n spa1=164.925n spa2=164.723n spa3=164.844n sap=182.796n spba=214.512n spba1=221.072n dfm_flag=0 sapb=229.376n
XM41 mirn en inh_vdd inh_vdd pch_lvt_mac l=40n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XM39 mirp en inh_vdd inh_vdd pch_lvt_mac l=40n w=500n multi=1 nf=1 sd=160.0n ad=7e-14 as=7e-14 pd=1.28u ps=1.28u nrd=0.075032 nrs=0.075032 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XU4 net067 out inh_vdd inh_vss sc_invx2l
XU3 net068 outb inh_vdd inh_vss sc_invx2l
XU6 crossn net068 inh_vdd inh_vss sc_invx2l
XU11 crossp net067 inh_vdd inh_vss sc_invx2l
XM27 crossp crossn net108 inh_vss nch_hvt_mac l=40n w=330.0n multi=1 nf=1 sd=160.0n ad=4.62e-14 as=4.62e-14 pd=940.0n ps=940.0n nrd=0.074972 nrs=0.074972 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XM43 crossn crossp net105 inh_vss nch_hvt_mac l=40n w=330.0n multi=1 nf=1 sd=160.0n ad=4.62e-14 as=4.62e-14 pd=940.0n ps=940.0n nrd=0.074972 nrs=0.074972 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XM31 net108 en inh_vss inh_vss nch_hvt_mac l=40n w=1.32u multi=1 nf=4 sd=160.0n ad=1.056e-13 as=1.452e-13 pd=1.96u ps=2.86u nrd=0.026879 nrs=0.026879 sa=309.78n sb=309.78n sa1=217.495n sa2=295.526n sa3=447.849n sa4=301.562n sb1=217.495n sb2=295.526n sb3=447.849n spa=169.427n spa1=169.152n spa2=167.146n spa3=167.933n sap=213.446n spba=187.09n spba1=188.941n dfm_flag=0 sapb=217.266n
XM38 net105 en inh_vss inh_vss nch_hvt_mac l=40n w=1.32u multi=1 nf=4 sd=160.0n ad=1.056e-13 as=1.452e-13 pd=1.96u ps=2.86u nrd=0.026879 nrs=0.026879 sa=309.78n sb=309.78n sa1=217.495n sa2=295.526n sa3=447.849n sa4=301.562n sb1=217.495n sb2=295.526n sb3=447.849n spa=169.427n spa1=169.152n spa2=167.146n spa3=167.933n sap=213.446n spba=187.09n spba1=188.941n dfm_flag=0 sapb=217.266n
XM30 net109 enb inh_vdd inh_vdd pch_hvt_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.78n sb=309.78n sa1=217.495n sa2=295.526n sa3=447.849n sa4=301.562n sb1=217.495n sb2=295.526n sb3=447.849n spa=169.427n spa1=169.152n spa2=167.146n spa3=167.933n sap=213.446n spba=187.09n spba1=188.941n dfm_flag=0 sapb=217.266n
XM32 net106 enb inh_vdd inh_vdd pch_hvt_mac l=40n w=2.64u multi=1 nf=4 sd=160.0n ad=2.112e-13 as=2.904e-13 pd=3.28u ps=4.84u nrd=0.019965 nrs=0.019965 sa=309.78n sb=309.78n sa1=217.495n sa2=295.526n sa3=447.849n sa4=301.562n sb1=217.495n sb2=295.526n sb3=447.849n spa=169.427n spa1=169.152n spa2=167.146n spa3=167.933n sap=213.446n spba=187.09n spba1=188.941n dfm_flag=0 sapb=217.266n
XM29 crossp crossn net109 inh_vdd pch_hvt_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.055711 nrs=0.055711 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XM44 crossn crossp net106 inh_vdd pch_hvt_mac l=40n w=660.0n multi=1 nf=1 sd=160.0n ad=9.24e-14 as=9.24e-14 pd=1.6u ps=1.6u nrd=0.055711 nrs=0.055711 sa=140.0n sb=140.0n sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.708n spba=191.625n spba1=193.742n dfm_flag=0 sapb=170.157n
XU5 xn en crossp inh_vdd inh_vss sc_nand2x2l
XI83 en enb vbiasn vbiasp inh_vdd inh_vss ckRxLSBias
XU1 enb en inh_vdd inh_vss sc_invx2r
XU0 rxen enb inh_vdd inh_vss sc_invx2r
XU15 xp enb crossn inh_vdd inh_vss sc_nor2x2l
.ends od12iLevelShift
** End of subcircuit definition.

** Library name: io
** Cell name: DamNcap12
** View name: schematic

.subckt DamNcap12 minus plus
XC1 plus minus nmoscap_12 lr=2u wr=2u multi=1
.ends DamNcap12
** End of subcircuit definition.

** Library name: io
** Cell name: od12iAmp
** View name: schematic

.subckt od12iAmp VDD in inb offcalen offtrim[4] offtrim[3] offtrim[2] offtrim[1] offtrim[0] out pd_rxen rxen inh_vdd inh_vss
XM46 xgateinp offcalenb in inh_vss nch_12_mac l=70n w=8u multi=1 nf=8 sd=160.0n ad=6.4e-13 as=7.6e-13 pd=9.28u ps=11.52u nrd=0.003584 nrs=0.003584 sa=545.317n sb=545.317n sa1=279.161n sa2=472.77n sa3=691.591n sa4=511.925n sb1=279.161n sb2=472.77n sb3=691.591n spa=164.669n spa1=164.513n spa2=163.442n spa3=163.91n sap=251.492n spba=198.962n spba1=201.956n dfm_flag=0 sapb=276.979n
XM0 xgateinn offcalenb inb inh_vss nch_12_mac l=70n w=8u multi=1 nf=8 sd=160.0n ad=6.4e-13 as=7.6e-13 pd=9.28u ps=11.52u nrd=0.003584 nrs=0.003584 sa=545.317n sb=545.317n sa1=279.161n sa2=472.77n sa3=691.591n sa4=511.925n sb1=279.161n sb2=472.77n sb3=691.591n spa=164.669n spa1=164.513n spa2=163.442n spa3=163.91n sap=251.492n spba=198.962n spba1=201.956n dfm_flag=0 sapb=276.979n
XM1 xgateinn offcalenbb inb VDD pch_12_mac l=70n w=16.0u multi=1 nf=16 sd=160.0n ad=1.28e-12 as=1.4e-12 pd=18.56u ps=20.8u nrd=0.002769 nrs=0.002769 sa=921.475n sb=921.475n sa1=353.378n sa2=702.745n sa3=930.644n sa4=860.283n sb1=353.378n sb2=702.745n sb3=930.644n spa=162.323n spa1=162.241n spa2=161.686n spa3=161.926n sap=295.864n spba=197.434n spba1=200.411n dfm_flag=0 sapb=316.19n
XM48 xgateinp offcalenbb in VDD pch_12_mac l=70n w=16.0u multi=1 nf=16 sd=160.0n ad=1.28e-12 as=1.4e-12 pd=18.56u ps=20.8u nrd=0.002769 nrs=0.002769 sa=921.475n sb=921.475n sa1=353.378n sa2=702.745n sa3=930.644n sa4=860.283n sb1=353.378n sb2=702.745n sb3=930.644n spa=162.323n spa1=162.241n spa2=161.686n spa3=161.926n sap=295.864n spba=197.434n spba1=200.411n dfm_flag=0 sapb=316.19n
XI81 VDD xgateinp xgateinn offcalen offcalenb offcalenbb offtrim[4] offtrim[3] offtrim[2] offtrim[1] offtrim[0] on op pd_rxen rxen inh_vdd inh_vss cmos12iAmpCore
XI84 on op out outb rxen inh_vdd inh_vss od12iLevelShift
XI80_10_ xgateinn inb DamNcap12
XI80_9_ xgateinn inb DamNcap12
XI80_8_ xgateinn inb DamNcap12
XI80_7_ xgateinn inb DamNcap12
XI80_6_ xgateinn inb DamNcap12
XI80_5_ xgateinn inb DamNcap12
XI80_4_ xgateinn inb DamNcap12
XI80_3_ xgateinn inb DamNcap12
XI80_2_ xgateinn inb DamNcap12
XI80_1_ xgateinn inb DamNcap12
XI80_0_ xgateinn inb DamNcap12
XI95_10_ xgateinp in DamNcap12
XI95_9_ xgateinp in DamNcap12
XI95_8_ xgateinp in DamNcap12
XI95_7_ xgateinp in DamNcap12
XI95_6_ xgateinp in DamNcap12
XI95_5_ xgateinp in DamNcap12
XI95_4_ xgateinp in DamNcap12
XI95_3_ xgateinp in DamNcap12
XI95_2_ xgateinp in DamNcap12
XI95_1_ xgateinp in DamNcap12
XI95_0_ xgateinp in DamNcap12
.ends od12iAmp
** End of subcircuit definition.

** Library name: clk
** Cell name: cxfr_12
** View name: schematic

.subckt cxfr_12 D GN GP S inh_vdd inh_vss
XM1 S GN D inh_vss nch_12_mac l=70n w=4u multi=1 nf=8 sd=160.0n ad=3.2e-13 as=3.8e-13 pd=5.28u ps=6.52u nrd=0.009756 nrs=0.009756 sa=545.31700n sb=545.31700n sa1=279.16100n sa2=472.7700n sa3=691.59100n sa4=511.92500n sb1=279.16100n sb2=472.7700n sb3=691.59100n spa=164.66900n spa1=164.51300n spa2=163.44200n spa3=163.9100n sap=251.49200n spba=198.96200n spba1=201.95600n dfm_flag=0 sapb=276.97900n
XM5 S GP D inh_vdd pch_12_mac l=70n w=8u multi=1 nf=8 sd=160.0n ad=6.4e-13 as=7.6e-13 pd=9.28u ps=11.520u nrd=0.005323 nrs=0.005323 sa=545.31700n sb=545.31700n sca=4.26466 scb=0.00123141 scc=4.96875e-06 sa1=279.16100n sa2=472.7700n sa3=691.59100n sa4=511.92500n sb1=279.16100n sb2=472.7700n sb3=691.59100n spa=164.66900n spa1=164.51300n spa2=163.44200n spa3=163.9100n sap=251.49200n spba=198.96200n spba1=201.95600n enx=1.56827u enx1=1.51721u eny=520.0n eny1=520.0n eny2=520.0n rex=2.51924u rey=1.53982u dfm_flag=0 sapb=276.97900n sa5=600.14900n sa6=668.36100n sodx=490.0n sodx1=628.1800n sodx2=1.37524u sody=260.0n
.ends cxfr_12
** End of subcircuit definition.

** Library name: sclib_rvt
** Cell name: sc_tiehilox1r
** View name: schematic

.subckt sc_tiehilox1r tiehi tielo inh_vdd inh_vss
XN0 tielo tielo inh_vss inh_vss nch_mac l=40n w=330.0n multi=1 nf=1 sd=160.0n ad=4.62e-14 as=4.62e-14 pd=940.0n ps=940.0n nrd=0.074972 nrs=0.074972 sa=140.0n sb=140.0n sca=2.86377 scb=0.000664318 scc=1.04238e-06 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=2u enx1=2u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.0111u rey=1.83014u dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=901.74200n
XM0 tielo tiehi inh_vss inh_vss nch_mac l=40n w=330.0n multi=1 nf=1 sd=160.0n ad=4.62e-14 as=4.62e-14 pd=940.0n ps=940.0n nrd=0.074972 nrs=0.074972 sa=140.0n sb=140.0n sca=2.86377 scb=0.000664318 scc=1.04238e-06 sa1=140.0n sa2=140.0n sa3=140.0n sa4=140.0n sb1=140.0n sb2=140.0n sb3=140.0n spa=200n spa1=200n spa2=200n spa3=200n sap=178.70800n spba=221.26900n spba1=223.10500n enx=2u enx1=2u eny=977.48100n eny1=797.90800n eny2=967.61900n rex=4.0111u rey=1.83014u dfm_flag=0 sapb=210.88900n sa5=140.0n sa6=140.0n sodx=140.0n sodx1=206.67400n sodx2=831.18300n sody=901.74200n
XP0 tiehi tielo inh_vdd inh_vdd pch_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
.ends sc_tiehilox1r
** End of subcircuit definition.

** Library name: io
** Cell name: od12i
** View name: schematic
XC0_5_ vref pwrn nmoscap_18 lr=2u wr=2u multi=1
XC0_4_ vref pwrn nmoscap_18 lr=2u wr=2u multi=1
XC0_3_ vref pwrn nmoscap_18 lr=2u wr=2u multi=1
XC0_2_ vref pwrn nmoscap_18 lr=2u wr=2u multi=1
XC0_1_ vref pwrn nmoscap_18 lr=2u wr=2u multi=1
XC0_0_ vref pwrn nmoscap_18 lr=2u wr=2u multi=1
XP0 offout rxenbb VREG VREG pch_mac l=40n w=1.32u multi=1 nf=2 sd=160.0n ad=1.056e-13 as=1.848e-13 pd=1.64u ps=3.2u nrd=0.034889 nrs=0.034889 sa=201.53800n sb=201.53800n sca=10.5905 scb=0.00916442 scc=0.000801174 sa1=173.19800n sa2=199.0600n sa3=267.47200n sa4=198.52500n sb1=173.19800n sb2=199.0600n sb3=267.47200n spa=179.22100n spa1=178.83200n spa2=175.72700n spa3=177.01700n sap=190.75200n spba=207.68900n spba1=209.41200n enx=1.2944u enx1=1.29231u eny=328.42100n eny1=214.58900n eny2=305.23500n rex=4.23096u rey=921.12900n dfm_flag=0 sapb=229.99700n sa5=211.51900n sa6=266.42600n sodx=140.0n sodx1=244.25600n sodx2=857.56100n sody=711.5400n
XI12 esel_odvref selbiasH selbiasL VDD VREG pwrn cmos12oLS
XI22 rxen net018 pd VDD VREG pwrn cmos12oLS
XU2 offout buf1 VREG pwrn sc_invx4r
XU5 buf2 rxoutB VREG pwrn sc_invx96r
XU4 buf1 buf2 VREG pwrn sc_invx20r
XU0 offout rxenbb rxenb lsout VREG pwrn cxfr m=1 nl=40n nw=330.0n nf=4 pl=40n pw=660.0n pf=4
XI5 vrefsel[0] vrefsel[1] vrefsel[2] vrefsel[3] vref pd VDD VREG pwrn vrefgen_error_in
XI9 pad VDD pwrn eEsdhbm
XI8 pad VDD pwrn eEsdhbm
XI11 pad in_esd VDD pwrn eEsdcdm
XI19 VDD in_esd vref net012 net012 net012 net012 net012 net012 lsout rxen rxen VREG pwrn od12iAmp
Xswibias emeas_odvref selbiasH selbiasL vref VDD pwrn cxfr_12
XI18_1_ net028[0] net012 VREG pwrn sc_tiehilox1r
XI18_0_ net028[1] net012 VREG pwrn sc_tiehilox1r
XU1 rxen rxenb VREG pwrn sc_invx1r
XU3 rxenb rxenbb VREG pwrn sc_invx1r
.ends od12i
** End of subcircuit definition.
