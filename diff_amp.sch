v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 670 -780 710 -780 {lab=G}
N 630 -750 630 -650 {lab=G}
N 750 -750 750 -650 {lab=DIFFOUT}
N 630 -730 690 -730 {lab=G}
N 690 -780 690 -730 {lab=G}
N 630 -590 750 -590 {lab=#net1}
N 630 -850 630 -810 {lab=VCC}
N 630 -850 750 -850 {lab=VCC}
N 750 -850 750 -810 {lab=VCC}
N 630 -620 750 -620 {lab=GND}
N 690 -650 690 -620 {lab=GND}
N 690 -880 690 -850 {lab=VCC}
N 690 -590 690 -550 {lab=#net1}
N 690 -490 690 -460 {lab=GND}
N 690 -520 730 -520 {lab=GND}
N 730 -520 730 -470 {lab=GND}
N 690 -470 730 -470 {lab=GND}
N 690 -460 690 -440 {lab=GND}
N 490 -520 650 -520 {lab=GN}
N 450 -610 450 -550 {lab=GN}
N 510 -570 510 -520 {lab=GN}
N 450 -570 510 -570 {lab=GN}
N 450 -490 450 -440 {lab=GND}
N 750 -730 940 -730 {lab=DIFFOUT}
N 750 -780 780 -780 {lab=VCC}
N 600 -780 630 -780 {lab=VCC}
N 560 -620 590 -620 {lab=PLUS}
N 790 -620 820 -620 {lab=MINUS}
N 170 -860 170 -830 {lab=MINUS}
N 170 -860 200 -860 {lab=MINUS}
N 170 -710 170 -680 {lab=PLUS}
N 170 -710 200 -710 {lab=PLUS}
N 170 -560 170 -530 {lab=VCC}
N 170 -560 200 -560 {lab=VCC}
N 410 -520 450 -520 {lab=GND}
N 410 -520 410 -470 {lab=GND}
N 410 -470 450 -470 {lab=GND}
C {devices/pmos4.sym} 730 -780 0 0 {name=m2 model=pmos w=5u l=2u m=1}
C {devices/nmos4.sym} 610 -620 0 0 {name=m4 model=nmos w=10u l=1u m=1}
C {devices/pmos4.sym} 650 -780 0 1 {name=m6 model=pmos w=5u l=2u m=1}
C {devices/nmos4.sym} 770 -620 0 1 {name=m5 model=nmos w=10u l=1u m=1}
C {devices/nmos4.sym} 670 -520 0 0 {name=m1 model=nmos w=5u l=2u m=1}
C {devices/nmos4.sym} 470 -520 0 1 {name=m3 model=nmos w=5u l=2u m=1}
C {devices/capa.sym} 900 -700 0 0 {name=CL m=1 value=2p footprint=1206 device="ceramic capacitor"}
C {devices/isource.sym} 450 -640 0 0 {name=IBIAS value=100u}
C {devices/vsource.sym} 170 -800 0 0 {name=V1 value=2.5}
C {devices/vsource.sym} 170 -650 0 0 {name=VPLUS value="2.5 pwl 0 2.4 10n 2.4 10.1n 2.6"}
C {devices/vsource.sym} 170 -500 0 0 {name=VVCC value=5}
C {devices/gnd.sym} 690 -440 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 450 -440 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 170 -470 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 170 -620 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 170 -770 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 900 -670 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 690 -650 2 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 200 -860 2 0 {name=l1 sig_type=std_logic lab=MINUS
}
C {devices/lab_pin.sym} 200 -710 2 0 {name=l1 sig_type=std_logic lab=PLUS}
C {devices/lab_pin.sym} 200 -560 2 0 {name=l1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 780 -780 2 0 {name=l1 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 820 -620 2 0 {name=l1 sig_type=std_logic lab=MINUS}
C {devices/lab_pin.sym} 940 -730 2 0 {name=l1 sig_type=std_logic lab=DIFFOUT}
C {devices/lab_pin.sym} 600 -780 0 0 {name=l1 sig_type=std_logic lab=VCC
}
C {devices/lab_pin.sym} 560 -620 0 0 {name=l1 sig_type=std_logic lab=PLUS}
C {devices/gnd.sym} 450 -670 2 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 630 -700 0 0 {name=l1 sig_type=std_logic lab=G}
C {devices/lab_pin.sym} 690 -880 2 0 {name=l1 sig_type=std_logic lab=VCC}
C {devices/code.sym} 1100 -490 0 0 {name=stimuli 
only_toplevel=false
value="
.temp 30
.tran 10n 2000u uic
.save all
"}
C {devices/lab_pin.sym} 450 -590 0 0 {name=l1 sig_type=std_logic lab=GN}
C {devices/title.sym} 270 -260 0 0 {name=l11 author="Rafael Marinho"}
