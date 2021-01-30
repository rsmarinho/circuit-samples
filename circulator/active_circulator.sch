v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {http://www.wenzel.com/wp-content/uploads/RFDesign3.pdf} 1200 -320 0 0 0.4 0.4 {}
N 1300 -530 1400 -530 { lab=#net1}
N 1300 -550 1300 -510 { lab=#net1}
N 1300 -450 1300 -430 { lab=GND}
N 1300 -740 1300 -610 { lab=#net2}
N 1300 -740 1310 -740 { lab=#net2}
N 1380 -740 1380 -730 { lab=port_1}
N 1370 -740 1440 -740 { lab=port_1}
N 1380 -670 1380 -570 { lab=#net3}
N 1380 -630 1420 -630 { lab=#net3}
N 1520 -630 1520 -550 { lab=#net4}
N 1480 -630 1520 -630 { lab=#net4}
N 1610 -530 1710 -530 { lab=#net5}
N 1610 -550 1610 -510 { lab=#net5}
N 1610 -450 1610 -430 { lab=GND}
N 1610 -740 1610 -610 { lab=#net4}
N 1610 -740 1620 -740 { lab=#net4}
N 1690 -740 1690 -730 { lab=port_2}
N 1680 -740 1750 -740 { lab=port_2}
N 1690 -670 1690 -570 { lab=#net6}
N 1690 -570 1710 -570 { lab=#net6}
N 1690 -630 1730 -630 { lab=#net6}
N 1830 -630 1830 -550 { lab=#net7}
N 1790 -630 1830 -630 { lab=#net7}
N 1490 -550 1550 -550 { lab=#net4}
N 1920 -530 2020 -530 { lab=#net8}
N 1920 -550 1920 -510 { lab=#net8}
N 1920 -450 1920 -430 { lab=GND}
N 1920 -740 1920 -610 { lab=#net7}
N 1920 -740 1930 -740 { lab=#net7}
N 2000 -740 2000 -730 { lab=port_3}
N 1990 -740 2060 -740 { lab=port_3}
N 2000 -670 2000 -570 { lab=#net9}
N 2000 -570 2020 -570 { lab=#net9}
N 2000 -630 2040 -630 { lab=#net9}
N 2140 -630 2140 -550 { lab=#net2}
N 2100 -630 2140 -630 { lab=#net2}
N 1800 -550 1860 -550 { lab=#net7}
N 2110 -550 2170 -550 { lab=#net2}
N 2170 -550 2170 -370 { lab=#net2}
N 1200 -740 1300 -740 { lab=#net2}
N 1440 -520 1440 -500 { lab=veee}
N 1440 -600 1440 -580 { lab=vccc}
N 1750 -520 1750 -500 { lab=veee}
N 1750 -600 1750 -580 { lab=vccc}
N 2060 -520 2060 -500 { lab=veee}
N 2060 -600 2060 -580 { lab=vccc}
N 2290 -380 2310 -380 { lab=veee}
N 2290 -420 2310 -420 { lab=vccc}
N 1380 -570 1400 -570 { lab=#net3}
N 1860 -740 1920 -740 { lab=#net7}
N 1860 -740 1860 -550 { lab=#net7}
N 1550 -740 1550 -550 { lab=#net4}
N 1550 -740 1610 -740 { lab=#net4}
N 1200 -370 2170 -370 { lab=#net2}
N 1200 -740 1200 -370 { lab=#net2}
C {devices/res.sym} 1380 -700 0 1 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1300 -580 0 1 {name=R2
value=323.6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1300 -480 0 1 {name=R3
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1450 -630 3 1 {name=R4
value=323.6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1340 -740 3 1 {name=R5
value=100
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1300 -430 0 0 {name=l1 lab=GND}
C {devices/res.sym} 1690 -700 0 1 {name=R6
value=150
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1610 -580 0 1 {name=R7
value=485.4
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1610 -480 0 1 {name=R8
value=150
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1760 -630 3 1 {name=R9
value=485.4
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1650 -740 3 1 {name=R10
value=150
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1610 -430 0 0 {name=l3 lab=GND}
C {devices/res.sym} 2000 -700 0 1 {name=R11
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1920 -580 0 1 {name=R12
value=323.6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1920 -480 0 1 {name=R13
value=100
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 2070 -630 3 1 {name=R14
value=323.6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 1960 -740 3 1 {name=R15
value=100
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 1920 -430 0 0 {name=l5 lab=GND}
C {devices/iopin.sym} 1430 -740 0 0 {name=p1 lab=port_1}
C {devices/iopin.sym} 1740 -740 0 0 {name=p2 lab=port_2}
C {devices/iopin.sym} 2050 -740 0 0 {name=p3 lab=port_3}
C {devices/iopin.sym} 2300 -420 0 0 {name=p4 lab=vccc}
C {devices/lab_wire.sym} 1440 -600 2 0 {name=l7 sig_type=std_logic lab=vccc}
C {devices/iopin.sym} 2300 -380 0 0 {name=p5 lab=veee}
C {devices/lab_wire.sym} 1440 -500 3 0 {name=l2 sig_type=std_logic lab=veee}
C {devices/lab_wire.sym} 1750 -500 3 0 {name=l4 sig_type=std_logic lab=veee}
C {devices/lab_wire.sym} 2060 -500 3 0 {name=l6 sig_type=std_logic lab=veee}
C {devices/lab_wire.sym} 2290 -380 0 0 {name=l8 sig_type=std_logic lab=veee}
C {devices/lab_wire.sym} 1750 -600 2 0 {name=l9 sig_type=std_logic lab=vccc}
C {devices/lab_wire.sym} 2060 -600 2 0 {name=l10 sig_type=std_logic lab=vccc}
C {devices/lab_wire.sym} 2290 -420 0 0 {name=l11 sig_type=std_logic lab=vccc}
C {lib/clc406.sym} 1430 -550 0 0 {name=x1}
C {lib/clc406.sym} 1740 -550 0 0 {name=x2}
C {lib/clc406.sym} 2050 -550 0 0 {name=x3}
C {devices/title.sym} 1360 -220 0 0 {name=l12 author="Rafael Marinho"}
