v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1650 -920 1690 -920 { lab=3}
N 1550 -920 1590 -920 { lab=2}
N 1450 -920 1490 -920 { lab=1}
N 1450 -860 1690 -860 { lab=GND}
N 1450 -690 1690 -690 { lab=GND}
N 1680 -750 1690 -750 { lab=#net1}
N 1450 -750 1620 -750 { lab=4}
C {devices/vsource.sym} 1450 -890 0 1 {name=V value="1"}
C {devices/gnd.sym} 1450 -860 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 1530 -720 0 0 {name=C2
m=1
value=3.6p
device=capacitor}
C {devices/ind.sym} 1610 -720 0 0 {name=L2
value=7n
device=inductor}
C {devices/res.sym} 1690 -720 0 1 {name=R2
value=10
device=resistor}
C {devices/code.sym} 1760 -850 0 0 {name="simulation" only_toplevel="false" value="

.option method=gear
.options savecurrents
.save all

.control
  tran 0.01ns 10ns
  alter @V[PULSE] [ 0 1 0 1ns ]
  alter @I[PULSE] [ 0 1m 0 1ns ]

  ***
  alter @V[dc] 0 
  alter @V[acmag] 1
  alter r1 = 10
  ac lin 1001 100meg 10000meg

  alter @V[dc] 0 
  alter @V[acmag] 1
  alter r1 = 20
  ac lin 1001 100meg 10000meg

  alter @V[dc] 0 
  alter @V[acmag] 1
  alter r1 = 40
  ac lin 1001 100meg 10000meg

  ***
  alter @I[dc] 0 
  alter @I[acmag] 1
  alter r2 = 160
  ac lin 1001 100meg 10000meg

  alter @I[dc] 0 
  alter @I[acmag] 1
  alter r2 = 80
  ac lin 1001 100meg 10000meg

  alter @I[dc] 0 
  alter @I[acmag] 1
  alter r2 = 40
  ac lin 1001 100meg 10000meg

  ** impedance plot
  plot xlog ylog db(1/ac3.v#branch) db(ac6.v(4)) db(1/ac2.v#branch) db(ac5.v(4)) db(1/ac1.v#branch) db(ac4.v(4))
  plot xlog ph(1/ac3.v#branch) ph(ac6.v(4)) ph(1/ac2.v#branch) ph(ac5.v(4)) ph(1/ac1.v#branch) ph(ac4.v(4))

.endc"}
C {devices/lab_wire.sym} 1470 -920 0 0 {name=l3 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 1570 -920 0 0 {name=l4 sig_type=std_logic lab=2}
C {devices/lab_wire.sym} 1670 -920 0 0 {name=l5 sig_type=std_logic lab=3}
C {devices/gnd.sym} 1450 -690 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 1520 -920 3 0 {name=C1
m=1
value=3.6p
device=capacitor}
C {devices/ind.sym} 1620 -920 3 0 {name=L1
value=7n
device=inductor}
C {devices/res.sym} 1690 -890 0 1 {name=R1
value=10
device=resistor}
C {devices/isource.sym} 1450 -720 2 1 {name=I value="1"}
C {devices/lab_wire.sym} 1510 -750 0 0 {name=l6 sig_type=std_logic lab=4}
C {devices/ammeter.sym} 1650 -750 3 0 {name=Vprobe}
C {devices/title.sym} 1400 -600 0 0 {name=l11 author="Rafael Marinho"}
