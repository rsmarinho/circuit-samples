v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 70 -470 440 -470 { lab=D}
N 70 -470 70 -350 { lab=D}
N 440 -280 470 -280 { lab=GND}
N 470 -280 470 -230 { lab=GND}
N 440 -230 470 -230 { lab=GND}
N 230 -280 260 -280 { lab=GND}
N 230 -280 230 -230 { lab=GND}
N 230 -230 260 -230 { lab=GND}
N 300 -280 400 -280 { lab=#net1}
N 260 -330 330 -330 { lab=#net1}
N 330 -330 330 -280 { lab=#net1}
N 260 -470 260 -440 { lab=D}
N 260 -380 260 -310 { lab=#net1}
N 440 -250 440 -180 { lab=GND}
N 70 -180 440 -180 { lab=GND}
N 70 -290 70 -180 { lab=GND}
N 260 -250 260 -180 { lab=GND}
N 440 -470 440 -310 { lab=D}
C {sky130_fd_pr/nfet_01v8.sym} 420 -280 0 0 {name=M1
L=0.15
W=10
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 70 -320 0 0 {name=VDS value=2}
C {devices/isource.sym} 260 -410 0 0 {name=Idref value=1}
C {devices/gnd.sym} 440 -180 0 0 {name=l1 lab=GND}
C {devices/code.sym} 1000 -250 0 0 {name=simulation
only_toplevel=false 
value="

** Check the two ac lines below for being equal!
.options filetype=ascii
.save all

.op
.control
*dc Idref 0.1e-3 10e-3 0.1e-3

let n_idx = 101

let start_iref = 1e-6
let stop_iref = 10e-3
let delta_iref = (stop_iref - start_iref) / n_idx
let iref_act = start_iref

let gms = unitvec(n_idx)
let ids = unitvec(n_idx)

let cgss = unitvec(n_idx)
let cgds = unitvec(n_idx)

let idxs = 0
let idx = idxs

*loop
while iref_act le stop_iref
  alter idref iref_act
  run
  *print @m.xm2.msky130_fd_pr__nfet_01v8[gm]

  let gms[idx] = @m.xm2.msky130_fd_pr__nfet_01v8[gm]
  let ids[idx] = @m.xm2.msky130_fd_pr__nfet_01v8[id]

  let cgss[idx] = @m.xm2.msky130_fd_pr__nfet_01v8[cgs]
  let cgds[idx] = @m.xm2.msky130_fd_pr__nfet_01v8[cgd]

  let iref_act = iref_act + delta_iref
  let idxs = idx + 1
  let idx = idxs
end

let ft = gms/(2*3.1415*(cgss+cgds))

plot gms vs ids
plot xlog ft vs ids

.endc
.end
"}
C {devices/lab_wire.sym} 130 -470 0 0 {name=l2 sig_type=std_logic lab=D}
C {sky130_fd_pr/nfet_01v8.sym} 280 -280 0 1 {name=M2
L=0.15
W=10
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/title.sym} 160 -30 0 0 {name=l11 author="Rafael Marinho"}
C {devices/code.sym} 850 -250 0 0 {name=TT_MODELS
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
