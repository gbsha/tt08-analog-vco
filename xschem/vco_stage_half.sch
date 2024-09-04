v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -210 70 -150 {
lab=VDD}
N -70 180 -70 260 {
lab=Vs}
N -150 150 -110 150 {
lab=Vin}
N -80 0 0 0 {
lab=Vout}
N 70 -210 70 -120 {
lab=VDD}
N -130 -120 -110 -120 {
lab=Vb}
N -70 -210 -70 -150 {
lab=VDD}
N -70 -210 -70 -120 {
lab=VDD}
N -70 -90 -70 -50 {
lab=Vout}
N -70 -50 70 -50 {
lab=Vout}
N 70 -90 70 -50 {
lab=Vout}
N 100 50 120 50 {
lab=VSS}
N 100 80 120 80 {
lab=VSS}
N 100 110 120 110 {
lab=VSS}
N -0 -50 -0 80 {
lab=Vout}
N -70 80 -0 80 {
lab=Vout}
N -70 80 -70 120 {
lab=Vout}
N 0 80 60 80 {
lab=Vout}
N -120 -210 70 -210 {
lab=VDD}
N 110 -120 130 -120 {
lab=Vd}
N -70 150 140 150 {
lab=VSS}
N 120 50 120 150 {
lab=VSS}
N 0 0 230 0 {
lab=Vout}
N 530 0 560 -0 {
lab=Vbuf}
C {devices/iopin.sym} -120 -210 0 1 {name=p11 lab=VDD}
C {devices/iopin.sym} 140 150 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} -150 150 0 0 {name=p4 lab=Vin}
C {devices/ipin.sym} -130 -120 2 1 {name=p10 lab=Vb}
C {devices/ipin.sym} 130 -120 2 0 {name=p2 lab=Vd}
C {devices/opin.sym} -80 0 0 1 {name=p8 lab=Vout}
C {devices/opin.sym} -70 260 3 1 {name=p3 lab=Vs}
C {devices/opin.sym} 560 0 2 1 {name=p7 lab=Vbuf}
C {sky130_fd_pr/pfet_01v8.sym} 90 -120 0 1 {name=M7
L=\{L\}
W=\{W\}
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
C {sky130_fd_pr/pfet_01v8.sym} -90 -120 0 0 {name=M3
L=\{L\}
W=\{W\}
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
C {sky130_fd_pr/nfet_01v8.sym} -90 150 0 0 {name=M1
L=\{L\}
W=\{W\}
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
C {vco_buffer.sym} 380 0 0 0 {name=x1}
C {devices/lab_pin.sym} 380 70 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -70 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 80 80 0 0 {name=M8
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
