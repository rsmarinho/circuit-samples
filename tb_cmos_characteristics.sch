v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 490 -330 490 -300 { lab=q}
N 430 -380 580 -380 { lab=d}
N 430 -380 430 -300 { lab=d}
N 580 -280 580 -230 { lab=GND}
N 490 -240 490 -230 { lab=GND}
N 430 -240 430 -230 { lab=GND}
N 430 -230 490 -230 { lab=GND}
N 490 -230 580 -230 { lab=GND}
N 580 -380 580 -370 { lab=d}
N 580 -290 580 -280 { lab=GND}
N 490 -330 530 -330 { lab=q}
N 580 -370 580 -360 { lab=d}
N 530 -330 540 -330 { lab=q}
N 580 -300 580 -290 { lab=GND}
N 580 -330 600 -330 { lab=GND}
N 600 -330 600 -230 { lab=GND}
N 580 -230 600 -230 { lab=GND}
C {devices/code.sym} 1010 -210 0 0 {name=simulation 
only_toplevel=false 
value="
* Circuit Parameters
.options TEMP = 27.0

* OP Parameters & Signal to save
*.save all
+ @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
+ @m.x1.xm1.msky130_fd_pr__nfet_01v8[vth]
+ @m.x1.xm1.msky130_fd_pr__nfet_01v8[vdsat]

* Control & Simulation
.save all

.control
*op
*print @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
*setplot op1
*write ~/xschem/simulation/tb_characteristics_op1.raw

reset
dc vd 0 3 0.01 vg 0.7 1 0.05 
plot -i(vd)

* loop
*foreach var 10 20
*alterparam nmos ww = var
*op
*echo var: @m.x1.xm1.msky130_fd_pr__nfet_01v8[id]
*reset
*end
* end loop

.endc

.end
"}
C {devices/vsource.sym} 490 -270 0 0 {name=vg value="dc 1"}
C {devices/vsource.sym} 430 -270 0 1 {name=vd value="dc 1"}
C {devices/lab_wire.sym} 430 -380 0 0 {name=l4 sig_type=std_logic lab=d
}
C {devices/lab_wire.sym} 490 -330 0 0 {name=l5 sig_type=std_logic lab=q}
C {devices/gnd.sym} 550 -230 0 0 {name=l1 lab=GND}
C {devices/title.sym} 160 -30 0 0 {name=l11 author="Rafael Marinho"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -330 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} 860 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"
}
