v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1430 -800 1470 -800 { lab=1}
N 1530 -800 1670 -800 { lab=2}
N 1430 -800 1430 -780 { lab=1}
N 1670 -800 1670 -780 { lab=2}
N 1770 -760 1800 -760 { lab=S22}
N 1770 -740 1800 -740 { lab=S21}
N 1300 -760 1330 -760 { lab=S11}
N 1300 -740 1330 -740 { lab=S12}
C {devices/gnd.sym} 1590 -740 0 0 {name=l2 lab=GND}
C {devices/code.sym} 2130 -700 0 0 {name="simulation" only_toplevel="false" value="
.options method=gear
.options savecurrents
.save all

** Check the two ac lines below for being equal!
.control
set noaskquit
set filetype=ascii

** set input and output

alter R.x1.R1 = 1e-6
alter R.x1.R2 = 1e12
alter R.x2.R1 = 1e12
alter R.x2.R2 = 1e-6

*** measurement for s11 and s21
op
** first ac measurement (change this line only together with following ac line)
ac lin 200 0.1G 7G

**

** switch input and output

alter R.x1.R1 = 1e12
alter R.x1.R2 = 1e-6
alter R.x2.R1 = 1e-6
alter R.x2.R2 = 1e12

*** measurement for s12 and s22
op
** second ac measurement (change this line only together with ac line above)
ac lin 200 0.1G 7G

**

let s11=ac1.s11
let s21=ac1.s21
let s22=ac2.s22
let s12=ac2.s12
settype s-param s11 s21 s22 s12

let P11=180*ph(s11)/pi
let P21=180*ph(s21)/pi
let P22=180*ph(S22)/pi
let P12=180*ph(S12)/pi
settype phase P11 P21 P22 P12

let s11db = db(s11)
let s21db = db(s21)
let s22db = db(s22)
let s12db = db(s12)
settype decibel S11db S21db S22db S12db

let d = ((1-s11)*(1-s22)-s12*s21)
let z11 = ((1+s11)*(1-s22)+s12*s21) / d
let z12 = 2*s12 / d
let z21 = 2*s21 / d
let z22 = ((1-s11)*(1+s22)+s12*s21) / d
settype impedance z11 z21 z22 z11


*plot s11db s21db s22db s12db
plot xlog s11db s21db s22db s12db
*plot P11 P21 P22 P12
*plot smithgrid s11 s21 s22 s12

*plot z11 z22
plot xlog real(z11) imag(z11)
plot xlog real(z22) imag(z22)

.endc
.end"}
C {devices/lab_wire.sym} 1450 -800 0 0 {name=l3 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 1550 -800 0 0 {name=l4 sig_type=std_logic lab=2}
C {devices/capa.sym} 1500 -800 3 0 {name=C1
m=1
value=3.6p
device=capacitor}
C {devices/ind.sym} 1590 -770 2 1 {name=L1
value=7n
device=inductor}
C {devices/lab_pin.sym} 1800 -760 0 1 {name=p3 lab=S22}
C {devices/lab_pin.sym} 1800 -740 0 1 {name=p6 lab=S21}
C {devices/lab_pin.sym} 1300 -760 0 0 {name=p1 lab=S11}
C {devices/lab_pin.sym} 1300 -740 0 0 {name=p2 lab=S12}
C {sparam/s_port.sym} 1330 -730 0 0 {name=x1 Rbase=50 RS1=1e-6 RS2=1e12}
C {sparam/s_port.sym} 1770 -730 0 1 {name=x2 Rbase=50 RS1=1e-6 RS2=1e12}
C {devices/title.sym} 1350 -510 0 0 {name=l11 author="Rafael Marinho"}
