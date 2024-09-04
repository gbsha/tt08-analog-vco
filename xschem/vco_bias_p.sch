v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 80 -80 120 {
lab=VSS}
N -80 50 -80 80 {
lab=VSS}
N -80 -40 -80 20 {
lab=Vb}
N -80 -20 -20 -20 {
lab=Vb}
N -20 -70 -20 -20 {
lab=Vb}
N -220 50 -220 80 {
lab=VSS}
N -220 80 -220 120 {
lab=VSS}
N -160 0 -160 50 {
lab=Icont}
N -220 0 -160 0 {
lab=Icont}
N -180 50 -120 50 {
lab=Icont}
N -80 -200 -80 -100 {
lab=VDD}
N -220 120 -80 120 {
lab=VSS}
N -80 120 -80 160 {
lab=VSS}
N -300 -60 -220 -60 {
lab=Icont}
N -220 -60 -220 20 {
lab=Icont}
N -160 50 -160 90 {
lab=Icont}
N -160 90 -20 90 {
lab=Icont}
N 40 90 60 90 {
lab=Vc}
N -40 -70 -20 -70 {
lab=Vb}
N -20 -70 60 -70 {
lab=Vb}
C {devices/iopin.sym} -80 -200 3 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -80 160 1 0 {name=p7 lab=VSS}
C {devices/ipin.sym} -300 -60 0 0 {name=p5 lab=Icont}
C {devices/opin.sym} 60 -70 0 0 {name=p8 lab=Vb}
C {devices/opin.sym} 60 90 0 0 {name=p2 lab=Vc}
C {sky130_fd_pr/nfet_01v8.sym} -200 50 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -100 50 0 0 {name=M2
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
C {devices/vsource.sym} 10 90 1 0 {name=V1 value=0 savecurrent=false}
C {sky130_fd_pr/pfet_01v8.sym} -60 -70 0 1 {name=M3
L=\{Lb\}
W=\{W\}
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
