v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1820 -1050 1850 -1050 { lab=x1r}
N 1820 -1030 1850 -1030 { lab=x1p}
N 1630 -920 1630 -900 { lab=2}
N 1630 -740 1630 -720 { lab=3}
N 1820 -870 1850 -870 { lab=x2r}
N 1820 -850 1850 -850 { lab=x2p}
N 1820 -690 1850 -690 { lab=x3r}
N 1820 -670 1850 -670 { lab=x3p}
N 1690 -740 1720 -740 { lab=3}
N 1720 -740 1720 -710 { lab=3}
N 1720 -920 1720 -890 { lab=2}
N 1690 -920 1720 -920 { lab=2}
N 1690 -1100 1720 -1100 { lab=1}
N 1720 -1100 1720 -1070 { lab=1}
N 1510 -860 1580 -860 { lab=2}
N 1580 -920 1580 -860 { lab=2}
N 1580 -920 1630 -920 { lab=2}
N 1510 -880 1560 -880 { lab=1}
N 1560 -1100 1560 -880 { lab=1}
N 1560 -1100 1630 -1100 { lab=1}
N 1560 -740 1630 -740 { lab=3}
N 1560 -840 1560 -740 { lab=3}
N 1510 -840 1560 -840 { lab=3}
N 1630 -1100 1690 -1100 { lab=1}
N 1630 -920 1690 -920 { lab=2}
N 1630 -740 1690 -740 { lab=3}
N 1390 -970 1390 -930 { lab=#net1}
N 1390 -790 1390 -750 { lab=#net2}
N 1630 -1100 1630 -1080 { lab=1}
N 1370 -950 1390 -950 { lab=#net1}
N 1370 -770 1390 -770 { lab=#net2}
C {devices/gnd.sym} 1630 -1020 0 1 {name=l2 lab=GND}
C {devices/code.sym} 1960 -970 0 0 {name="simulation" only_toplevel="false" value="

.options method=gear
.options savecurrents
.save all

** Check the two ac lines below for being equal!
.control
set noaskquit
set filetype=ascii

alter @c1[c] = 10p
alter @c2[c] = 10p
alter @c3[c] = 10p

** set input and output

alter R.x1.R1 = 1e-6
alter R.x1.R2 = 1e12

alter R.x2.R1 = 1e12
alter R.x2.R2 = 1e-6
alter R.x3.R1 = 1e12
alter R.x3.R2 = 1e-6

*** measurement for s11 and s21
op
** first ac measurement (change this line only together with following ac line)
ac lin 1000 1Meg 2G

**

** switch input and output

alter R.x2.R1 = 1e-6
alter R.x2.R2 = 1e12

alter R.x1.R1 = 1e12
alter R.x1.R2 = 1e-6
alter R.x3.R1 = 1e12
alter R.x3.R2 = 1e-6

*** measurement for s12 and s22
op
** second ac measurement (change this line only together with ac line above)
ac lin 1000 1Meg 2G

**

** switch input and output

alter R.x3.R1 = 1e-6
alter R.x3.R2 = 1e12

alter R.x1.R1 = 1e12
alter R.x1.R2 = 1e-6
alter R.x2.R1 = 1e12
alter R.x2.R2 = 1e-6

*** measurement for s12 and s22
op
** second ac measurement (change this line only together with ac line above)
ac lin 1000 1Meg 2G

**

** set s-param
let s11 = ac1.x1r
let s21 = ac1.x2p
let s31 = ac1.x3p

let s12 = ac2.x1p
let s22 = ac2.x2r
let s32 = ac2.x3p

let s13 = ac3.x1p
let s23 = ac3.x2p
let s33 = ac3.x3r

settype s-param s11 s21 s31 s12 s22 s32 s13 s23 s33


** set s-param db
let s11db = db(s11)
let s21db = db(s21)
let s31db = db(s31)

let s12db = db(s12)
let s22db = db(s22)
let s32db = db(s32)

let s13db = db(s13)
let s23db = db(s23)
let s33db = db(s33)

settype decibel s11db s21db s31db s12db s22db s32db s13db s23db s33db

** plot

plot xlog s11db s21db s31db
plot xlog s12db s22db s32db
plot xlog s13db s23db s33db

* gain
*plot xlog s12db s23db s31db

* isolation
*plot xlog s21db s32db s13db

* reflection
*plot xlog s11db s22db s33db

.endc
.end"}
C {devices/lab_pin.sym} 1850 -1050 0 1 {name=p1 lab=x1r}
C {devices/lab_pin.sym} 1850 -1030 0 1 {name=p2 lab=x1p}
C {devices/gnd.sym} 1630 -840 0 1 {name=l3 lab=GND}
C {devices/gnd.sym} 1630 -660 0 1 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1850 -870 0 1 {name=p3 lab=x2r}
C {devices/lab_pin.sym} 1850 -850 0 1 {name=p4 lab=x2p}
C {devices/lab_pin.sym} 1850 -690 0 1 {name=p5 lab=x3r}
C {devices/lab_pin.sym} 1850 -670 0 1 {name=p6 lab=x3p}
C {devices/lab_wire.sym} 1720 -740 0 1 {name=l4 sig_type=std_logic lab=3}
C {devices/lab_wire.sym} 1720 -920 0 1 {name=l8 sig_type=std_logic lab=2}
C {devices/lab_wire.sym} 1720 -1100 0 1 {name=l9 sig_type=std_logic lab=1}
C {devices/vsource.sym} 1390 -1000 2 0 {name=V1 value=5}
C {devices/gnd.sym} 1390 -1030 2 1 {name=l5 lab=GND}
C {devices/code_shown.sym} 1980 -760 0 0 {name="input libraries" only_toplevel="false" value="
.include /home/rsmarinho/circuits/lib/tl074.lib
.include /home/rsmarinho/circuits/lib/clc406.lib
.include /home/rsmarinho/circuits/lib/ths4500.lib"}
C {devices/vsource.sym} 1390 -720 2 0 {name=V2 value=5}
C {devices/gnd.sym} 1390 -690 0 1 {name=l1 lab=GND}
C {devices/capa.sym} 1630 -1050 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1630 -870 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1630 -690 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1310 -950 1 1 {name=l7 lab=GND}
C {devices/capa.sym} 1340 -950 1 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1310 -770 1 1 {name=l10 lab=GND}
C {devices/capa.sym} 1340 -770 1 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sparam/s_port.sym} 1820 -1020 0 1 {name=x1 Rbase=50 RS1=1e-6 RS2=1e12}
C {sparam/s_port.sym} 1820 -840 0 1 {name=x2 Rbase=50 RS1=1e-6 RS2=1e12}
C {sparam/s_port.sym} 1820 -660 0 1 {name=x3 Rbase=50 RS1=1e-6 RS2=1e12}
C {circulator/active_circulator.sym} 1430 -860 0 0 {name=x4}
C {devices/title.sym} 1430 -590 0 0 {name=l11 author="Rafael Marinho"}
