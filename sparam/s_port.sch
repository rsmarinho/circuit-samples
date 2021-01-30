v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 950 -130 950 -100 { lab=8}
N 920 -130 950 -130 { lab=8}
N 820 -130 860 -130 { lab=s2}
N 820 -90 820 -40 { lab=GND}
N 780 -80 780 -40 { lab=GND}
N 120 -130 120 -90 { lab=1}
N 220 -130 260 -130 { lab=s1}
N 300 -140 360 -140 { lab=3}
N 420 -140 460 -140 { lab=4}
N 520 -140 560 -140 { lab=reflected}
N 560 -140 560 -110 { lab=reflected}
N 300 -80 300 -30 { lab=GND}
N 260 -90 260 -30 { lab=GND}
N 560 -50 560 -30 { lab=GND}
N 740 -140 780 -140 { lab=passthrough}
N 560 -140 600 -140 { lab=reflected}
N 220 -170 220 -130 { lab=s1}
N 860 -130 860 -90 { lab=s2}
N 740 -190 740 -140 { lab=passthrough}
N 600 -190 600 -140 { lab=reflected}
N 320 -420 350 -420 { lab=in}
N 320 -300 350 -300 { lab=in}
N 410 -420 460 -420 { lab=s1}
N 410 -300 460 -300 { lab=s2}
N 200 -130 220 -130 { lab=s1}
N 120 -130 140 -130 { lab=1}
N 290 -360 320 -360 { lab=in}
N 320 -420 320 -300 { lab=in}
C {devices/res.sym} 890 -130 3 0 {name=Rout
value=Rbase
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 950 -70 0 0 {name=Vdc value="DC \{Vbias_out\} AC 0"}
C {devices/gnd.sym} 950 -40 0 1 {name=l1 lab=GND}
C {devices/vcvs.sym} 780 -110 0 1 {name=E2 value=2}
C {devices/gnd.sym} 820 -40 0 1 {name=l2 lab=GND}
C {devices/gnd.sym} 780 -40 0 1 {name=l3 lab=GND}
C {devices/vsource.sym} 120 -60 0 1 {name=Vacdc value="DC \{Vbias_in\} AC 1"}
C {devices/res.sym} 170 -130 3 0 {name=Rin
value=Rbase
footprint=1206
device=resistor}
C {devices/vcvs.sym} 300 -110 0 0 {name=E1 value=2}
C {devices/vsource.sym} 390 -140 3 0 {name=Vac value="DC 0 AC 1"}
C {devices/res.sym} 490 -140 1 1 {name=Rloop
value=1e-6
footprint=1206
device=resistor}
C {devices/res.sym} 560 -80 0 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 120 -30 0 1 {name=l4 lab=GND}
C {devices/gnd.sym} 260 -30 0 1 {name=l5 lab=GND}
C {devices/gnd.sym} 300 -30 0 1 {name=l6 lab=GND}
C {devices/gnd.sym} 560 -30 0 1 {name=l7 lab=GND}
C {devices/lab_wire.sym} 120 -130 0 0 {name=l8 sig_type=std_logic lab=1}
C {devices/lab_wire.sym} 340 -140 0 0 {name=l10 sig_type=std_logic lab=3}
C {devices/lab_wire.sym} 450 -140 0 0 {name=l11 sig_type=std_logic lab=4}
C {devices/param.sym} 800 -430 0 0 {name=parameters 
value="Vbias_in = 0"}
C {devices/lab_wire.sym} 950 -130 0 0 {name=l15 sig_type=std_logic lab=8}
C {devices/iopin.sym} 300 -360 2 0 {name=p1 lab=in}
C {devices/opin.sym} 600 -180 1 1 {name=p3 lab=reflected}
C {devices/opin.sym} 740 -180 1 1 {name=p4 lab=passthrough}
C {devices/lab_wire.sym} 460 -420 0 1 {name=l9 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 220 -170 0 1 {name=l12 sig_type=std_logic lab=s1}
C {devices/lab_wire.sym} 460 -300 0 1 {name=l13 sig_type=std_logic lab=s2}
C {devices/lab_wire.sym} 860 -90 2 1 {name=l14 sig_type=std_logic lab=s2}
C {devices/res.sym} 380 -420 3 1 {name=R1
value="\{RS1\}"
footprint=1206
device=resistor}
C {devices/res.sym} 380 -300 3 0 {name=R2
value="\{RS2\}"
footprint=1206
device=resistor}
C {devices/param.sym} 800 -410 0 0 {name=parameters1 
value="Vbias_out = 0"}
