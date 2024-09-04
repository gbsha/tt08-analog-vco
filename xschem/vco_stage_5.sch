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
N -80 100 -80 180 {
lab=Vds_m5}
N -80 180 80 180 {
lab=Vds_m5}
N 80 100 80 180 {
lab=Vds_m5}
N 0 180 0 220 {
lab=Vds_m5}
N 0 280 0 340 {
lab=VSS}
N -80 70 80 70 {
lab=VSS}
N -220 340 300 340 {
lab=VSS}
N -100 250 -40 250 {
lab=Vc}
N -160 70 -120 70 {
lab=Vp}
N 120 70 160 70 {
lab=Vn}
N -160 -100 -80 -100 {
lab=Vpout}
N 80 -100 160 -100 {
lab=Vnout}
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
N 0 250 0 340 {
lab=VSS}
N -80 -140 -80 40 {
lab=Vpout}
N 80 -140 80 40 {
lab=Vnout}
N 0 -110 -0 70 {
lab=VSS}
N -80 -80 -60 -80 {
lab=Vpout}
N 60 -0 80 -0 {
lab=Vnout}
N -20 -110 -0 -110 {
lab=VSS}
N -20 -80 -0 -80 {
lab=VSS}
N -20 -50 -0 -50 {
lab=VSS}
N 0 -30 20 -30 {
lab=VSS}
N 0 0 20 0 {
lab=VSS}
N 0 30 20 30 {
lab=VSS}
N 80 -30 130 -30 {
lab=Vnout}
N 170 -30 240 -30 {
lab=VDD}
N 170 -60 240 -60 {
lab=VDD}
N 240 -60 240 -0 {
lab=VDD}
N 170 0 240 -0 {
lab=VDD}
N -130 -30 -80 -30 {
lab=Vpout}
N -240 -30 -170 -30 {
lab=VDD}
N -240 -60 -170 -60 {
lab=VDD}
N -240 -60 -240 0 {
lab=VDD}
N -240 0 -170 0 {
lab=VDD}
N 220 -140 220 -120 {
lab=Vnout}
N 80 -120 220 -120 {
lab=Vnout}
C {devices/iopin.sym} -270 -260 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} -220 340 0 1 {name=p1 lab=VSS}
C {devices/ipin.sym} -160 70 0 0 {name=p4 lab=Vp}
C {devices/ipin.sym} 160 70 0 1 {name=p6 lab=Vn}
C {devices/ipin.sym} 280 -170 2 0 {name=p2 lab=Vb}
C {devices/ipin.sym} -100 250 0 0 {name=p5 lab=Vc}
C {devices/opin.sym} -160 -100 0 1 {name=p8 lab=Vpout}
C {devices/opin.sym} 160 -100 0 0 {name=p7 lab=Vnout}
C {sky130_fd_pr/nfet_01v8.sym} -100 70 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 100 70 0 1 {name=M4
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
C {devices/lab_pin.sym} 0 70 1 1 {name=p3 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -20 250 0 0 {name=M5
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
C {devices/lab_pin.sym} 80 180 0 1 {name=p9 sig_type=std_logic lab=Vds_m5}
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
C {sky130_fd_pr/nfet_01v8.sym} -40 -80 0 0 {name=M8
L=\{WLcap\}
W=\{WLcap\}
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
C {sky130_fd_pr/nfet_01v8.sym} 40 0 0 1 {name=M9
L=\{WLcap\}
W=\{WLcap\}
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
C {sky130_fd_pr/pfet_01v8.sym} 150 -30 0 0 {name=M10
L=\{WLp\}
W=\{WLp\}
nf=1
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
C {devices/lab_pin.sym} 240 -30 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -150 -30 0 1 {name=M11
L=\{WLp\}
W=\{WLp\}
nf=1
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
C {devices/lab_pin.sym} -240 -30 0 0 {name=p13 sig_type=std_logic lab=VDD}
