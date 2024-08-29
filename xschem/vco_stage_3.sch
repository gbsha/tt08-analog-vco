v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -260 -80 -200 {
lab=VDD}
N 80 -260 80 -200 {
lab=VDD}
N -80 -140 -80 -60 {
lab=Vpout}
N 80 -140 80 -60 {
lab=Vnout}
N -80 0 -80 80 {
lab=Vds_m5}
N -80 80 80 80 {
lab=Vds_m5}
N 80 0 80 80 {
lab=Vds_m5}
N 0 80 0 120 {
lab=Vds_m5}
N 0 180 0 240 {
lab=VSS}
N -80 -30 80 -30 {
lab=VSS}
N -220 240 300 240 {
lab=VSS}
N -100 150 -40 150 {
lab=Vc}
N -160 -30 -120 -30 {
lab=Vp}
N 120 -30 160 -30 {
lab=Vn}
N -160 -100 -80 -100 {
lab=Vpout}
N 80 -100 160 -100 {
lab=Vnout}
N -20 -100 -0 -100 {
lab=VSS}
N 0 -100 20 -100 {
lab=VSS}
N -80 -120 40 -170 {
lab=Vpout}
N -40 -170 80 -120 {
lab=Vnout}
N 220 -260 220 -200 {
lab=VDD}
N 220 -260 220 -170 {
lab=VDD}
N 80 -260 80 -170 {
lab=VDD}
N -80 -260 -80 -170 {
lab=VDD}
N -0 -100 0 -30 {
lab=VSS}
N 260 -170 280 -170 {
lab=Vb}
N -270 -260 220 -260 {
lab=VDD}
N -280 -170 -260 -170 {
lab=Vb}
N -220 -260 -220 -200 {
lab=VDD}
N -220 -260 -220 -170 {
lab=VDD}
N -220 -120 -80 -120 {
lab=Vpout}
N -220 -140 -220 -120 {
lab=Vpout}
N -0 150 -0 240 {
lab=VSS}
C {devices/iopin.sym} -270 -260 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} -220 240 0 1 {name=p1 lab=VSS}
C {devices/ipin.sym} -160 -30 0 0 {name=p4 lab=Vp}
C {devices/ipin.sym} 160 -30 0 1 {name=p6 lab=Vn}
C {devices/ipin.sym} 280 -170 2 0 {name=p2 lab=Vb}
C {devices/ipin.sym} -100 150 0 0 {name=p5 lab=Vc}
C {devices/opin.sym} -160 -100 0 1 {name=p8 lab=Vpout}
C {devices/opin.sym} 160 -100 0 0 {name=p7 lab=Vnout}
C {sky130_fd_pr/nfet_01v8.sym} -100 -30 0 0 {name=M1
L=2
W=4
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 100 -30 0 1 {name=M4
L=2
W=4
nf=4
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
C {devices/lab_pin.sym} 0 -30 1 1 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -20 150 0 0 {name=M5
L=2
W=4
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -170 0 1 {name=M2
L=0.5
W=4
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -240 -170 0 0 {name=M3
L=0.5
W=4
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/capa.sym} 50 -100 1 1 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} -50 -100 3 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 80 80 0 1 {name=p9 sig_type=std_logic lab=Vds_m5}
C {sky130_fd_pr/pfet_01v8.sym} 60 -170 0 0 {name=M6
L=2
W=4
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -60 -170 0 1 {name=M7
L=2
W=4
nf=2
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -280 -170 2 1 {name=p10 lab=Vb}
