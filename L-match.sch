v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1290 -1090 1330 -1090 { lab=1}
N 1290 -1030 1530 -1030 { lab=GND}
N 1290 -860 1530 -860 { lab=GND}
N 1390 -1090 1530 -1090 { lab=2}
N 1480 -920 1530 -920 { lab=4}
N 1290 -920 1420 -920 { lab=3}
C {devices/vsource.sym} 1290 -1060 0 1 {name=V value="1"}
C {devices/gnd.sym} 1290 -1030 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 1450 -920 3 0 {name=C2
m=1
value=3.6p
device=capacitor}
C {devices/ind.sym} 1370 -890 0 0 {name=L2
value=7n
device=inductor}
C {devices/res.sym} 1530 -890 0 1 {name=R2
value=50

device=resistor}
C {devices/code.sym} 2080 -810 0 0 {name="simulation" only_toplevel="false" value="

.option method=gear
.options savecurrents
.save all

.control
  tran 0.01ns 10ns
  alter @V[PULSE] [ 0 1 0 1ns ]
  alter @I[PULSE] [ 0 1 0 1ns ]

  ***
  alter @V[dc] 0 
  alter @V[acmag] 1
  alter @I[dc] 0 
  alter @I[acmag] 1
  ac lin 1001 100meg 10000meg

  ** impedance plot

.endc"}
C {devices/lab_wire.sym} 1310 -1090 0 0 {name=l3 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 1490 -1090 0 0 {name=l4 sig_type=std_logic lab=2}
C {devices/gnd.sym} 1290 -860 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 1360 -1090 3 0 {name=C1
m=1
value=3.6p
device=capacitor}
C {devices/ind.sym} 1450 -1060 2 1 {name=L1
value=7n
device=inductor}
C {devices/res.sym} 1530 -1060 0 1 {name=R1
value=50
device=resistor}
C {devices/isource.sym} 1290 -890 0 1 {name=I value="1"}
C {devices/lab_wire.sym} 1330 -920 0 0 {name=l6 sig_type=std_logic lab=3}
C {devices/lab_wire.sym} 1510 -920 0 0 {name=l5 sig_type=std_logic lab=4}
C {devices/title.sym} 1310 -610 0 0 {name=l11 author="Rafael Marinho"}
