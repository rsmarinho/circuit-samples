v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 390 -290 390 -250 { lab=OUT}
N 390 -220 420 -220 { lab=0}
N 420 -220 420 -180 { lab=0}
N 390 -180 420 -180 { lab=0}
N 390 -320 420 -320 { lab=#net1}
N 420 -360 420 -320 { lab=#net1}
N 390 -360 420 -360 { lab=#net1}
N 320 -220 350 -220 { lab=IN}
N 320 -320 320 -220 { lab=IN}
N 320 -320 350 -320 { lab=IN}
N 390 -370 390 -350 { lab=#net1}
N 390 -190 390 -160 { lab=0}
N 280 -270 280 -240 { lab=IN}
N 280 -270 320 -270 { lab=IN}
N 280 -180 280 -160 { lab=0}
N 390 -440 390 -430 { lab=0}
C {devices/code.sym} 290 -110 0 0 {name=s1 
only_toplevel=false 
value="

* Include Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.tran 3p 600ps
.save all
"}
C {devices/lab_pin.sym} 390 -270 2 0 {name=l3 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 390 -160 2 0 {name=l4 sig_type=std_logic lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 370 -220 0 0 {name=M1
L=0.18
W=10
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=30
model=nfet_01v8
spiceprefix=X}
C {devices/vsource.sym} 390 -400 2 0 {name=V2 value=1.8}
C {devices/lab_pin.sym} 280 -160 2 0 {name=l1 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 390 -440 2 0 {name=l2 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 280 -270 0 0 {name=l5 sig_type=std_logic lab=IN}
C {devices/vsource.sym} 280 -210 0 1 {name=Vin value="pulse(0 1.8 100p 50p 50p 200p 500p)"}
C {sky130_fd_pr/pfet_01v8.sym} 370 -320 0 0 {name=M3
L=0.3
W=20
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
 nf=1}
