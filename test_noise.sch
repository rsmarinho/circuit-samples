v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -110 200 -90 { lab=0}
N 200 -310 200 -170 { lab=1}
N 200 -310 320 -310 { lab=1}
N 320 -310 320 -290 { lab=1}
N 200 -90 320 -90 { lab=0}
N 320 -110 320 -90 { lab=0}
N 320 -230 320 -170 { lab=2}
C {devices/res.sym} 320 -140 0 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/code.sym} 390 -240 0 0 {name=s1 
only_toplevel=false 
value="

.control
noise v(2,0) vin dec 100 1 1k
setplot noise1
plot inoise_spectrum onoise_spectrum
.endc
"}
C {devices/lab_pin.sym} 320 -200 0 1 {name=l2 sig_type=std_logic lab=2}
C {devices/lab_pin.sym} 320 -90 2 0 {name=l4 sig_type=std_logic lab=0}
C {devices/res.sym} 320 -260 0 1 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 200 -280 0 1 {name=l1 sig_type=std_logic lab=1}
C {devices/vsource.sym} 200 -140 0 0 {name=vin value="dc 0 ac 1"}
